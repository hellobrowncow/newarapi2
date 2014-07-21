Newarapi2::Application.routes.draw do
  
  root 'site#index'

    get    'login'  => 'session#new',   as: :login                   # Login form
    post   'login'  => 'session#create'                      # Log user in (start session)
    get    'logout' => 'session#destroy' , as: :logout 
   # delete 'logout' => 'session#destroy'  , as: :logout            # Log user out (end session)




    resources :users


    resources :items
      post    '/items/new'   => 'items#create', as: :newitem
      # match   '/items/new'   => 'items#show', via: [:get, :post]
    resources :collections
      post    '/collections/new'   => 'collections#create', as: :newcollection  


    # scope :users do
    #   get    ''     => 'users#index', as: "users"
    #   get    ':id' => 'users#index', as: 'user'
    #   #show   ''     => 'users#index'
    #   post   '/new'     => 'users#create'
    #   put    ''     => 'users#replace'
    #   patch  ''     => 'users#update'
    #   delete ''     => 'users#destroy'
    #   #edit   ''     => 'users#update'
    # end

    # scope :items do
    #   get    ''     => 'items#index', as: 'items'
    #   get    ':ids' => 'items#index', as: 'item'
    #   post   ':id'  => 'items#create'
    #   put    ':id'  => 'items#replace'
    #   patch  ':id'  => 'items#edit'
    #   delete ':ids'  => 'items#destroy'

    # end

  scope :api do 
    resources :users, except: [ :show, :new, :edit], defaults: { format: :json} do
    end

    resources :items, except: [ :show, :new, :edit], defaults: { format: :json} do
    end

    resources :tags, except: [ :show, :new, :edit], defaults: { format: :json} do
    end

    resources :collections, except: [ :show, :new, :edit], defaults: { format: :json} do
    end


end
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
