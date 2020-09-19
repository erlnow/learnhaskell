{-
  file: ch01/Qsort.hs

  This file isn't a Haskell module. You must load it inside `ghci`.
-}

qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger  = [b | b <- xs, b > x]

-- Exercise 5, effect of replacing <= by <
-- Hint: consider the example of qsort' [2,2,3,1,1]
-- response: Duplicates vanished
qsort' []     = []
qsort' (x:xs) = qsort' smaller ++ [x] ++ qsort' larger
  where
    smaller = [a | a <- xs, a < x]
    larger  = [b | b <- xs, b > x]
