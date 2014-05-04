def bakery_num(num_of_people, fav_food) #def bakery, taking parameter of people and fav food
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} #identifying the number of people each dish serves
  pie_qty = cake_qty = cookie_qty = 0 
  
  raise ArgumentError.new("You can't make that food") if fav_food == nil #raising error if no fav_food is identified

  if num_of_people % my_list.values_at(fav_food)[0] == 0 # if there are no remainders, only 1 food needs to be made!
    num_of_food = num_of_people / my_list.values_at(fav_food)[0]
    return "You need to make #{num_of_food} #{fav_food}(s)."
  end

  while num_of_people > 0 #this loop sets up how to deal with remainders. After fav food, it will then go to next item to fill out total
    if num_of_people / my_list["pie"] > 0
      pie_qty = num_of_people / my_list["pie"]
      num_of_people %= my_list["pie"]
    elsif num_of_people / my_list["cake"] > 0
      cake_qty = num_of_people / my_list["cake"]
      num_of_people %= my_list["cake"]
    else
      cookie_qty = num_of_people
      num_of_people = 0
    end
  end
  return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
end

puts bakery_num(24, "cake") == "You need to make 4 cake(s)."
puts bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
puts bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
puts bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
puts bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."

#Reflection
# This exercise showed how confusing ugly code can be. Again, it looked far more confusing than it really was.  Once it was broken down step by step, it turned out toe not be too difficult. Using the while loop really helped make the code shorter and easier for me to understand. The only problems that were run into turned out to just be syntax errors.  The strategy put forth actually turned out fine every time.  Overall, this wasn't a very enjoyable challenge...if only because the reason behind the code is so friggin' impractical (I have a deep seated annoyance for code that would never serve any purpose in real life), but it doesn't mean I didn't learn from it. 