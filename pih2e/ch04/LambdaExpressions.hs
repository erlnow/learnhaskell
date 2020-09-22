{-
  file: ch04/LambdaExpressions.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding (add, const)

-- Lambda Expressions:
-- (\x -> x + x) 2
-- 4

-- This definition of `add` function, formalises the meaning
-- of curried functions
add :: Int -> (Int -> Int)
add = \x -> (\y -> x + y)

const :: a -> (b -> a)
const x = \_ -> x

odds :: Int -> [Int]
odds n = map (\x -> x*2 + 1) [0..n-1]
