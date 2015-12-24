#solved

require 'pry'
start=Time.now

@is_prime=  def is_prime num
  return false if num<=0 || num==1
    (2..Math.sqrt(num).floor).each do |number|
    return false  if num%number==0
    end
    true
  end


#takes 6.42 seconds
def prime_sum limit
  #find biggest prime less than limit
  current_num=limit
  until is_prime current_num
    current_num-=1
  end
  max_prime=current_num

    #get array of primes less than sqrt of the max_prime
  mini_prime_array=[2]
  current_num=3
  upper_limit= Math.sqrt(max_prime).floor

  until current_num> upper_limit
    mini_prime_array.push(current_num) if is_prime current_num
    current_num+=2
  end

  #get all the other primes using that mini_prime_array
  full_prime_array=mini_prime_array
  current_num=mini_prime_array[-1]+2
    until current_num>max_prime
      upper_limit= Math.sqrt(current_num).floor

      #test each # in the prime array
      mini_prime_array.each do |num|
        break if current_num%num==0
        if num>upper_limit
          full_prime_array.push(current_num)
          break
        end
      end #end each
      current_num+=2
    end

full_prime_array.reduce(:+)

end

#puts better_prime_sum 2000000
#puts duration=Time.now - start

binding.pry

#SCRAPS
#takes about 20 seconds
def slow_prime_sum limit
  prime_array=[2];
  number=3;
  until number>limit
    prime_array.push number if is_prime number
    number+=2
  end
  prime_array.reduce(:+)
end

# #this is useless
# def alt_prime_sum limit
#   prime_sum=2;
#   number=3;
#   until number>limit
#     prime_sum+=number if is_prime number
#     number+=2
#   end
#   prime_sum
# end
