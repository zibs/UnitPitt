Rails.application.routes.draw do

# get 'Slug' => 'controller#ACTION==FILENAME'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

   root 'archives#index'

   # Begin Library
   resources :contributors, :path => "library"
   get 'authors' => 'contributors#authors'
   get 'titles'  => 'contributors#titles'

   # Begin Exhbitions
   get 'musikklub' =>  'archives#musikklub'
   get 'musikklub-sidetwo' => 'archives#musikklubsidetwo'
   get 'Its-A-Long-Way-To-The-Wishbone-From-The-Backbone' => 'archives#wishbone', as: :wishbone

   # Begin Archive
   get 'directory' => 'archives#directory'
   get 'acknowledgments' => 'archives#acknowledgments'
   get 'OutlawArtistsAtThePitt' => 'archives#outlaws'
   get 'Elaine-Brewer-White-Seven-Sins-and-the-Television-Set' => 'archives#sevensins'
   get 'For Immediate Release' => 'archives#pictographs'
   get 'LookUponMyWorksYeMightyAndDespair' => 'archives#boringart'
   get 'IngridKoenigs-RapOnTheSublime' => 'archives#sublimerap'
   get 'AndAfterwardsJesusHimselfSentOutThroughThemFromEastToWestTheSacredAndImperishableProclamationOfEternalSalvation' => 'archives#crucifixation'
   get 'AsIfCompositionWereaDogandNotaGod' => 'archives#godslogo'
   get 'ASecretArtShow'  =>   'archives#secretartshow'

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
