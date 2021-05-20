Rails.application.routes.draw do
  devise_for :users
  # resources :courses 
  resources :courses do 
  	collection do 
      	get :enroll, :unenroll, :deleteAll
        post :enroll, :unenroll, :deleteAll
  	end
  end

  get 'home/listMy'
  get 'home/about'
  get 'home/enrolledList'
  root 'courses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
