class Billboard < ApplicationRecord
  has_many :artists, dependent: :destroy

# validations
validates :genre, length { in: 3..25 }
validates :picture, presence: true 

#callbacks- trigger logic or method or code based on certain event


end 