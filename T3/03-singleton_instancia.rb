a = String.new()

def a.metodo_singleton
    puts "Soy singleton"
end
a.metodo_singleton

puts a.class # Sigue siendo String
# puts a.superclass # No se puede acceder
puts a.method(:metodo_singleton).owner # Eigenclass
puts a.method(:metodo_singleton).owner.superclass # String
puts a.method(:metodo_singleton).owner.class      # Class

puts a.method(:+).owner # class --> String
