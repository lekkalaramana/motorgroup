class Bike < Vehicle

  def self.create_or_update params
    bike = self.where('model_code=?',params[:model_code]).first_or_create
    bike.attributes = params
    [bike.save, bike]
  end
end
