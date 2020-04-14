class Tweet < ApplicationRecord
  validates :text, :title, :image, presence: true
  belongs_to :user
  has_many :comments  
end