class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c   
  end

  def kind
    triangel? 
    if @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @b == @c || @a == @c
      :isosceles
    else
      :scalene
    end
  end

  def triangel? 
    triangle = [(@a + @b > @c),(@c + @b > @a),(@c + @a > @b)]
    [@a, @b, @c].each do |side|
      if side <= 0 
        triangle << false
      end
    end
    raise TriangleError if triangle.include?(false)
  end

  class TriangleError < StandardError
    def message
    end
  end

end
