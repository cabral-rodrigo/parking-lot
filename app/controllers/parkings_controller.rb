class ParkingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_params, only: [:show, :edit, :update, :delete]

  def index
    @parkings = Parking.all
  end

  def new
    @parking = Parking.new
  end

  def create
    @parking = Parking.new(parking_params)
    if @parking.save
      redirect_to @parking
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @parking.update(parking_params)
    if @parking.save
      redirect_to @parking
    else
      render :edit
    end
  end

  def destroy
    @parking.destroy
    redirect_to root
  end

  private

  def parking_params
    params.require(:parking).permit(:address, :picture, :confirmation,
                                    :covered, :security, :camera,
                                    :size, :gated, :price)
  end

  def set_parking
    @parking = Parking.find(params[:id])
  end
end
