# # Print 1 - 255
# for i in 1..255
#     puts "#{i}"
# end

# # Print odd numbers 1-255
# for i in 1..255
#     puts "#{i}" if i % 2 != 0
# end

# Print sum 1-255
# x = 0
# for i in 1..255
#     x += i
#     puts "New number: #{i}"
#     puts "Sum: #{x}"
# end

# Iterating through an array
# x=[1,3,5,7,9,13]
# puts x.join(", ")


# # Find the max of an array
# x=[-3,-5,-7]
# y=[3,-1,1]
# z=[-5,9,0]

# puts x.max
# puts y.max
# puts z.max


# Find the average
# WHY WONT .SUM WORK?
# array = [10,20,30,40,50]
# sum = array.reduce(0) {|a,v| a + v }
# nums = array.length
# puts sum/nums


# Find array of odd numbers 1-255

# Why wont this .to_a work?
# x = (1..255).step(2)
# puts x.to_a

arr = []
for i in 1..255

