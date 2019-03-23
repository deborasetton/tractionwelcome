Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'guests/:guest_id/events/:event_id(.:format)' => 'events#show'
end
