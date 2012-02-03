class Datasource < ActiveRecord::Base
  belongs_to :device
  belongs_to :esc, :foreign_key => "controller_id"
end

