#solved
require 'pry'
#of the numbers from 1 to n, find the one with the longest collatz loop

start=Time.now
#direct, inefficient method:

#14.88 seconds for 1000000
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

def slow_collatz num
  max_count=1
  winning_num=1

  array=(1..num).to_a

  until array.length==0
    x=array.shift

    start=x
    counter=1
    until x==1
      x.even? ? x/=2 : x=3*x+1

      array.each_with_index do |num, index|
        break if x>array.last
        if num==x
          array.delete_at(index)
          break
        end
        if num>x
          break
        end

      end

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
duration= Time.now-start
binding.pry
