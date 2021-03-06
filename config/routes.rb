BackboneWithRails::Application.routes.draw do
	scope 'api' do
  	resources :todos
  end

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
end
