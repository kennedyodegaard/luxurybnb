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
    @reservation.status = "pending"

    if @reservation.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = "accepted"
    @reservation.save

    redirect_to dashboard_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = "declined"
    @reservation.save

    redirect_to dashboard_path
  end

  private

  def set_reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
