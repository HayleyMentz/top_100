# associations : define relationship
class Artist < ApplicationRecord
  belongs_to :billboard
  has_one :song, dependent: :destroy


# adv
# has_many :through
# has_one :through

# validations
validates :name, :desc. presence: true
validates :album, length: { maximum: 500}
validates :album, presence: true
validates :album, uniqueness: true 
# callbacks

#model methods (class methods) work with all your contacts 
# instance method work with a single record object

end

