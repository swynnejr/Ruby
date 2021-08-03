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
# THIS WORKS NOW
# p INSTEAD OF puts
# x = (1..255).step(2)
# p x.to_a

# https://ruby-doc.org/core-2.4.3/Array.html#method-i-each
# https://ruby-doc.org/core-2.4.3/Array.html#method-i-3C-3C
# arr = []
# (1..255).each { |i| arr << i if i.odd?}
# p arr

# Greater than y
# arr = [1,3,5,7]
# y=3
# greater = arr.find_all { |i| i > y }
# puts greater.length
# or puts greater.count


# Square values
# arr = [1,5,10,-2]
# puts arr.map! {|i| i * i}


# Replace negative numbers with 0
# arr = [1,5,10,-2]
# # p arr.each_index { |i| arr[i] = 0 if arr[i] < 0 }
# # INTERESTING STACK OVERFLOW IDEA:
# p arr.map!{|i| [0,i].max}

# Max/Min/Avg with TWO TEST CASES, ONLY RUN ONE AT A TIME
# arr = [1,5,10,-2]
# arr = [4, 13, 64, -5, -22]
# new_arr = []
# new_arr << arr.max
# new_arr << arr.min
# sum = arr.reduce(0) {|a,v| a + v }
# nums = arr.length
# new_arr << sum/nums
# p new_arr


# Shift values in array
# arr = [1,5,10,7,-2]
# arr.shift
# p arr.push(0)


# Number to string
arr = [-1,-3,2]
p arr.each_index {|i| arr[i] = "Dojo" if arr[i] < 0}