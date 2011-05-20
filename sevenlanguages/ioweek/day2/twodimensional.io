TwoDimensionalList := Object clone do(
  dim := method(x, y,
    row := List clone
    row setSize(x)
    self array := List clone
    y repeat(array append(row clone))
  )

  set := method(x, y, value,
    array at(y) atPut(x, value)
  )

  get := method(x, y,
    array at(y) at(x)
  )
)


matrix := TwoDimensionalList clone
matrix dim(2, 3)
matrix println
matrix set(1,1,1)
matrix println
matrix get(1,1) println
matrix set(0,2,5)
matrix get(0,2) println
matrix println