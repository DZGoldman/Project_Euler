require 'pry'
#of the numbers from 1 to n, find the one with the longest collatz loop


#direct, inefficient method:
def collatz num
  max_count=1
  winning_num=1

  (1..num).each do |x|

    start=x
    counter=1

    until x==1
      x.even? ? x/=2 : x=3*x+1
      counter+=1
    end

    if counter>max_count
        max_count=counter
        winning_num=start
    end
  end
  "#{winning_num} has a loop of size #{max_count}"
end

#this worked, but can be made much more efficient

binding.pry
