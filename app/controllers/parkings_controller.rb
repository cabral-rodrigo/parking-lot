class ParkingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_parking, only: [:show, :edit, :update, :destroy]
  def index
    @parkings = policy_scope(Parking).where.not(latitude: nil, longitude: nil)

    @markers = @parkings.map do |parking|
      {
        lng: parking.longitude,
        lat: parking.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { parking: parking })
      }
    end
  end

  def new
    @parking = Parking.new
    authorize @parking
  end

  def create
    @parking = Parking.new(parking_params)
    @parking.user = current_user
    authorize @parking

    if @parking.save
      redirect_to @parking
    else
      render :new
    end
  end

  def show
    @markers = [{
        lng: @parking.longitude,
        lat: @parking.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { parking: @parking })
      }]
  end

  def edit
  end

  def update
    @parking.update(parking_params)
    if @parking.save
      redirect_to root_path
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
    params.require(:parking).permit(:address, :confirmation,
                                    :covered, :security, :camera,
                                    :size, :gated, :price, :picture, :name, :latitude, :longitude, :picture_cache)
  end

  def set_parking
    @parking = Parking.find(params[:id])
    authorize @parking
  end
end
