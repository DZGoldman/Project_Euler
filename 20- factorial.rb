require 'pry'
product = 1
for i in 1..100
  product*=i
end
array = product.to_s.split('')

solution = 0
array.each do |str|
  solution+=str.to_i
end

binding.pry
