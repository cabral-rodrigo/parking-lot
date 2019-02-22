class ParkingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_parking, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
      @parkings = policy_scope(Parking).where.not(latitude: nil, longitude: nil).search_by_name_and_address(params[:query])

      @markers = @parkings.map do |parking|
        {
          lng: parking.longitude,
          lat: parking.latitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { parking: parking }),
            id: parking.id     # we add the id of the flat in the hash
        }
        end
      else
        @parkings = policy_scope(Parking).where.not(latitude: nil, longitude: nil)

        @markers = @parkings.map do |parking|
          {
            lng: parking.longitude,
            lat: parking.latitude,
            infoWindow: render_to_string(partial: "infowindow", locals: { parking: parking }),
            id: parking.id           # id: parking.id # we add the id of the flat in the hash
          }
      end
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
      redirect_to parking_path(@parking)
    else
      render :index
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
      redirect_to parking_path(@parking)
    else
      render :show
    end
  end

  def destroy
    @parking.reviews.map { |review| review.destroy }
    @parking.destroy
    redirect_to root_path
  end

  private

  def parking_params
    params.require(:parking).permit(:address, :confirmation,
                                    :covered, :security, :camera,
                                    :size, :gated, :price, :picture, :name, :latitude, :longitude)
  end

  def set_parking
    @parking = Parking.find(params[:id])
    authorize @parking
  end
end
