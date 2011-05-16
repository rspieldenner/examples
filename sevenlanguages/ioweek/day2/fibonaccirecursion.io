fib := method(number,
  if(number < 1,
    Exception raise("Fibonacci sequence starts at 1 and higher")
  )
    
  if(number == 1 or number == 2, return 1, return fib(number - 1) + fib(number - 2))
)

check := method(number,
  write("fib(", number, ") = ")
  fib(number) println
)

for(i, 1, 10, check(i))