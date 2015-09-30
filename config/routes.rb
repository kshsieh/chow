Rails.application.routes.draw do
  resources :dogs do
    resources :post
  end
end
