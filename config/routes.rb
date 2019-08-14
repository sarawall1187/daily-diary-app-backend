Rails.application.routes.draw do
  get 'api/v1/get_current_user' => 'api/v1/sessions#get_current_user'
  post 'api/v1/login' => 'api/v1/sessions#create'
  delete 'api/v1/logout' => 'api/v1/sessions#destroy'

  namespace :api do
    namespace :v1 do
      resources :diaries
      resources :users
    end
  end
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
