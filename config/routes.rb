Rails.application.routes.draw do
 namespace :api do 
  resources :students
  resources :skills
  resources :experiences
  resources :educations
  resources :capstones
  post "/sessions" => "sessions#create"
 end 
end
