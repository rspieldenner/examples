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
  
  transpose := method(
    ydim := array size
    xdim := array at(0) size
    other := TwoDimensionalList clone
    other dim(ydim, xdim)
    other display
    for(x, 0, xdim - 1,
      for(y, 0, ydim - 1,
        other set(y,x,self get(x,y))
      )
    )
    return other
  )
  
  display := method(
    array foreach(row, row join(" ") println)
    "" println
  )
)


matrix := TwoDimensionalList clone
matrix dim(2, 3)
matrix display
matrix set(0,0,0)
matrix set(1,0,1)
matrix set(0,1,2)
matrix set(1,1,3)
matrix set(0,2,4)
matrix set(1,2,5)
matrix display

new_matrix := matrix transpose
new_matrix display

if(new_matrix get(0,1) == matrix get(1,0), "worked" println, "didn't work" println)