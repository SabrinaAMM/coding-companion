class InterviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = "users.nickname ILIKE :query"
      @interviews = Interview.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    elsif params["/interviews"].present?
      @interviews = Interview.where(focus: params["/interviews"][:focus]).where(experience: params["/interviews"][:experience]).where(interview_language: params["/interviews"][:interview_language]).where(start_time: params["/interviews"][:start_time])
    else
      @interviews = Interview.all
    end
  end

  def show
    find_interview
    # authorize @interview
    @user = current_user
  end

  def new
    @interview = Interview.new
    # authorize @interview
  end

  def create
    @interview = Interview.new(interview_params)
    # authorize @interview
    @interview.user = current_user
    if @interview.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def destroy
    find_interview
    # authorize @interview
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
