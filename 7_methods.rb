# -- BEING METHODICAL -- #

# A method, then, is simply programming jargon for something one object can do for another

# example

puts 1.next

# -- Objectifying methods

# Methods aren't exempt from Ruby's "everything is an object" rule. 
# This means that the methods exposed by any object are themselves objects, and yes, you can use them as such

next_method_object = 1.method("next")
puts next_method_object.call

# -- make it so

# Let's write a method called reverse_sign that takes one object - an Integer - and changes a positive value to negative one, 
# and vice-versa

def reverse_sign(an_integer)
    return 0 - an_integer
  end
  
puts reverse_sign(100)
puts reverse_sign(-5)

# -- CALLING A METHOD -- #

# -- cooperative objects

def add(a_number, another_number)
    a_number + another_number
  end
  
puts add(1, 2)


def add(a_number, another_number, yet_another_number)
    a_number + another_number + yet_another_number
  end
  
puts add(1, 2, 3)


def add(a_number, another_number, yet_another_number = 0)
    a_number + another_number + yet_another_number
  end
  
puts add(1, 2)

# Older versions of Ruby - 1.8.x and older - required you to set default values for parameters 
# starting with the last parameter in list and moving backward toward the first
# (as in Python) )

# -- Arraying your argument

# The list of parameters passed to an object is, in fact, available as a list. 
# To do this, we use what is called the splat operator - which is just an asterisk (*).

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)


def add(a_number, another_number, yet_another_number)
    a_number + another_number + yet_another_number
  end
  
numbers_to_add = [1, 2, 3] 
puts add(*numbers_to_add) 

def add(*numbers)
    numbers.inject(0) { |sum, number| sum + number }
  end
  
def add_with_message(message, *numbers)
"#{message} : #{add(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)

# Create a method called introduction that accepts a person's age, gender and any number of names, 
# then returns a String that introduces that person by combining all of these values 
# to create a message acceptable to the tests.


# -- Naming parameters

def add(a_number, another_number, options = {})
    sum = a_number + another_number
    sum = sum.abs if options[:absolute]
    sum = sum.round(options[:precision]) if options[:round]
    sum
  end
  
  puts add(1.0134, -5.568)
  puts add(1.0134, -5.568, absolute: true)
  puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)


# example

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }  
end

def subtract(*numbers)
  current_result = numbers.shift
  numbers.inject(current_result) { |current_result, number| current_result - number }  
end

def calculate(*arguments)
  # if the last argument is a Hash, extract it 
  # otherwise create an empty Hash
  options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
