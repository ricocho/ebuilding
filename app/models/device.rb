class Device < ActiveRecord::Base
set_table_name :logical_devices
has_many :datasources
belongs_to :esc, :foreign_key => "controller_id"
end

