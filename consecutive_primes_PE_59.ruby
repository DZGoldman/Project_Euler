require_relative 'prime_factor_PE3'

def consec_prime limit

  primes=[2]
  partial_sums=[]

  winner=0
  sum=2
  num=3
  until sum>limit

    if is_prime num
      partial_sums.push(sum)
      primes.push(num)
      sum= partial_sums[-1] +num

    end
    num+=2

  end
    partial_sums = partial_sums.reverse
  until winner>partial_sums[0]

    partial_sums.each do |number|
      if is_prime number
        winner=number if number>winner
        shifter=primes.shift
        partial_sums=partial_sums.map{|x| x=x-shifter }
        break
      end
    end

  end
  winner
end


binding.pry
