class Song < ApplicationRecord
  belongs_to :artist
  
  validates :name, presence true
  validates :length: {maximum: 100}
  validates :length, presence: true
end
