class DashboardController < ApplicationController
  def index
    #@user = policy_scope(User)
    @user  =  current_user
    @created_interviews = @user.interviews

    @booked_interviews = []
    @user.bookings.each do |booking|
      @booked_interviews << booking.interview 
    end

    @upcoming_interviews = []
    @pending_interviews = []
    @booked_interviews.each do |interview|
      @upcoming_interviews << interview
    end
    @created_interview.each do |interview|
      if interview.bookings.present? && interview.time >= DateTime.now
        @upcoming_interviews << interview 
      elsif interview.time >= DateTime.now
        @pending_interviews << interview
      end
    end

    @past_interviews = []
    @created_interviews.each do |interview|
      if interview.time < DateTime.now 
        @past_interviews << interview
      end 
    end
    @booked_interviews.each do |interview|
      if interview.time < DateTime.now 
        @past_interviews << interview
      end 
    end
  end

end