class CreateBuildingControllers < ActiveRecord::Migration
  def change
    create_table :building_controllers do |t|
      t.string :controller_name
      t.string :controller_refrence

      t.timestamps
    end
  end
end
