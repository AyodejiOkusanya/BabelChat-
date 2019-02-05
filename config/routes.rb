Rails.application.routes.draw do
  root 'home#index'
  mount ActionCable.server => "/cable"
  get '/home/translate', to: 'home#translate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
