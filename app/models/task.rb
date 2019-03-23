class Task < ApplicationRecord
  belongs_to :guest
  belongs_to :event
  enum task_type: [:scheduled, :free]
end
