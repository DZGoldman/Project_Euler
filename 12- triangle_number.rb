require 'pry'

def tri_num_tester
  tri_nums = [1];

  loop do
    tri_nums.push(tri_nums[-1] +tri_nums.length+1 )
    latest_element = tri_nums[-1]
    divisor_count = 2
    (2..Math.sqrt(latest_element).floor-1).each do |number|
      if latest_element.odd? && number.even?
        next
      end
      if latest_element%number == 0
        divisor_count+=2
        if divisor_count>500
          return latest_element
        end
      end
    end
  end


end
binding.pry
