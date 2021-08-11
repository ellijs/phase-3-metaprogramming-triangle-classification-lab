class Triangle
    attr_accessor :first, :second, :third

    def initialize (first, second, third)
      @first = first
      @second = second
      @third = third
    end

    def kind  
      if ((@first > 0 && @second > 0 && @third > 0) && 
      (
      @first + @second > @third && 
      @first + @third > @second && 
      @second + @third > @first
      )) 
        if ( @first == @second && @second == @third )
          :equilateral
        elsif ( @first == @second || @first == @third || @second == third )
          :isosceles 
        else
          :scalene 
        end
      else
        begin 
          raise TriangleError
        end
      end
    end

    class TriangleError < StandardError 
    end
end
