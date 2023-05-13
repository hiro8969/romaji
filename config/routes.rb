Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "romajis#index"
  get 'convert', to: 'romajis#convert', as: 'romaji'
  post 'convert', to: 'romajis#convert'
end
