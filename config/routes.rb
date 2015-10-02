Rails.application.routes.draw do
  root to: "dogs#index"
  
  resources :dogs do
    resources :post
  end
end
