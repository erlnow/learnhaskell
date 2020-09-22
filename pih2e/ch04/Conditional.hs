{-
  file: ch04/Conditional.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding (abs, signum)

abs :: Int -> Int
abs n = if n >= 0 then n else -n

signum :: Int -> Int
signum n = if n < 0 then -1
                    else if n == 0 then 0
                    else 1
