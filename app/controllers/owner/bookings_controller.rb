class Owner::BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bookings = policy_scope([:owner, Booking])
    render "bookings/index"
  end
end
