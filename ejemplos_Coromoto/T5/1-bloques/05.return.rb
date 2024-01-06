# A block may also return a value to the method
class Array
  def find   #bloque {|v| v*v > 30}
    for i in 0...size
      value = self[i]
      return value if yield(value) #invoca al bloque {|value| value*value > 30}
    end
    return nil
  end
end

p [1,3,5,7,9].find{|v| v*v > 30}
