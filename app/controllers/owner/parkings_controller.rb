class Owner::ParkingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index

    if params[:query].present?
      @parkings = policy_scope([:owner, Parking]).where.not(latitude: nil, longitude: nil).search_by_name_and_address(params[:query])

      @markers = @parkings.map do |parking|
        {
          lng: parking.longitude,
          lat: parking.latitude,
          infoWindow: render_to_string(partial: "infowindow", locals: { parking: parking }),
            id: parking.id     # we add the id of the flat in the hash
        }
        end
      else
        @parkings = policy_scope([:owner, Parking]).where.not(latitude: nil, longitude: nil)

        @markers = @parkings.map do |parking|
          {
            lng: parking.longitude,
            lat: parking.latitude,
            infoWindow: render_to_string(partial: "infowindow", locals: { parking: parking }),
            id: parking.id           # id: parking.id # we add the id of the flat in the hash
          }
      end
    end
    render "parkings/index"

  end
end
