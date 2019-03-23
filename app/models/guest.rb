class Guest < ApplicationRecord
  has_many :event_guests
  has_many :events, through: :event_guests
end
