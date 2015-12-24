# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
require 'pry'

def trip
  (1..998).each do |a|
    (1..998).each do |b|

      next if a+b>1000
      c=1000-a-b
      return [a,b,c] if (a*a + b*b) == c*c
    end
  end

end


binding.pry
