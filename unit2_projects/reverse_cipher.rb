# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)  
    alphabet = ('a'..'z').to_a # values of a through z and putting them into an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #creating a hash out of the alphabet. The alphabet value is now equal to a spot 4 places down
    spaces = ["@", "#", "$", "%", "^", "&", "*"] # assigning a variable to symbols
    
    original_sentence = sentence.downcase #making the sentence into downcase
    encoded_sentence = [] #creating empty array to store endoded sentence
    original_sentence.each_char do |element| #for each character in sentence...
      if cipher.include?(element)  #seeing is the cipher includes that character
        encoded_sentence << cipher[element] #if so, storing the cipher value into the encoded sentence
      elsif element == ' ' #if there is a space..
        encoded_sentence << spaces.sample #storing a random symbols from the spaces array into encoded sentence
      else 
        encoded_sentence << element #and if it's none of those, just keeping the element. 
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
#-- Converting into an array

# 2. How does the rotate method work? What does it work on?
#-- It's working on alphabet.  Since alphabet ends, it will rotate through so you can keep encoding values

# 3. What is `each_char` doing?
#-- Passes each character to the block

# 4. What does `sample` do?
#-- Chooses random element in an array

# 5. Are there any other methods you want to understand better?
#-- Sure..there are tons of methods, most of which I've never used

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#--  It looks a little bit better and shorter. (Granted, it also does not have to worry about diving numbers by 100 on the input). It's a bit more confusing to read, but slightly shorter. 

# 7. Is this good code? What makes it good? What makes it bad?
# I guess it's good?  This is a weird question to ask as I am obviously extremely unqualified to answer it at this point. It works and I know what everything means, so I guess it's good. 

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# Wait...I didn't reflect above?  Everything in the reverse cipher exercise made sense and seemed pretty self explanatory. I learned what .zip does, but I was already pretty familiar with the other methods. 
