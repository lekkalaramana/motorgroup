class Scooter < Vehicle

  def self.create_or_update params
    scooter = self.where('model_code=?',params[:model_code]).first_or_initialize
    scooter.attributes = params
    [scooter.save, scooter]
  end

end
