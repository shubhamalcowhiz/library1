Rails.application.routes.draw do
 root "authors#index"
  resources :author do
    resources :book
  end
  
end