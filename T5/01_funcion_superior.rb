def impares_cien
    (1..100).select {|number| number % 2 == 1}
end

print("Numeros impares:", impares_cien) # Para comprobar