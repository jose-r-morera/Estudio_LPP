def pass_in_block(foo, &action) # El argumento que toma el valor del bloque debe ser el último de la lista, y estar precedido por '&' 
    action.call(5)
end

print(pass_in_block(3) {|x| x*x}, "\n")   # 25