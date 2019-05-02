Rails.application.routes.draw do
  root to: 'shoes#upcoming'
  get 'shoes/upcoming', to: 'shoes#upcoming'
  get 'shoes/past_release', to: 'shoes#past_release_page' 
  resources :shoes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
