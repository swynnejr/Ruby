a = (1..10)
b = (1...10)
y = ('a'..'z')

# puts a.include?(10) # > true
# puts b.include?(10) # > false


puts a.last # > 10
puts b.last # > 10  WHY DOES .last NOT EXCLUDE 10 on b which has a range of ...??
# puts y.last # > z

puts a.last(3)
puts b.last(3)  # THIS BEHAVES AS EXPECTED, COMPARED TO QUESTION ABOVE
# puts y.last(13)


# puts a.max
# puts a.min
# puts b.max
# puts b.min
