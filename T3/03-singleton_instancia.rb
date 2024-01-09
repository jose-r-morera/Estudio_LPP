a = String.new()

def a.metodo_singleton
    puts "Soy singleton"
end
a.metodo_singleton

puts a.class # Sigue siendo String
# puts a.superclass # No se puede acceder

class << a
    puts "b"
    def metodo_singleton
        puts "hi"
    end
end

a.metodo_singleton