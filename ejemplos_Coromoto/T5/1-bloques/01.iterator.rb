# el bloque que va como parámetro, se define implícitamente
def three_times  
  yield #{puts "Hello"}
  yield #{puts "Hello"}
  yield #{puts "Hello"}
end
three_times {puts "Hello"}
three_times  

# error porque no se esta definiendo un bloque
