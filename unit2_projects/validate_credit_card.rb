# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# 2. Pseudocode

# Input: A Credit card number
# Output: True or false if that card is valid or not
# Steps:
# 1. Def initialize method that takes a cc_number as a paramenter
# 2. Raise an error if the card lenght is invalid
# 3. Create method that checks the card number
# 4. Check the credit card number and alter is using the algorithm
# 4 (a). if the index % 2 = 0, double that element
# 4 (b). If that element added together is more than 10, add the first and last part of the number together
# 4 (c). Add those number into our new CC array
# 5. add the number in our new CC array together.  Return true of the return 0 from % 10, false if it doesn't


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(cc_number)
    @cc_number = cc_number.to_s.split("")
    raise ArgumentError.new("Invalid Card Number") if @cc_number.length != 16
  end

  def check_card
    sum_cc = []
    @cc_number.each_with_index do |element, index|
      if index % 2 == 0
        element =  element.to_i + element.to_i
        if element >= 10
          array = element.to_s.split("")
          element = array[0].to_i + array[1].to_i
        end
      end
      sum_cc << element
    end

     sum = sum_cc.inject{ |sum, x| sum.to_i + x.to_i }
    sum % 10 == 0 ? true : false
  end
end



# 4. Refactored Solution

#Could not come up with a decent refactored solution on this one!




# 1. DRIVER TESTS GO BELOW THIS LINE

puts card = CreditCard.new(111111111111111) rescue $!.message == "Invalid Card Number"
puts card = CreditCard.new(11111111111111111) rescue $!.message == "Invalid Card Number"
card = CreditCard.new(4408041234567893)
puts card.check_card == true
card = CreditCard.new(4408041234567892)
puts card.check_card == false



# 5. Reflection 
# So...many...steps!  But, broken down it turned out not to be that hard!  A lesson I keep learning is that if I take a breath and break down the problem one step at a time, it's usually not so bad. I had used all the methods in here before, so none of that was tricky.  The key was simply not getting ahead of myself. I got hung up on adding the first and last digits of the numbers over 10 together, but got through that by spitting them, adding them into an array then adding together the two elements. 