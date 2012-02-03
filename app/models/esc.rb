class Esc < ActiveRecord::Base
 set_table_name :building_controllers
 set_primary_key :controller_id
 has_many :datasources, :foreign_key => "controller_id", :conditions => ['datasource_type_name = ?', 'ValuePoint']
 has_many :devices, :foreign_key => "controller_id"
end

