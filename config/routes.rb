Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :photos
  root :to => "doctors#select_state"
  get 'get_doctors', to: :get_doctors, controller: 'doctors'
end
