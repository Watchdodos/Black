class Doll < ActiveRecord::Base
  attr_accessible :city, :name, :state, :tag

 validates :name, :city, presence: true

has_many :pins
belongs_to :user

validates :user_id, presence: true
end
