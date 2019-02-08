Rails.application.routes.draw do
  root 'votes#show'
  resources :votes
  resources :questions do
    get "activate"
  end
  resources :answers do
    get "vote"
  end
end
