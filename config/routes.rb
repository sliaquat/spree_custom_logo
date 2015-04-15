
Spree::Core::Engine.routes.draw do
  namespace :admin do
    resource :frontend_logo, only: [:edit, :update]
  end

end

