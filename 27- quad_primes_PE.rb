#solved
require_relative 'prime_factor_PE3'
#n² + an + b
#https://projecteuler.net/problem=27

def quad_prime limit
  max=0
  max_a=0
  max_b=0
  (2...limit).each do |b|
    (-limit+1..limit).each do |a|
      if is_prime b

        n=0
        while is_prime( (n*n) + (a*n) +b   )
          n+=1
        end
        if n>max
          max=n
          max_a=a
          max_b=b
        end
      end
    end
  end
  max_a * max_b
end

binding.pry
