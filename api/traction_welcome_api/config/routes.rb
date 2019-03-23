Rails.application.routes.draw do
  get 'qr_codes/decode' => 'qr_codes#decode'
  get 'guests/:guest_id/events/:event_id(.:format)' => 'events#show'
end
