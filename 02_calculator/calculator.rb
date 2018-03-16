#Function to add
def add(x,y)
    x+y
end

#Function to subtract
def subtract(x,y)
    x-y
end

#Function to sum up an array
def sum(arr)
    totl = 0
    arr.each { |x| totl += x }
    totl
end

#Function to multiply
def multiply(arr)
    prod = 1
    arr.each { |x| prod *= x }
    prod
end

#Function for exponent(power)
def power(x,y)
    x ** y
end

#Function for factorial
def factorial(x)
    if x == 0
        1
    else
        x * factorial(x-1)
    end
end
