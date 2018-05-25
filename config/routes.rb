Rails.application.routes.draw do
  devise_for :users
  root 'tenders#index'
  resources :users do 
    resources :regulars
  end
  get '/search' => 'regulars#search', :as => 'search_page'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end


