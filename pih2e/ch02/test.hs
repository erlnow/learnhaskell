{-
  file: ch02/test.hs

  This file is not a Haskell module.
-}

{-
double x = x + x

quadruple x = double (double x)
-}

-- Factorial of a positive integer:
factorial n = product [1..n]

-- Average of a list of integers:
average ns = sum ns `div` length ns
