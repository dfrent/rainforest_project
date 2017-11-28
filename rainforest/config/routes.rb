Rails.application.routes.draw do

  root :to => 'products#index'

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

end
