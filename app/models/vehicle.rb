class Vehicle < ActiveRecord::Base
	validates :model_name, presence: true
	validates :model_code, uniqueness: true
	validates :manfacturer, presence: true
	validates :with_battery, presence: true
	validates :with_tools, presence: true
	validates :fuel_capacity, presence: true
end
