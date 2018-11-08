Rails.application.routes.draw do
  get 'movies/search'
  post 'movies/result'
  get '/', to: 'movies#search'
  end