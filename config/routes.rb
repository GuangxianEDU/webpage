Rails.application.routes.draw do
  
  root 'home#about'
  # main pages
  get 'about' => 'home#about'
  get 'team' => 'home#team'
  get 'info' => 'home#info'
  get 'contact' => 'home#contact'
  get 'fuwu' => 'home#fuwu'
  get 'quxiang' => 'home#quxiang'
  get 'anli' => 'home#anli'
  get 'xuezhi' => 'home#xuezhi'
  get 'mingxiao' => 'home#mingxiao'
  get 'admin' => 'home#admin'

  # authentication
  get 'signout' => 'sessions#destroy', :as => 'sign_out'
  get 'signin' => 'sessions#new', :as => 'sign_in'
  post 'signin' => 'sessions#create'

  scope 'admin' do
    resources :home_slides
    resources :members
    resources :news
    resources :consults
    resources :student_infos
    resources :statistics
  end

  get '*path', to: redirect('/about')
  

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
