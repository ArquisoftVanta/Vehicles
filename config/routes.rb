Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'vehicles/plateFiltering/:license_plate', to: 'vehicles#plateFiltering'
  resources :vehicles
end
