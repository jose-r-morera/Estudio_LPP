def palabras(text)
  text.downcase.scan(/[\w]+/)
end

def freq(l)
  counts = Hash.new(0)
  for w in l
    counts[w] += 1
  end
  counts
end

f = "to be or not to be, that is the question"
p = palabras(f)
c = freq(p)
sc = c.sort_by {|word, count| count} 
t5 = sc.last(5)
puts t5

puts "====="

for i in 0...5
  puts "#{t5[i][0]}: #{t5[i][1]}"
end

puts "====="

t5.each{ |word, count| puts "#{word}: #{count}"}

puts "====="

puts t5.collect{|word, count| "#{word}: #{count}"}
