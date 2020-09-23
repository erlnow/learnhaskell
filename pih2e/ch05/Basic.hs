{-
  file: pih2e/ch05/Basic.hs

  This file is not a Haskell module.
-}

import Prelude hiding (concat, length)

-- List comprehension: Generators

concat :: [[a]] -> [a]
concat xss = [ x | xs <- xss, x <- xs]

firsts :: [(a,b)] -> [a]
firsts ps = [x | (x,_) <- ps]

length :: [a] -> Int
length xs = sum [1 | _ <- xs]
