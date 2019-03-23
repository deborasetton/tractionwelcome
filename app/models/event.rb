class Event < ApplicationRecord
  belongs_to :company
  has_many :event_guests
  has_many :guests, through: :event_guests
end
