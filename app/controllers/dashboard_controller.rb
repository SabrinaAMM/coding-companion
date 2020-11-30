class DashboardController < ApplicationController
  def index
    #@user = policy_scope(User)
    @user = current_user
    @created_interviews = @user.interviews

    @booked_interviews = []
    @user.bookings.each do |booking|
      @booked_interviews << booking.interview
    end

    @upcoming_interviews = []
    @pending_interviews = []
    @booked_interviews.each do |interview|
      if interview.start_time.strftime("%H %M %S") >= DateTime.now.strftime("%H %M %S") && interview.date >= Date.today
        @upcoming_interviews << interview
      end
    end

    @created_interviews.each do |interview|
      if interview.bookings.present? && interview.start_time.strftime("%H %M %S") >= DateTime.now.strftime("%H %M %S") && interview.date >= Date.today
        @upcoming_interviews << interview
      elsif interview.start_time.strftime("%H %M %S") >= DateTime.now.strftime("%H %M %S") && interview.date >= Date.today
        @pending_interviews << interview
      end
    end

    @past_interviews = []
    @created_interviews.each do |interview|
      if interview.start_time.strftime("%H %M %S") < DateTime.now.strftime("%H %M %S") && interview.date < Date.today
        @past_interviews << interview
      end
    end

    @booked_interviews.each do |interview|
      if interview.start_time.strftime("%H %M %S") < DateTime.now.strftime("%H %M %S") && interview.date < Date.today
        @past_interviews << interview
      end
    end
  end
end
