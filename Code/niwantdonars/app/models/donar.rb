class Donar < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address_line_1, :landline, :mobile, :name, :pan_number, :pin_code, :title
end
