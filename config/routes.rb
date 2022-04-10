Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'troubles#index'
  get 'cannot', to: 'static_pages#cannot'
  resources :troubles, only: %i[index] do
    resources :questions, only: %i[show]
  end
  resources :results, only: %i[show] do
    collection do
      get :cannot
    end
  end
end
