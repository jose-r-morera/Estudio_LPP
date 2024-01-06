a = Proc.new &(Proc.new {|number| number % 2 == 1}) # De dentro a fuera: se convierte un bloque en proc, y luego con & se
                                                    # convierte el Proc en un bloque, que se pasa como argumento al último Proc
                                                    
result = (1..100).select &a # Usando el '&' el proc se convierte en un bloque

print("Resultado:", result)