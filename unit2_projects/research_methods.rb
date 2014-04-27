# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

#This is the cheap way to do it!
#def my_array_modification_method(source, thing_to_modify)
# source[2] += thing_to_modify
# source[8] += thing_to_modify
#end

def my_array_modification_method(source, thing_to_modify)
 # Here I use the .map and .is_a? methods. Map iterates over the array and replaces the value with the value in the code block.  .is_a? returns true or false if it matches the selected type.   
  source.map! do |x|
    if x.is_a? Integer
      x += thing_to_modify
    else
      x
    end
  end
  
end


def my_hash_modification_method(source, thing_to_modify)
  #Here I used .each, which iterates over the hash
  source.each do |k, v|
    source[k] = v + thing_to_modify
  end

end

pie = {"jim" => 10, "phil" => 10}
puts my_hash_modification_method(my_family_pets_ages, 5)

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.


# 
# 
# 
# 
# 