a = lambda {|number| number % 2 == 1}
result = (1..100).select &a # Usando el '&' el lambda se convierte en un bloque
print("Resultado:", result)