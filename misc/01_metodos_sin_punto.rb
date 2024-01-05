class Ejemplo
    def initialize(valor)
        @n = valor
    end
    def +(otro)
        return 4
    end
end

a = Ejemplo.new(1)
b = Ejemplo.new(2)
p (a + b)