require 'pry'

@is_prime=  def is_prime num
  return false if num<=0 || num==1

    (2..Math.sqrt(num).floor).each do |number|

      if num%number==0
        return false
      end
    end
    true
  end

max = 0
for i in (4..9)

digits = [*1..i]
permutations = digits.permutation(i).to_a
permutations.each do |array|
current_num =array.join().to_i
  if current_num>max
    if is_prime current_num
      max = current_num
    end

  end
end

end


binding.pry
