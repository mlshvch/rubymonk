# many things similar with python
# one interesting task
def except()
    array = ["Alex", "Eugene", "Nastasya", "Romero"]

    for i in array 
        if ! (i == "Alex") then
            puts i
        end
    end
end

# internal word unless (opposite to for)
def unls()
    age = 10
    unless age >= 18
        puts "Sorry, you need to be at least eighteen to drive a car. Grow up fast!"
    end
end

# ternary operation

def check_sign(number)
    number > 0 ? "#{number} is positive" : "#{number} is negative"
end


# loop do 
#     puts "this line will be executed for an infinite amount of time" 
# end


# add a loop inside this method to ring the bell 'n' times
def ring(bell, n)
    bell.ring
end   

# infinite loop

def inf_loop()
    loop do 
        puts "this line will be executed for an infinite amount of time" 
     end
end

# run N times
def n_times()
    5.times do
        puts "do the stuff that needs to be done"
    end
end

unls()
