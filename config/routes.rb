Rails.application.routes.draw do
  # Routes for the Seasonality resource:
  # CREATE
  get "/seasonalities/new", :controller => "seasonalities", :action => "new"
  post "/create_seasonality", :controller => "seasonalities", :action => "create"

  # READ
  get "/seasonalities", :controller => "seasonalities", :action => "index"
  get "/seasonalities/:id", :controller => "seasonalities", :action => "show"

  # UPDATE
  get "/seasonalities/:id/edit", :controller => "seasonalities", :action => "edit"
  post "/update_seasonality/:id", :controller => "seasonalities", :action => "update"

  # DELETE
  get "/delete_seasonality/:id", :controller => "seasonalities", :action => "destroy"
  #------------------------------

  # Routes for the Conv_sea resource:
  # CREATE
  get "/conv_seas/new", :controller => "conv_seas", :action => "new"
  post "/create_conv_sea", :controller => "conv_seas", :action => "create"

  # READ
  get "/conv_seas", :controller => "conv_seas", :action => "index"
  get "/conv_seas/:id", :controller => "conv_seas", :action => "show"

  # UPDATE
  get "/conv_seas/:id/edit", :controller => "conv_seas", :action => "edit"
  post "/update_conv_sea/:id", :controller => "conv_seas", :action => "update"

  # DELETE
  get "/delete_conv_sea/:id", :controller => "conv_seas", :action => "destroy"
  #------------------------------

  # Routes for the Ds53_sea resource:
  # CREATE
  get "/ds53_seas/new", :controller => "ds53_seas", :action => "new"
  post "/create_ds53_sea", :controller => "ds53_seas", :action => "create"

  # READ
  get "/ds53_seas", :controller => "ds53_seas", :action => "index"
  get "/ds53_seas/:id", :controller => "ds53_seas", :action => "show"

  # UPDATE
  get "/ds53_seas/:id/edit", :controller => "ds53_seas", :action => "edit"
  post "/update_ds53_sea/:id", :controller => "ds53_seas", :action => "update"

  # DELETE
  get "/delete_ds53_sea/:id", :controller => "ds53_seas", :action => "destroy"
  #------------------------------

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
