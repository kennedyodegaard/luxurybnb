class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @reservation = Reservation.new(set_reservation_params)
    @flat = Flat.find(params[:flat_id])
    @reservation.flat = @flat
    @reservation.user = current_user
    if @reservation.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  private

  def set_reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
