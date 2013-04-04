class Pin < ActiveRecord::Base
  attr_accessible :description, :coordinate_x, :coordinate_y, :doll_id, :color

  validates :description, presence: true, :length => { :maximum => 140,
    :too_long => "%{count} characters is the maximum allowed" }

    belongs_to :user
    belongs_to :doll

    validates :user_id, presence: true
end
