class Api::V1::ReservationsController < ApplicationController
  def index
    @reservation = Reservation.all
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      render json: { status: :created, data: @reservation }
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :city, :user_id, :doctor_id)
  end
end
