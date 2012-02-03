class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_name
      t.string :device_reference
      t.string :device_instance_number
      t.string :device_description

      t.timestamps
    end
  end
end
