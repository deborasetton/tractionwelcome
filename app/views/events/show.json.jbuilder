json.guest do
  json.id @guest.id
  json.name @guest.name
end

json.event do
  json.name @event.name
  json.start_at @event.start_at.iso8601
  json.end_at @event.end_at.iso8601
  json.address @event.address
  json.image_url @event.image_url
end

json.tasks do
  json.free @free_tasks, :description, :start_at, :end_at, :location
  json.scheduled @scheduled_tasks, :description, :start_at, :end_at, :location
end
