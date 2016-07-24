class VehicleController < ApplicationController
  def show
  	@vehical_details = Scooter.all
  end

  def create
    binding.pry
  end

  def new

  end
end
