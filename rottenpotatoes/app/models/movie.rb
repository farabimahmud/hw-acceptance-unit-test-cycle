class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.movies_by_same_director(movie_id)
    movie = Movie.find(movie_id[:id])
    if movie.nil?
      return nil
    end
    Movie.where(director: movie.director)
  end
end
