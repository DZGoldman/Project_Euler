require 'pry'

def is_abundant n
  divisors=[1]
  square_root = Math.sqrt(n)
  candidates=[*2..square_root.floor]
  sum = 0
  sum = -square_root if square_root.floor==square_root
  for i in candidates
   sum+= i+(n/i) if n.modulo(i).zero?
   return true if sum>n
  end
  return false
end

abundant_nums = []
for i in (11..28123)
  abundant_nums.push(i) if is_abundant i
end


nums = [*1..28123]
sums = []
abundant_nums.each do |num1|
  abundant_nums.each do |num2|
    break if num2 > num1
    sum = num1+num2
    sums.push(sum) if sum < 28124
  end
end


solution = (nums-sums).reduce(:+)
binding.pry
