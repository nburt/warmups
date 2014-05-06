require_relative 'people'

# What is the first genre that each person listed?

PEOPLE.each do |name, person|
  p person[:prefeneces][:favorite_genres].first
end

