#solved
require 'pry'
def pal_prod
@max=1;
(100..999).each do |num1|
  (100..999).each do |num2|
    @prod=num1*num2
    if @prod.to_s.reverse==@prod.to_s
      if @prod.to_i>@max
        @max=@prod
      end

    end
  end
end
 @max
end


binding.pry
