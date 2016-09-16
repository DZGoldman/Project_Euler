require 'pry'
# projecteuler.net/problem=206
# need a 10 digit number that, when squared, gives a 19 digit number.
# 19 dig. ends in 0 so 10 dig ends in 0.
# Thus, need a 9 digit number that when squared gives 17
# 9th digit is 3

# psuedo: starting at 10000000 (8 digits), test all numbers *10 +3 and see if concealed is true.
# if so, answer is that *10
def concealed number
  num_string = number.to_s
  for n in 0..8
    n = n*2
    if num_string[n] != ((n+2)/2).to_s
      return false
    end
  end
  true
end

#

for i in 10000000..100000000
  number = (i*10 +7)**2

  if number.to_s[0]!='1'
    puts 'the numbers passed up 1'
    break
  end

  if number.to_s.length>17
    puts 'the numbers too many digits'
    break
  end

  if i%1000000==0
    puts i
    puts number
  end

  if concealed number
    print "the answer is #{(i*10+7)*10 }"
    break
  end




end

binding.pry
