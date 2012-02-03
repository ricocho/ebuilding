class CreateEscs < ActiveRecord::Migration
  def change
    create_table :escs do |t|
      t.string :controller_name
      t.string :controller_reference

      t.timestamps
    end
  end
end
