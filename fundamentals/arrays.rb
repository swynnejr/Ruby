a = ["zero", "one", "two", "three", "four", "alpha"]
b = [0, 1, 2, 3, 4]
c = ["two", 2]

x = a+b

# puts a+b
# puts (a+b)-c
# puts x.to_s
# puts b.class
# puts b.shuffle
# puts b.shuffle.join("-")
# puts b.shuffle.join(", ")

# a.delete("three")
# puts a

# puts "Length of a is #{a.length}"
# puts "Length of a minus 1 is #{a.length-1}"

# puts a.at(2)
# puts a.fetch(2)
# puts b.fetch(2)

# /////////
# ASK ABOUT A
# It doesnt seem to do anything when listed as an index or the string two

# puts a.delete([2])
# puts b.delete(2)
# puts a
# puts b

# puts a.reverse
# puts b.reverse

# This .sort seems to put things in logical order, alphabetical or numberical

# puts a.sort
# puts b.sort

# puts a.slice(1..2)
# puts b.slice(1..2)
# puts a.slice(0..2)
# puts b.slice(0..2)

# puts a.join(b.to_s)

# puts a.insert(2,99)

z = %w{apple banana pear orange grape}

# puts z
# puts z.values_at(1,3)
# puts z.values_at(1,3).join(' and ')
puts "My favorite fruits are #{z.values_at(1,3).join(' and ')}"