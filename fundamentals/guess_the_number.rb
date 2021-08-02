# /////////
# USING IF
# /////////

def guess_number guess
    number = 25
    if guess > number
        puts "Guess was too high!"
    elsif guess < number
        puts "Guess was too low!"
    else
        puts "You got it!"
    end
end

puts guess_number(14)
puts guess_number(30)
puts guess_number(25)

# /////////
# I CANT FIGURE THE UNLESS STUFF OUT
# USING UNLESS
# /////////

# def guess_number guess
#     number = 25
#     unless guess > number
#         puts "You are too low!"
#         elsif guess > number
#             puts "You are too high!"
#         elsif guess == number
#                 puts "You got it!"
#             end
#         end
#     end
# end

# puts guess_number(14)
# puts guess_number(30)
# puts guess_number(25)
