class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :model_name
      t.string :model_code
      t.string :manfacturer
      t.boolean :with_battery
      t.boolean :with_tools
      t.integer :fuel_capacity

      t.timestamps
    end
  end
end
