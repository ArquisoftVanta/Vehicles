class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_id
      t.integer :owner
      t.string :license_plate
      t.integer :vehicle_type
      t.string :model
      t.integer :year
      t.string :color
      t.datetime :registry
      t.string :picture
      t.integer :capacity
      t.string :brand
      t.string :service_type
      t.string :body
      t.date :soat_exp
      t.integer :engine
      t.string :gas_type

      t.timestamps
    end
  end
end
