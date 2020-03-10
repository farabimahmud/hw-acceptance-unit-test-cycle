Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')

  # get controller to map to find same movies to director for get requests 
  get 'movies_same_director/:id'=> 'movies#movies_same_director', as: :movies_same_director
end
