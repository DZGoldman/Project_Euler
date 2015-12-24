#solved
require "pry"


def fibonacci num
  #start with array [0,1]
  fib_array=[0,1]
  loop do
    #stop when the array is the size of your input
    if fib_array.length==num
    return fib_array
    end
    #for each time around, add the last 2 numbers and make that the next element
  fib_array.push(fib_array[-1] + fib_array[-2])
  end
end



 def evens num
   #grab all the even numbers
    even_fibs=  fibonacci(num).select do |num|
       num.even?
    end
    #and add em up
    even_fibs.reduce(:+)
 end

binding.pry

def fib_rec num
    if num==0
      return [0]
    end
    if num==1
      return[0,1]
    end
end
