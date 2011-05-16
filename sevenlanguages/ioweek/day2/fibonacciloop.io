fib := method(number,
  if(number < 1,
    Exception raise("Fibonacci sequence starts at 1 and higher")
  )
  
  temp := 0
  last := 0
  result := 1
  for(i, 2, number,
    temp = result + last
    last = result
    result = temp
  )
  result
)

check := method(number,
  write("fib(", number, ") = ")
  fib(number) println
)

for(i, 1, 10, check(i))