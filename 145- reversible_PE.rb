# Some positive integers n have the property that the sum [ n + reverse(n) ] consists entirely of odd (decimal) digits. For instance, 36 + 63 = 99 and 409 + 904 = 1313. We will call such numbers reversible; so 36, 63, 409, and 904 are reversible. Leading zeroes are not allowed in either n or reverse(n).
#
# There are 120 reversible numbers below one-thousand.
#
# How many reversible numbers are there below one-billion (109)?


#this currently takes too long
require 'pry'

def is_reversible num
  num_array=num.to_s.split('')
  first_digit=num_array[0].to_i
  last_digit= num_array[-1].to_i

  if (first_digit==0 || last_digit==0) || (first_digit.even? && last_digit.even?) || (first_digit.odd? && last_digit.odd?)
    return false
  end


  sum= num + num_array.reverse.join.to_i
  sum_array=sum.to_s.split('')

  sum_array.each do |digit|
    if digit.to_i.even?
      return false
    end
  end
  true

  #or...
  # sum_array_ints=sum_array.map{|num| num.to_i}
  # sum_array_ints.reduce(:*).odd?
end
start=Time.now
def reversible_sum limit
  counter=0
  reversible_array=[]
  (1..limit).each do |num|
    if is_reversible num
      counter+=1
  #    reversible_array.push(num)
    end
  end
  p counter
  #p reversible_array
end
 reversible_sum 100000
p duration=Time.now-start


binding.pry
