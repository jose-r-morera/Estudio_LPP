a = (1..10).to_a
a.each {|value| puts value * 3}

b = (10..20).to_a
sum = 0
b.each do |value|
  sum += value
  puts sum
end

puts "====="

# s = 0
# [1,2,3,4].each do |value|
#   a = value * value
#   s += a
# end
# puts a

# parametros son locales al bloque
value = "out"
[1..2].each {|value| puts value}
puts value

puts "====="

# se pueden convertir en locales al bloque
s = 0
[1,2,3,4].each do |value; a|
  a = value * value
  s += a
end
p a
p s