class Venue < ApplicationRecord
  has_many :events
  validates_presence_of :name
  validates_presence_of :address
end
