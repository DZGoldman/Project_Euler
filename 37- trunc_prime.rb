require_relative '10001_prime_PE_7.rb'
require 'pry'
prime_index = 5
loop do
  current_prime = nth_prime prime_index

  current_prime.to_s.split('').each do |digit|
    if digit.to_i.even?
      return
    end
  end

  
end

binding.pry
