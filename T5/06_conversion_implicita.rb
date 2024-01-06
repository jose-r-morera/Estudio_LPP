def pass_in_block(&action)
    action.call(5)
end

# print(pass_in_block({|x| x}), "\n")     # Falla. El bloque NO es un argumento
print(pass_in_block{|x| x*x}, "\n")   # 25