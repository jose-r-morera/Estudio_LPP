
class A
    class << self
        def hola
            puts "Hola"
        end
    end

    class << A
        def hola
            puts "HOLA2"
        end
    end
end

A.hola

class << A
    def hola 
        puts "hola3"
    end
end

A.hola

a=A.new

class << a
    def adios
        puts "Adios eigen"
    end
end
a.adios