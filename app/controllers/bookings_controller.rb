class BookingsController < ApplicationController
  def new
    @bookings = Booking.new
    find_interview
  end

  def create
    find_interview
    @booking = Booking.new
    @booking.user = current_user
    @booking.interview = @interview
    #authorize @booking
    @booking.save
    flash.notice = "Booking created!"
    redirect_to dashboard_index_path
  end

  def destroy
    find_booking
    #authorize @booking
    @booking.destroy
    flash.notice = "Booking deleted!"
    redirect_to dashboard_index_path
  end

  private

  def find_interview
    @interview = Interview.find(params[:interview_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
