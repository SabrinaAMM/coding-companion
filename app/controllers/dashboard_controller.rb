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
      if correct_date(interview) >= DateTime.now
        @upcoming_interviews << interview
      end
    end

    @created_interviews.each do |interview|


      if interview.bookings.present? && correct_date(interview) >= DateTime.now
        @upcoming_interviews << interview
      elsif correct_date(interview) >= DateTime.now
        @pending_interviews << interview
      end
    end

    @past_interviews = []
    @created_interviews.each do |interview|
      if correct_date(interview) < DateTime.now
        @past_interviews << interview
      end
    end

    @booked_interviews.each do |interview|
      if correct_date(interview) < DateTime.now
        @past_interviews << interview
      end
    end
  end

  private

  def correct_date(interview)
    d = interview.date
    t = interview.start_time
    return DateTime.new(d.year, d.month, d.day, t.hour, t.min, t.sec, t.zone)
  end
end
