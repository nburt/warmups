require_relative 'people'

# What was the description of the last correspondence with sue?

PEOPLE.each do |name, attribute|
  if name == "joe"
    p attribute[:correspondence][-1][:description]
  end
end