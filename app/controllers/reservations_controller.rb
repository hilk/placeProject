class ReservationsController < ApplicationController
  def index
  	@reservations = Reservation.all
  end

  def show
  	@reservations = Reservation.find(params[:id])
  end
end
