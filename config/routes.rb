Rails.application.routes.draw do
  post 'qr_codes/decode' => 'qr_codes#decode'
  get 'qr_codes/new' => 'qr_codes#new'
  get 'guests/:guest_id/events/:event_id(.:format)' => 'events#show'
end
