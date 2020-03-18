Rails.application.routes.draw do
  get '/babynames/random', to: 'babynames#random'
  post '/login', to: 'users#login'
  get '/babynames/sort_rank', to: 'babynames#sort_rank'
  get '/babynames/sort_name', to: 'babynames#sort_name'
  get '/babynames/search/:id', to: 'babynames#search'

  get '/babynames/search_by_gender/:gender/:limit', to: 'babynames#search_by_gender'
  get '/babynames/search_by_ethnicity/:ethnicity/:limit', to: 'babynames#search_by_ethnicity'

  
  resources :favorites, only:[:index,:create]

  # resources :favorites, only:[:index]
  resources :babynames, only:[:show,:index]
  resources :users, only:[:show,:create,:index]

end