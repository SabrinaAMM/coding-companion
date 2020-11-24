class BookingsController < ApplicationController
    def create
      find_interview
      @booking = Booking.new(booking_params)
      @booking.user = current_user
      @booking.interview= @interview
      authorize @booking
      if @booking.save
        flash.notice = "Booking created!"
        redirect_to dashboard_index_path
      else
        render "interviews/show"
      end
    end
  
    def destroy
      find_booking
      authorize @booking
      @booking.destroy
      flash.notice = "Booking deleted!"
      redirect_to dashboard_index_path
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:interview_id, :user_id)
    end
  
    def find_interview
      @interview = Interview.find(params[:interview_id])
    end
  
    def find_booking
      @booking = Booking.find(params[:id])
    end
  end