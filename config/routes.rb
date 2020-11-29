Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :leagues, only: %i[create]
  
  controller :leagues do
    get :find_leagues
  end
end
