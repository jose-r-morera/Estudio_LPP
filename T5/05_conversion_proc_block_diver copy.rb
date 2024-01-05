a = Proc.new {|number| number % 2 == 1}
result = (1..100).select &a # Usando el '&' el proc se convierte en un bloque

print("Resultado:", result)