class Bank < ActiveRecord::Base
  attr_accessible :branch, :ifsc, :name
end
