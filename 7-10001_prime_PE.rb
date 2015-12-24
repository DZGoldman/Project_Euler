require 'pry'
#solved
require_relative 'prime_factor_PE3.rb'

def nth_prime n
  prime_array=[2];
  number=3;
  until prime_array.length==n
    prime_array.push number if is_prime number
    number+=2
  end
  prime_array[-1]
end


binding.pry
