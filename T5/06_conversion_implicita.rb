def pass_in_block(&action)
    action.call(5)
end

print(pass_in_block{|x| x}, "\n")     # 5
print(pass_in_block{|x| x*x}, "\n")   # 25