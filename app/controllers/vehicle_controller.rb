class VehicleController < ApplicationController
  def show
  	@vehical_details = Vehical.all
  end

  def create
  end

  def new

  end
end
