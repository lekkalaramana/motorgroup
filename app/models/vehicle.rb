class Vehicle < ActiveRecord::Base
	validates :model_name, presence: true
	validates :model_code, uniqueness: true
	validates :manufacturer, presence: true
	validates :with_battery, presence: true
	validates :with_tools, presence: true
	validates :fuel_capacity, presence: true


	def self.create_or_update params
		Vehicle.create!(params)
	end
end
