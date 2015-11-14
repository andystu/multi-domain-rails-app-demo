Rails.application.routes.draw do

  Site.where(is_active: true).each do |site|
    constraints DomainConstraint.new(site.domain) do
      resources :pages
    end
  end

  # constraints DomainConstraint.new(Settings[:firstapp_domain]) do
  #   namespace Settings[:firstapp_domain].gsub(".","_") do
  #     resources :post
  #   end
  # end
  #
  # constraints DomainConstraint.new(Settings[:secondapp_domain]) do
  #   namespace Settings[:secondapp_domain].gsub(".","_") do
  #     resources :post
  #   end
  # end

  # constraints DomainConstraint.new(Settings[:firstapp_domain]) do
  #   resources :firstapp
  # end
  #
  # constraints DomainConstraint.new(Settings[:secondapp_domain]) do
  #   resources :secondapp
  # end

# %w("app1.dev","app2.dev","localhost").each do |app_domain|
#   constraints DomainConstraint.new(app_domain) do
#       get 'posts/:id' => 'posts#show'
#   end
# end

# ["app1.dev","app2.dev","localhost"].each do |app_domain|
#   constraints DomainConstraint.new(app_domain) do
#     # resources :posts
#     get 'posts/:id' => 'posts#show'
#   end
# end


# ["app1.dev","app2.dev","localhost"].each do |app_domain|
#   constraints DomainConstraint.new(app_domain) do
#     # resources :posts
#     get 'posts/:id' => 'posts#show'
#   end
# end

  # resources :posts , constraints: lambda{ |request| request.env['SERVER_NAME'].match('localhost')}
  # resources :posts , constraints: ->(request){  request.env['SERVER_NAME'].match('localhost')}

  # resources :posts, constraints: DomainConstraint.new(Settings[:firstapp_domain])
  # resources :posts, constraints: DomainConstraint.new(Settings[:secondapp_domain])
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
