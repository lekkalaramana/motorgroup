class Bike < Vehicle
  def self.create_or_update params
    self.create!(params)
  end
end
