#   in Ruby everything is an object and have methods
#   method "methods"  return all object's methods

2.methods

#   for sort use method "sort"

2.methods.sort

#   use the between? method to determine if the number 2 lies between the numbers 1 and 3

2.between?(1, 3)

#   there are several funny moments about ruby: 
#   you can use math operations as methods

2.+(2)
2.-(2)

#   There are several other method names that have this special status - 
#   here's a quick summary of the ones you're most likely to run into.

#   +   -   *   /   =   ==    !=    >   <   >=    <=    []

#   []  - array

words = ["one", "two", "three"]

words[1]

#   another funny moment

puts words.[](0) # is equal to words[0] :D


