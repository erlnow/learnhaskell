{-
  file: ch04/Guards.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding (abs, signum)

abs :: Int -> Int
abs n | n >= 0     =  n
      | otherwise  = -n

signum :: Int -> Int
signum n | n < 0     = -1
         | n == 0    =  0
         | otherwise =  1
