require_relative 'prime_factor_PE3.rb'
#takes about 20 seconds


def prime_sum limit
  prime_array=[2];
  number=3;
  until number>limit
    prime_array.push number if is_prime number
    number+=2
  end
  prime_array.reduce(:+)
end

binding.pry
