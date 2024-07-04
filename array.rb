LIST_OF_NAMES = %w[Aleksa Luka Ivana Lana]

# Add to the list
def add_to_list(name)
  LIST_OF_NAMES.push name
end

# Remove from list
def remove_name_from_list(name)
  LIST_OF_NAMES.delete name
end

# Print the list
def print_list
  LIST_OF_NAMES.each { |name| puts name }
end

# Shuffle the list in place
def shuffle_list
  LIST_OF_NAMES.shuffle!
end

print_list
puts "-----------------"
add_to_list "Marko"
print_list
puts "-----------------"
remove_name_from_list "Luka"
print_list
puts "-----------------"
shuffle_list
print_list
puts "-----------------"