Rails.application.routes.draw do
  root 'users#index'
  resources :skill_tags do
    member do
      get 'add_relation'
    end
  end
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get 'login' => 'users/sessions#new'
    post 'login' => 'users/sessions#create'
    get 'logout' => 'users/sessions#destroy'
  end
  resources :users, only: [:index, :show] do
    member do
      post 'add_skill'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end