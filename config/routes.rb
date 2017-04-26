Rails.application.routes.draw do
  resources :categories
  devise_for :users
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end
  resources :jobs do
    resources :resumes
    collection do
      get :search
      get :city 
    end
    resources :resumes
  end

  namespace :account do
  resources :users
end


    root 'welcome#index'
end
