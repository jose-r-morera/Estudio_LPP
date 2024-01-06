# https://speakerdeck.com/pat_shaughnessy/functional-programming-and-ruby
#
# Funciones de orden superior - high order functions
#
# programación funcional: [1..10]
a = (1..10).to_a
p a

# programación funcional: list comprenhension
# [x*x | x <- [1..10]]

b = (1..10).map {|x| x*x}
p b 

c = (1..10).collect{ |x| x*x }
p c

# programación funcional: lazy evaluation
# take 10
#   [x+1 | x <-
#      [x*x | x <- [1..]]]
d = (1..Float::INFINITY).lazy.collect{|x| x*x}.collect{|x| x+1}.take(10).force
p d
