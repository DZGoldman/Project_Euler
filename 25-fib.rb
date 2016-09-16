require 'pry'
@array=[1,1]
def fib_check limit
  @array.push(@array[-1]+@array[-2])
  return @array.length if @array[-1].to_s.length==limit
  fib_check limit
end

binding.pry
