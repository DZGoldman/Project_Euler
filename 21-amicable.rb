require 'pry'

def find_sum n
  divisors=[1]
  square_root = Math.sqrt(n)
  candidates=[*2..square_root.floor]

  for i in candidates
   divisors.push(i, n/i) if n.modulo(i).zero?
  end
  solution = divisors.reduce(:+)
  solution-= square_root if square_root==square_root.floor
  return solution.to_i
end


integer_array = [*4..10000]
amicable_numbers=[]

for i in integer_array
  sum = find_sum i
  next if i==sum
  sum_sum = find_sum sum

  if i==sum_sum
    amicable_numbers.push(i, sum)
    integer_array.delete(sum)
  end

end
solution amicable_numbers.reduce(:+)

binding.pry
