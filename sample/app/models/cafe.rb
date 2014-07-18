class Cafe < ActiveRecord::Base
  self.table_name = "cafes"
  has_many :menus
end
