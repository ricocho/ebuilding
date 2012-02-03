class CreateDatasources < ActiveRecord::Migration
  def change
    create_table :datasources do |t|
      t.integer :controller_id
      t.integer :device_id
      t.integer :datasource_instance_number
      t.integer :datasource_type
      t.string :datasource_type_name
      t.string :datasource_property
      t.string :datasource_property_name
      t.string :datasource_refrence
      t.string :datasource_name
      t.string :datasource_description

      t.timestamps
    end
  end
end
