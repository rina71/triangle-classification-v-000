require "pry"
class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def valid?
    @a && @b && @c > 0
  end

  def kind
  if valid?
    if a == b && b == c
      return :equilateral
    elsif a == b || b == c || a == c
      return :isosceles
    else
      return :scalene
    end
  elsif  valid? == false && (@a + @b > @c || @a + @c > @b || @b + @c > @a) == false
    raise TriangleError
    end
  end
end

  class TriangleError < StandardError
    "you are wrong"
  end
