{-
  file: ch01/Sum.hs

  This file isn't a Haskell module. You must load it inside `ghci`.
  Execise 3
-}

import Prelude hiding (product)

product [] = 1
product (n:ns) = n * product(ns)
