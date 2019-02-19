class Client::BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_params, only: [:show, :edit, :update, :delete]

  def index
    @bookings = policy_scope(Booking)
    render "bookings/index"
  end
end
