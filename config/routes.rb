Rails.application.routes.draw do
  # Routes for the Ds40_sea resource:
  # CREATE
  get "/ds40_seas/new", :controller => "ds40_seas", :action => "new"
  post "/create_ds40_sea", :controller => "ds40_seas", :action => "create"

  # READ
  get "/ds40_seas", :controller => "ds40_seas", :action => "index"
  get "/ds40_seas/:id", :controller => "ds40_seas", :action => "show"

  # UPDATE
  get "/ds40_seas/:id/edit", :controller => "ds40_seas", :action => "edit"
  post "/update_ds40_sea/:id", :controller => "ds40_seas", :action => "update"

  # DELETE
  get "/delete_ds40_sea/:id", :controller => "ds40_seas", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
