Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Bookmarked resource:
  # CREATE
  get "/bookmarkeds/new", :controller => "bookmarkeds", :action => "new"
  post "/create_bookmarked", :controller => "bookmarkeds", :action => "create"

  # READ
  get "/bookmarkeds", :controller => "bookmarkeds", :action => "index"
  get "/bookmarkeds/:id", :controller => "bookmarkeds", :action => "show"

  # UPDATE
  get "/bookmarkeds/:id/edit", :controller => "bookmarkeds", :action => "edit"
  post "/update_bookmarked/:id", :controller => "bookmarkeds", :action => "update"

  # DELETE
  get "/delete_bookmarked/:id", :controller => "bookmarkeds", :action => "destroy"
  #------------------------------

  # Routes for the Entree resource:
  # CREATE
  get "/entrees/new", :controller => "entrees", :action => "new"
  post "/create_entree", :controller => "entrees", :action => "create"

  # READ
  get "/entrees", :controller => "entrees", :action => "index"
  get "/entrees/:id", :controller => "entrees", :action => "show"

  # UPDATE
  get "/entrees/:id/edit", :controller => "entrees", :action => "edit"
  post "/update_entree/:id", :controller => "entrees", :action => "update"

  # DELETE
  get "/delete_entree/:id", :controller => "entrees", :action => "destroy"
  #------------------------------

  # Routes for the Cuisine resource:
  # CREATE
  get "/cuisines/new", :controller => "cuisines", :action => "new"
  post "/create_cuisine", :controller => "cuisines", :action => "create"

  # READ
  get "/cuisines", :controller => "cuisines", :action => "index"
  get "/cuisines/:id", :controller => "cuisines", :action => "show"

  # UPDATE
  get "/cuisines/:id/edit", :controller => "cuisines", :action => "edit"
  post "/update_cuisine/:id", :controller => "cuisines", :action => "update"

  # DELETE
  get "/delete_cuisine/:id", :controller => "cuisines", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
