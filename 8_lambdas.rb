# -- LAMBDAS IN RUBY -- #

# -- Lambdas

l = lambda { "Do or do not" }
puts l.call


l = lambda do |string|
    if string == "try"
      return "There's no such thing" 
    else
      return "Do or do not."
    end
  end
  puts l.call("try") # Feel free to experiment with this


Increment = lambda {|number| number.next } # your lambda between the braces

# convention followed in Ruby is to use {} for single line lambdas 
# and do..end for lambdas that are longer than a single line.


# -- BLOCKS IN RUBY -- #

# Lambdas vs. Blocks

# Block as a consequence, significantly faster than a lambda, 
# but not as versatile and also one of the rare instances where Ruby's "everything is an object" rule is broken.

def demonstrate_block(number)
    yield(number)
  end


puts demonstrate_block(1) { |number| number + 1 }

def calculate(a, b)
    yield(a, b)
end
