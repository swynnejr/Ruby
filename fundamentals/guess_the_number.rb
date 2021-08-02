# /////////
# USING IF
# /////////

# def guess_number guess
#     number = 25
#     if guess > number
#         puts "Guess was too high!"
#     elsif guess < number
#         puts "Guess was too low!"
#     else
#         puts "You got it!"
#     end
# end

# puts guess_number(14)
# puts guess_number(30)
# puts guess_number(25)

# /////////
# I CANT FIGURE THE UNLESS STUFF OUT
# USING UNLESS... HERE WAS MY ATTEMPT THAT WAS WRONG

# def guess_number guess
#     number = 25
    # unless guess > number
    #     puts "You are too low!"
    #     elsif guess > number
    #         puts "You are too high!"
    #     elsif guess == number
    #             puts "You got it!"
    #         end
    #     end
    # end

# /////////
# With COLBY's help I got this that runs
# BUT I dont understand why you have to modify the number after '<' or '>'

def guess_number guess
    number = 25
    puts "Your guess is too high!" unless guess < number+1
    puts "Your guess is too low!" unless guess > number-1
    puts "You got it" unless guess != number
end

puts guess_number(14)
puts guess_number(30)
puts guess_number(25)
