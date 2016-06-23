Rails.application.routes.draw do

  root "courses#index"
  resources :courses do
    resources :enrollments, shallow: true
  end
  resources :students

end
