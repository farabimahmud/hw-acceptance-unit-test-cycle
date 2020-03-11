require 'rails_helper'
When /I go to the edit page for "(.+)"/ do |moviename|
  movie = Movie.find_by_title(moviename)
  moviepath = edit_movie_path(movie)
  expect page.has_field?('director')
  step %{I fill in "director" with "(.+)"}
  step %{I press "Update Movie Info"}
end

Then /the director of "(.+)" should be (.+)/ do |moviename, directorname|
  director_name_from_db = Movie.find_by_title(moviename).director
  expect director_name_from_db eql(directorname)
end