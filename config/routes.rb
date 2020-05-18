Rails.application.routes.draw do
  root to: 'forest/pages#show'
  get '/home', to: redirect('/')
end
