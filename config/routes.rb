Rails.application.routes.draw do

  resources :questions, only: [:index, :show, :new, :create]
  resources :questions do
    resources :answers, only: [:create]
  end


  root to: 'questions#index'
end
