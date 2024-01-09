require 'pry'

class Point
  attr_reader :x, :y
  
  def initialize(x,y)
    @x, @y = x, y
    if defined?(@@number_of_points)
      @@number_of_points += 1
    else
      @@number_of_points = 1
    end
  end
  
  #metodos de instancia
  def *(value)
    Point.new(@x * value, @y * value)
  end
  
  def -@
    Point.new(-@x, -@y)
  end
  
  # TIPO de un objeto 3
  def +(other)
    Point.new(@x + other.x, @y + other.y)
    rescue
      raise TypeError, 
        "suma de Point con argumentos que no hacen QUACK como un Point" 
  end
  
  def to_s #invalidando 
    "( #{@x}, #{@y} )"
  end
  
  #metodo de clase
  def self.count
    @@number_of_points
  end
  
  #constante
  ORIGIN = Point.new(0,0)
end

a=Point.new(1,2)

puts a + a
puts a + 7