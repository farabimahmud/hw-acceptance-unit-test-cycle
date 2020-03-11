
When /I go to the edit page for "(.+)"/ do |moviename|
  movie = Movie.find_by_title(moviename)
  moviepath = edit_movie_path(movie)
  visit (moviepath)
  expect page.has_field?('Director')
end


Then /the director of "(.+)" should be (.+)/ do |moviename, directorname|
  movie_from_db = Movie.find_by_title(moviename)
  expect (directorname == movie_from_db.director)
end
