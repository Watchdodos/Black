class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, :length => { :maximum => 140,
    :too_long => "%{count} characters is the maximum allowed" }

    belongs_to :user
    belongs_to :dolls 

    validates :user_id, presence: true
end
