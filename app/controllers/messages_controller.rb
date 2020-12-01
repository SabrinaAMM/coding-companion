class MessagesController < ApplicationController
  def create
    @interview = Interview.find(params[:interview_id])
    @message = Message.new(message_params)
    @message.interview = @interview
    @message.user = current_user
    if @message.save
      InterviewChannel.broadcast_to(
        @interview,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to interview_path(@interview, anchor: "message-#{@message.id}")
    else
      render "interviews/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
