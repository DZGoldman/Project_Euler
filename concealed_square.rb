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
  if num_string[0]!='1'
    return false
  elsif num_string[2]!='2'
    return false
  elsif num_string[4]!='3'
    return false
  elsif num_string[6]!='4'
    return false
  elsif num_string[8]!='5'
    return false
  elsif num_string[10]!='6'
    return false
  elsif num_string[12]!='7'
    return false
  elsif num_string[14]!='8'
    return false
  elsif num_string[16]=='9'
    return true
  end

end

for i in 10000000..100000000
  number = (i*10 +3)**2

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
    print "the answer is #{(i*10+3)*10 }"
    break
  end




end

binding.pry
