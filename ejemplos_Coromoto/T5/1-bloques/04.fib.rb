require 'benchmark'
include Benchmark


#paso de parametros a un bloque

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1       #{|i1| print i1, " "}
    i1, i2 = i2, i1+i2
  end
end

#fib_up_to(1000) {|f| print f, " "}


def fib_recursivo(n)
  return n if n < 2
  fib_recursivo(n-1) + fib_recursivo(n-2)
end

#puts (1..5).map { |i| fib_recursivo(i)}


@cache = [0,1]


def fib_memoization(n)
   return @cache[n] if @cache[n] 
   @cache[n] = fib_memoization(n-1) + fib_memoization(n-2)
end


#puts (1..5).memoization { |i| fib_memoization(i)}




Benchmark.benchmark(CAPTION, 7, FORMAT, ">total:", ">avg:") do |x|
  tf = x.report("recursivo")   { (1..30).map{ |i| fib_recursivo(i)}  }
  tf = x.report("memoizado")   { (1..30).map{ |i| fib_memoization(i)}  }
end




