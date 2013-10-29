ChulaLounge::Application.routes.draw do
  resources :dislikes
  resources :likes

  resources :faculties
  resources :curriculums
  resources :teaches
  resources :courses
  resources :ratings
  resources :comments
  resources :professors
  resources :users

  root to: 'pages#index'
  get 'pages/nav/:id' => 'pages#nav', :constraints => { :id => /[0-9]+(\%7C[0-9]+)*/ }
  get 'pages/nav/:id/course/:cid' => 'pages#course_index', :constraints => { :id => /[0-9]+(\%7C[0-9]+)*/, :cid => /[0-9]+(\%7C[0-9]+)*/ }
  get 'pages/course_register' => 'pages#course_register'
  get 'query/courses' => 'courses#search_query'
  get 'query/curriculums' => 'courses#curriculum_query'


  namespace :api, defaults: {format: :json} do 
    resources :courses
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
