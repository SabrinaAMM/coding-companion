class BookingsController < ApplicationController
  def new
    @bookings = Booking.new
    @interview = Interview.find(params[:interview_id])
  end
end
