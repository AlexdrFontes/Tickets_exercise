class Ticket < ApplicationRecord
  belongs_to :event

  validates :email,:number_of_tickets, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
