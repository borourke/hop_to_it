Rails.application.routes.draw do
  devise_for :users

  root to: redirect("/beers/new")
  get '/beers/new', to: 'beers#new', as: :new_beer
  post '/beers/add', to: 'beers#add', as: :add_beer

  get '/cellar', to: 'cellars#cellar', as: :cellar

  get '/notes', to: 'notes#notes', as: :notes
end
