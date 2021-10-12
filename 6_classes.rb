# -- CLASEES -- #

# in Ruby, everything is an object

# One may look up the class of any object by simply calling the class method on it

puts 1.class
puts "".class
puts [].class

# ask whether an object is_a? particular class

puts 1.is_a?(Integer)
puts 1.is_a?(String)

# classes are also classes (ah, damn, recursion again)

p 1.class.class

# In Ruby, like other class-based object oriented languages that you may already be familiar with, 
# classes act as the factories that build objects. 
# An object built by a certain class is called 'an instance of that class.' 
# Typically, calling the new method on a class results in an instance being created.

# -- BUILDING YOUR OWN CLASS -- #

class Rectangle
end

# State and behavior

class Rectangle
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def perimeter
      2 * (@length + @breadth)
    end
  
    def area
      @length * @breadth
    end
end


