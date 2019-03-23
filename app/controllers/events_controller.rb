class EventsController < ApplicationController
  def show
    guest_id = params[:guest_id]
    event_id = params[:event_id]

    if Task.where(event_id: event_id, guest_id: guest_id).none?
      return head :not_found
    end

    @guest = Guest.find(guest_id)
    @event = Event.find(event_id)
    @free_tasks = Task.where(event_id: event_id, guest_id: guest_id, task_type: :free)
    @scheduled_tasks = Task.where(event_id: event_id, guest_id: guest_id, task_type: :scheduled)
  end
end
