Adsitape::Application.routes.draw do
  get "videos/show"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  match '/auth/facebook/logout' => 'application#facebook_logout', :as => :facebook_logout

  get "pages/home"
  get "pages/historico"
  get "pages/contribua"
  get "pages/cronograma"
  get "pages/tutoriais"
  get "pages/infraestrutura"
  get "pages/sobre"
  get "pages/contato"
  get "cronograma/basico"

  root :to => "pages#home"

  match '/home',          :to => 'pages#home'
  match '/historico',     :to => 'pages#historico'
  match '/contribua',     :to => 'pages#contribua'
  match '/cronograma',    :to => 'pages#cronograma'
  match '/tutoriais',     :to => 'pages#tutoriais'
  match '/infraestrutura',:to => 'pages#infraestrutura'
  match '/sobre',         :to => 'pages#sobre'
  match '/contato',       :to => 'pages#contato'

  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
