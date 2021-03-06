# our_hash = {:first_name => "Coding", :last_name => "Dojo"}

# our_hash = {first_name: "Coding", last_name: "Dojo"}

# def new_user user = {first_name: "first", last_name: "last"}
#     puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
# end
# our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user # => "Welcome to our site, first last!"
# new_user our_user # => "Welcome to our site, Oscar Vasquez!"

# def new_user first_name: "first", last_name: "last"
#     puts "Welcome to our site, #{first_name} #{last_name}!"
# end

# def new_user first_name: "first", last_name: "last"
#     puts "Welcome to our site, #{first_name} #{last_name}!"
# end

# CHECK SOLUTIONS:


# # .delete(key) deletes the key-value pair and returns the value from hsh whose key is equal to key.

# h = {first_name: "Coding", last_name: "Dojo"}
# h.delete :last_name
# puts h 

# # .empty? => returns true if hash contains no key-value pairs
# h = {}
# h.empty?

# # .has_key?(key) returns true if given key is present
# h = {first_name: "Coding", last_name: "Dojo"}
# h.has_key? :first_name # => true
# h.has_key? "first_name" # => false

# # .has_value?(value) returns true if given value is present for some key
# h = {first_name: "Coding", last_name: "Dojo"}
# h.has_value? "Coding" # => true
# h.has_value? "Bootcamp" # => false