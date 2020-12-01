class InterviewChannel < ApplicationCable::Channel
  def subscribed
    interview = Interview.find(params[:id])
    stream_for interview
    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
