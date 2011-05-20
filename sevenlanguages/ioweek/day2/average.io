List myAverage := method(
  total := 0
  count := 0
  self flatten foreach(i,
    if(i type Number, i type println; total = total + i; count = count + 1, Exception raise("Non number"))
  )
  if(count > 0, total / count, 0)
)

list(2,4) myAverage println
list() myAverage println
e := try(list("string", "nope") myAverage println)
e catch(Exception, e println)
list(1,2,3) myAverage println
e := try(list(1,3,"string") myAverage println)
e catch("blarg" println)
