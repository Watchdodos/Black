class Doll < ActiveRecord::Base
	include Tire::Model::Search
	include Tire::Model::Callbacks
	
  attr_accessible :city, :name, :state, :tag

 validates :name, :city, presence: true

has_many :pins
belongs_to :user

validates :user_id, presence: true

index_name INDEX_NAME

end
