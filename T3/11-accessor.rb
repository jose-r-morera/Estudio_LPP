
class MiClase
    def initialize(param)
        @valor = param
    end

    private 
    attr_accessor :valor
end
a = MiClase.new(5)

class MiClase2
    attr_accessor :valor

    def initialize(param)
        @valor = param
    end

    private :valor 
end

b = MiClase2.new(7)

# puts a.valor
puts b.valor= 5 # Solo pusimos como privado el reader, no el setter