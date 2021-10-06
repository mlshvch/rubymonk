# sort string ascending by words length 

def sort_string(string)
    result = []
    words = []
    string.split.each do |word|
        words << [word, word.length]
    end

    for index_j in 1..words.length-1 do 
        key = words[index_j]
        index_i = index_j - 1
        while index_i > 0 and words[index_i][1] > key[1] do
            words[index_i + 1] = words[index_i]
            index_i -= 1
        end
        words[index_i + 1] = key
    end


    words.each do |word|
        result << word[0]
    end 

    pp result.join(' ')
end

# Select random elements from an array

def random_select(array, n)
    result = []
    for i in 1..n do
        result << array[rand(array.length-1)]
    end
      return result
end
  
# Hiring Programmers - Boolean Expressions in Ruby

# is_an_experienced_ruby_programmer =
#   (candidate.languages_worked_with.include? 'Ruby') &&
#   (candidate.years_of_experience >= 2 || candidate.github_points >= 500) &&
#   ! (candidate.age < 15 || candidate.applied_recently?)

# Palindromes

def func(sentence)
    sentence = sentence.split().join
    n = sentence.length 
    mid = n / 2
    for i in 0..mid do
        if ! sentence[i] == sentence[n - i] then
            return false
        end
    end
    return true
end

pp func("Never odd or even")




