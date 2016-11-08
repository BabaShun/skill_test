Rails.application.routes.draw do
  root 'users#index'
  resources :skill_tags do
    member do
      get 'add_relation'
    end
  end
  devise_for :users

  devise_scope :user do
    get 'login' => 'devise/sessions#new'
    post 'login' => 'devise/sessions#create'
    get 'logout' => 'devise/sessions#destroy'
  end
  resources :users, only: [:index, :show] do
    member do
      post 'add_skill'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
