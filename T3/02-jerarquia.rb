puts BasicObject.class
puts Object.class
puts Module.class
puts Class.class

puts "Superclases (Padres)"
puts BasicObject.superclass
puts Object.superclass
puts Module.superclass
puts Class.superclass

class MiClase
    def initialize
        puts "Inicializa"
    end
end

a = MiClase.new
puts a.class
# puts a.superclass # Error, no definido para instancias

puts MiClase.method('new').owner