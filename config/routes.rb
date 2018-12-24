Rails.application.routes.draw do




  resources :charges
  resources :products
  devise_for :admins
  resources :customs
  resources :interiors
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :registrations => "acme/registrations"}
  
  resources :kidswardrobs
  resources :kidstudyts
  resources :dressingts
  resources :wardrobes
  resources :besidets
  resources :kidsbs
  resources :divanbs
  resources :doublebs
  resources :sofacumbs
  resources :upholsteredbs
  resources :hydraulicstoragebs
  resources :singlebs
  resources :kingsizebs
  resources :queensizebs
  resources :kitchencabinets
  resources :diningbenches
  resources :diningchairs
  resources :diningts
  resources :lshapedcornersofas
  resources :threeseatersofas
  resources :twoseatersofas
  resources :oneseatersofas
  resources :woodensofasets
  resources :fabricsofasets
  resources :writingts
  resources :spotts
  resources :sidets
  resources :centerts
  resources :bookcabinets
  resources :tvcabinets
  resources :benches
  resources :chairs
  resources :sofas


  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'
  get '/orders/blow', to: 'orders#blow', as: :tracking
  get '/order_tracking', to: 'orders#order_tracking'
  get '/order_status', to: 'orders#order_status'
  



  get 'search', to: 'search#search'
  get "welcome/sofas"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/merrychristmas"
  get "welcome/privacy"
  get "welcome/faq"
  get "welcome/delivery"
  get "welcome/return"
  get "welcome/chair"
  get "welcome/bc"
  get "welcome/bench"
  get "welcome/bst"
  get "welcome/ct"
  get "welcome/db"
  get "welcome/dib"
  get "welcome/drt"
  get "welcome/dt"
  get "welcome/fss"
  get "welcome/kb"
  get "welcome/kc"
  get "welcome/ksb"
  get "welcome/kst"
  get "welcome/kw"
  get "welcome/lss"
  get "welcome/oss"
  get "welcome/qsb"
  get "welcome/sb"
  get "welcome/scb"
  get "welcome/sidet"
  get "welcome/st"
  get "welcome/stb"
  get "welcome/tc"
  get "welcome/thss"
  get "welcome/tss"
  get "welcome/ub"
  get "welcome/w"
  get "welcome/wss"
  get "welcome/wt"
  get "welcome/trackitdown"

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
