require 'pry'
sum = 0;
array = (2**1000).to_s.split('')

array.each do |str|
  sum+= str.to_i
end
sum


binding.pry
