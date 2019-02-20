class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def new
    @booking = Booking.new
    @parking = Parking.find(params[:parking_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @parking = Parking.find(params[:parking_id])
    @booking.parking = @parking
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :edit
    end
  end

   private

  def booking_params
    params.require(:booking).permit(:status, :date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end
end


