Rails.application.routes.draw do
  get '/ideas' => 'application#index'
  get '/idea/:id' => 'application#show'
  
  get '/new_idea' => 'application#new'
  get '/create_idea' => 'application#create'
  
  get '/idea/:id/edit' => 'application#edit'
  get '/update_idea/:id' => 'application#update'
  
  get '/idea/:id/destroy' => 'application#destroy'
end
