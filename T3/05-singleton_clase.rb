class A
    class << self
        def hola
            puts "Hola"
        end
    end
end

puts A.class # En verdad es la eigen

puts A.method(:hola).owner            # clase singlenton  
puts A.method(:hola).owner.class      # clase de la clase singleton
# puts A.method(:hola).owner.super      # Super de la clase singleton --> NO TIENE

class B < A
    class << self
        def adios
            puts "ADIOS"
        end
    end
end

puts B.method(:adios).owner            # clase singlenton  
puts B.method(:adios).owner.class      # clase de la clase singleton
# puts B.method(:adios).owner.super      # Super de la clase singleton --> NO TIENE