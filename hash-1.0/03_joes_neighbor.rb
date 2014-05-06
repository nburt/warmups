require_relative 'people'

# What is the last name of the person sitting next to joe?
#
# HINT: Start by finding who joe is sitting next to, then find that person in the hash.

sitting_next_to = ''

PEOPLE.each do |k, v|
  if k == "joe"
    sitting_next_to = v[:sitting_next_to]
  end
end

PEOPLE.each do |k, v|
  if sitting_next_to.to_s == k
    p v[:last_name]
  end
end