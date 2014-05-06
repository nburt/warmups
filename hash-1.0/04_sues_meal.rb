require_relative 'people'

# What meal is sue going to eat?


PEOPLE.each do |name, attribute|
  if name == "sue"
    p attribute[:preferences][:meal]
  end
end