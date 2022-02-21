Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb url, to: "controller#action"
    root to: "pages#home"
    get '/about', to: "pages#about", as: :team
end
