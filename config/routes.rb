Rails.application.routes.draw do

  root 'networks#index'

  # Routes for the Theme resource:
  # CREATE
  get "/themes/new", :controller => "themes", :action => "new"
  post "/create_theme", :controller => "themes", :action => "create"

  # READ
  get "/themes", :controller => "themes", :action => "index"
  get "/themes/:id", :controller => "themes", :action => "show"

  # UPDATE
  get "/themes/:id/edit", :controller => "themes", :action => "edit"
  post "/update_theme/:id", :controller => "themes", :action => "update"

  # DELETE
  get "/delete_theme/:id", :controller => "themes", :action => "destroy"
  #------------------------------

  # Routes for the School resource:
  # CREATE
  get "/schools/new", :controller => "schools", :action => "new"
  post "/create_school", :controller => "schools", :action => "create"

  # READ
  get "/schools", :controller => "schools", :action => "index"
  get "/schools/:id", :controller => "schools", :action => "show"

  # UPDATE
  get "/schools/:id/edit", :controller => "schools", :action => "edit"
  post "/update_school/:id", :controller => "schools", :action => "update"

  # DELETE
  get "/delete_school/:id", :controller => "schools", :action => "destroy"
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get "/networks/new", :controller => "networks", :action => "new"
  post "/create_network", :controller => "networks", :action => "create"

  # READ
  get "/networks", :controller => "networks", :action => "index"
  get "/networks/:id", :controller => "networks", :action => "show"

  # UPDATE
  get "/networks/:id/edit", :controller => "networks", :action => "edit"
  post "/update_network/:id", :controller => "networks", :action => "update"

  # DELETE
  get "/delete_network/:id", :controller => "networks", :action => "destroy"
  #------------------------------

  # Routes for the Uniqueresource resource:
  # CREATE
  get "/uniqueresources/new", :controller => "uniqueresources", :action => "new"
  post "/create_uniqueresource", :controller => "uniqueresources", :action => "create"

  # READ
  get "/uniqueresources", :controller => "uniqueresources", :action => "index"
  get "/uniqueresources/:id", :controller => "uniqueresources", :action => "show"

  # UPDATE
  get "/uniqueresources/:id/edit", :controller => "uniqueresources", :action => "edit"
  post "/update_uniqueresource/:id", :controller => "uniqueresources", :action => "update"

  # DELETE
  get "/delete_uniqueresource/:id", :controller => "uniqueresources", :action => "destroy"
  #------------------------------

  # Routes for the Learningunit resource:
  # CREATE
  get "/learningunits/new", :controller => "learningunits", :action => "new"
  post "/create_learningunit", :controller => "learningunits", :action => "create"

  # READ
  get "/learningunits", :controller => "learningunits", :action => "index"
  get "/learningunits/:id", :controller => "learningunits", :action => "show"

  # UPDATE
  get "/learningunits/:id/edit", :controller => "learningunits", :action => "edit"
  post "/update_learningunit/:id", :controller => "learningunits", :action => "update"

  # DELETE
  get "/delete_learningunit/:id", :controller => "learningunits", :action => "destroy"
  #------------------------------

  # Routes for the Mastertoy resource:
  # CREATE
  get "/mastertoys/new", :controller => "mastertoys", :action => "new"
  post "/create_mastertoy", :controller => "mastertoys", :action => "create"

  # READ
  get "/mastertoys", :controller => "mastertoys", :action => "index"
  get "/mastertoys/:id", :controller => "mastertoys", :action => "show"

  # UPDATE
  get "/mastertoys/:id/edit", :controller => "mastertoys", :action => "edit"
  post "/update_mastertoy/:id", :controller => "mastertoys", :action => "update"

  # DELETE
  get "/delete_mastertoy/:id", :controller => "mastertoys", :action => "destroy"
  #------------------------------

  devise_for :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
