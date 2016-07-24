class VehicleController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def show
  	@vehical_details = Scooter.all
  end

  def create
    return_data = { message: "Created succussfully", errors: []}
    klass_type = params["vehicle"]["type"]
    status, vehicle = klass_type.constantize.create_or_update(vehicle_params)
    unless status
      binding.pry
      return_data[:message] = "Problem in creation"
      return_data[:errors] = vehicle.errors
    end
    render :json => return_data
  end

  def new

  end

  private

  def vehicle_params
    params["vehicle"].permit(:type, :model_code, :model_name, :manfacturer, :with_battery, :with_tools, :fuel_capacity)
  end
end
