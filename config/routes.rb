Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :clients, :only => [:create, :show]

  resources :baskets, :only => [:create, :show], param: :code do
    resources :items, :only => [:index, :create, :show]
  end

  resources :stores, :only => [:create, :show] do
    resources :items, :only => [:index, :create, :show]
  end

end
