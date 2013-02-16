class Doll < ActiveRecord::Base
  attr_accessible :city, :name, :state, :tag

 validates :name, :city, presence: true
end
