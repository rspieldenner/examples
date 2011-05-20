Number divide := Number getSlot("/")
Number / := method(denominator,
  if(denominator == 0, 0, self divide(denominator))
)

"4 / 2 = " print
4 / 2 println

"2 / 0 = " print
2 / 0 println
