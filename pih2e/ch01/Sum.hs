{-
  file: ch01/Sum.hs

  This file isn't a Haskell module. You must load it inside `ghci`.
-}

import Prelude hiding (sum)

-- Definig a function with two equations

sum []     = 0
sum (n:ns) = n + sum ns
