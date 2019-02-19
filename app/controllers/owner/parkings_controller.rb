class Owner::ParkingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @parkings = policy_scope([:owner, Parking])
    render "parkings/index"
  end
end
