# 3.times { puts "WOW" }

# QUESTION
#  WHY doesnt this work when I run the ruby ruby_fun.rb? VVVV
# 24.class
# true.class

# i = 0
# num = 5
# while i < num do
#     puts "Inside the loop i = #{i}"
#     i += 1
#     break if i == 2
# end

# for i in 0..5
#     puts "Value of local variable is #{i}"
#     break if i == 2
# end

# for i in 0..5
#     next if i == 2
#     puts "Value of local variable is #{i}"
# end

# def hello_world
#     puts "hello world"
# end
# hello_world


# THESE ARE THE SAME

# ['bob', 'carl', 'nick'].each {|name| puts "hello #{name}"}

# for name in ['bob', 'carl', 'nick']
#     puts "hello #{name}"
# end

# def greet
#     puts "hello"

#     yield  # <<<< This is a "callback"

# end

# greet {puts "I am fantastic"}

# def greet
#     yield 'bob'

#     yield 'carl'

# end

# greet { |name| puts "I am fantastic, how are you #{name}"}
# greet { |name| puts "Mornings are great, how are you #{name}"}

# x = 'asdfasdf'
# y = 'asdfasdf'

# puts x.object_id
# puts y.object_id
# puts x.equal?(y)

# z = :asdfasdf
# puts x == y

# SYMBOLS and HASHES

# user = {name: 'bob'}
# puts user
# puts user[:name]

# # THIS OUTPUTS:
# {:name=>"bob"}
# bob

