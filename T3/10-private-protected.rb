
class MiClase
    def initialize
    end

    def privado
        puts "Soy secreto"
    end

    def protegido
        puts "Estoy protegido\n\n"
    end

    private :privado
    protected :protegido
end
a = MiClase.new

class MiClaseHija < MiClase
    def initialize
        self.privado
        self.protegido
    end

    def testea_protegido(otro)
        otro.protegido
    end

    def testea_privado(otro)
        otro.privado
    end
end

b = MiClaseHija.new
b.testea_protegido(a)
b.testea_privado(a)