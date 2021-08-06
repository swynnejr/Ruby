Rails.application.routes.draw do
  get 'times/counter'

  get 'times/restart'

  get 'welcome/index'

  get 'say/hello_dojo'

  get 'say/hello'

  get 'say/hello_joe'

  get 'say/hello_michael'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
get "hello" => "say#hello_dojo"
get "say/hello" => "say#hello"
get "say/hello/joe" => "say#hello_joe"
get "say/hello/michael" => "say#hello_michael"
get "times" => "times#counter"
get "times/restart" => "times#restart"
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
