Rails.application.routes.draw do
  get "/fortune_url" => 'pages#fortune_method'
  get "/numbers_url" => 'pages#numbers_method'
  get "/bottles_url" => 'pages#bottles_method'
  get "/visit_url" => 'pages#visit_method'
end 
