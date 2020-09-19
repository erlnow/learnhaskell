{-
  file: ch01/Qsortr.hs

  This file isn't a Haskell module. You must load it inside `ghci`.
  Exercise 4
-}

qsort []     = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
  where
    smaller = [a | a <- xs, a <= x]
    larger  = [b | b <- xs, b > x]

