require_relative 'people'

# What was the date of the first correspondence with joe?

PEOPLE.each do |k, v|
  if k == "joe"
    p v[:correspondence].first[:date]
  end
end