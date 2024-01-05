a = Proc.new {|x| print(x)}
b = lambda {|x| print(x)}
a.call("hola\n")
b.call("adios\n")
a.call
b.call