# -- INTRODUCTION TO HASHES --

# A Hash is a collection of key-value pairs

# (it's the same as json, relax and enjoy)

# Hashes are also called 'associative arrays', 'dictionary', 'HashMap' etc. in other languages

# Creating a Hash

student_ages = {
    "Jack" => 10,
    "Jill" => 12,
    "Bob" => 14
  }

# create hash

restaurant_menu = {
    "Ramen" => 3,
    "Dal Makhani" => 4,
    "Tea" => 2,
    }


# Fetch values from a Hash

puts restaurant_menu["Ramen"]


# Modifying a Hash

restaurant_menu["Ramen"] = 5

# -- HASHES, IN AND OUT --

# Iterating over a Hash

# example

restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do | item, price |
  puts "#{item}: $#{price}"
end

#  Use the each method to increase the price of all the items in the restaurant_menu by 10%.

restaurant_menu.each do |item, price | 
    restaurant_menu[item] = price * 1.1
end

# every hash object has method .key and .value

# get all keys

puts restaurant_menu.keys

# new shortcuts

# p - instead of puts

chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]


# and another cool feature

def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a, b, c]
    Hash[key_value_pairs]
  end
p artax


