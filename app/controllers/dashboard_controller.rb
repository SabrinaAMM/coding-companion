class DashboardController < ApplicationController
  def index
    #@user = policy_scope(User)
    @my_interview_ids = @user.interviews.map do |interview|
      interview.id
    end
    @all_bookings = Booking.where(interview_id: @my_interview_ids)
  end
end