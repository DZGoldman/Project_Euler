require "pry"

@is_prime=  def is_prime num
  return false if num<=0 || num==1

    (2..Math.sqrt(num).floor).each do |number|

      if num%number==0
        return false
      end
    end
    true
  end

def largest_prime num
  currentNum=(num/2)
  loop do
    if num%currentNum==0
      if is_prime(currentNum)
        return currentNum
      end
    end
    currentNum-=1
  end
end





def largest_prime2 num
(2..num/2).each do |number|
  if num%number==0
    test_num=num/number
    if is_prime(test_num)
      return test_num
    end

  end
end
end
#find factors, strating w/ smallest, see if their pair is prime
#looks like 2 is more efficient

#binding.pry
