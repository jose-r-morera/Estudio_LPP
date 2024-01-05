def fib(n)
  n < 2 ? n : fib(n-1) + fib(n-2)
end  

result = 0
mutex = Mutex.new
resource = ConditionVariable.new

a = Thread.new do 
   mutex.synchronize do 
     fib(30) 
     # Thread 'a' now needs the resource
     puts "Thread 'a' now needs the resource"
     if result == 0      # Si hubiera más hilos receptores debería ser un while (si ya se lo han quitado, espera)
      resource.wait(mutex)
     end
     # 'a' can now have the resource
     puts "'a' can now have the resource"
   end 
end

b = Thread.new do
   mutex.synchronize do
     # Thread 'b' has finished using the resource
     puts "Thread 'b' has finished using the resource"
     result = 1
     resource.signal
   end
end

a.join
b.join

# https://workingwithruby.com/wwrt/condvars/