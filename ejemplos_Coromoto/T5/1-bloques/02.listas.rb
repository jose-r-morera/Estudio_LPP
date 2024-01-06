#Long loops way
n_l = (1..8).to_a #[1,2,3,4,5,6,7,8]

s = []
i = 1
while i <= n_l.size
  if i > 5
    s << i * 100
  end
  i += 1
end
p s

number_list = (1..8).to_a
solution = []
for n in number_list
  if n > 5
    solution << n * 100
  end
end
p solution

#Long explicit way
result = []
(1..8).each do |n|
  if n > 5
    result << n * 100
  end
end
p result

#Concise way
p [1,2,3,4,5,6,7,8].select{|n| n > 5}.collect{|n| n*100}

p [1,2,3,4,5,6,7,8].select{|n| n > 5}.collect{|n| n+1}.delete_if{|n| n % 2 == 0}



