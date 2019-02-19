class Client::BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @bookings = policy_scope([:client, Booking])
    render "bookings/index"
  end
end
