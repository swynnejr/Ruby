# 1: Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

# arr = [3,5,1,2,7,9,8,13,25,32]
# sum = arr.reduce(0) {|a,v| a + v }
# #  This prints sum of all numbers in the array
# puts sum
# target = 10
# greater = arr.find_all { |i| i > target }
# p greater

# 2: Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.

# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# p arr.shuffle
# # THIS DOESNT WORK
# # long_names = []
# # arr.find_all {|i| long_names << [i] if [i].length > 5}
# # p long_names
# long_names = []
# long_names = arr.select { |name| name.length > 5 }
# p long_names

# 3: Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.

# alphabet = ('a'..'z').to_a
# alphabet.shuffle!
# p alphabet.first
# p alphabet.last
# SECOND HALF DOESNT WORK
# # vowels = []
# # vowels = alphabet & ["a","e","i","o","u"]
# # p vowels

# 4: Generate an array with 10 random numbers between 55-100.
# array = []
# 10.times { array << rand(55..100) }
# p array

# 5: Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value

# array = []
# 10.times { array << rand(55..100) }
# p array.sort!
# p array.first

# 6: Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
string = []
5.times { string << (65+rand(26)).chr }
puts string.join

# Generate an array with 10 random strings that are each 5 characters long

# string = []
# 5.times { string << (65+rand(26)).chr }
# rand_string = string.join
# arr_of_strings = []
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# arr_of_strings << rand_string
# puts arr_of_strings