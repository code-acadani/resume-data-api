Rails.application.routes.draw do
 
 namespace :api do 
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  # get "/skills" => "skills#index"
  # get "/skills/:id" "skills#show"
  # post "/skills" => "skills#create"
  # patch "/skills/:id" => "skills#update"
  # delete "/skills/:id" => "skills#destroy"

  # get "/experiences" => "experiences#index"
  # get "/experiences/:id" => "experiences#show"
  # post "/experiences" => "experiences#create"
  # patch "/experiences" => "experiences#update"
  # delete "/experiences/:id" => "experiences#destroy"

  # get "/educations" => "educations#index"
  # get "/educations/:id" => "educations#show"
  # post "/educations" => "educations#create"
  # patch "/educations/:id" => "educations#update"
  # delete "/educations/:id" => "educations#destroy"

  # get "/capstones" => "capstones#index"
  # get "/capstones/:id" => "capstones#show"
  # post "/capstones" => "capstones#create"
  # patch "/capstones/:id" => "capstones#update"
  # delete "/capstones/:id" => "capstones#destroy"

 end 
end
