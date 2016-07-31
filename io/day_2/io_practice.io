# fib recursive solution
nthRec := method(num, if( num <= 2, 1, nthRec(num-1) + nthRec(num-2) ) )
nthRec(6) println

# fib iterative solution
nthIter := method(num,
  if( num <= 2, 1,
    num_1 := 1
    num_2 := 1
    sum := num_1 + num_2

    # counter var, start, end, step, do message
    for(i, 2, num - 2,
      num_1 = num_2
      num_2 = sum
      sum = num_1 + num_2
    )

    sum
  )
)

nthIter(6) println
