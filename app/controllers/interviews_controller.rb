class InterviewsController < ApplicationController

  def index
    # insert Search
    @interviews = Interview.all
  end

  def show
    find_interview
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    if @interview.save
      redirect_to interview_path(@interview)
    else
      render :new
    end
  end

  def destroy
    find_interview
    @interview.destroy
    redirect_to dashboard_index_path
  end

  private

  def find_interview
    @interview = Interview.find(params[:id])
  end

  def interview_params
    params.require(:interview).permit(:time, :focus, :experience, :interview_language)
  end

end
