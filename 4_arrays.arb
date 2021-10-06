# -- ARRAY BASICS -- #

array = [1, 2, 3, 4, 5]

# extract last element of array

puts array[-1]

# extract n-1 element

puts array[-2]

# add new element to the end of array

array << "new_element"

puts array

# another way - method push() // like in JavaScript

array.push("push_element")

puts array

# -- BASIC ARRAY OPERATIONS -- #

# transform array with method .map{} or .collect {}

array = [1, 2, 3, 4, 5]

puts array.collect { |i| i * 3 }

# filtering elements

puts [1,2,3,4,5,6].select {|number| number % 2 == 0} # <-- even elements are selected

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']

puts names.select {|word| word.length > 5} # <-- strings that are longer than five characters are selected

# deleting elements by their value

array.delete(5) # <-- delete element by it's value

# deleting elements by conditions

array = [1,2,3,4,5,6,7,8,9]

array.delete_if{|i| i % 2 == 0} # <-- delete even elements

# iterations

# Copy the values less than 4 in the array stored in the source variable into the array in the destination variable

def array_copy(source)
    destination = []
    for i in source
        if i < 4 then
            detination.push(i)
        end
    end
    return destination
end

# but i'd prefer to do it in another way

def array_copy(source)
    return source.select {|i| i < 4}
end

# .each method

array = [1, 2, 3, 4, 5]
array.each do |i|
  puts i
end

# copy the values less than 4 in the array stored in the source variable to the array in the destination variable

def array_copy(source)
    destination = []
    source.each do |i|
        if i < 4 then 
            destination << i
        end
    end
    return destination
end