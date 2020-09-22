{-
  file: ch04/NewFromOld.hs

  This file is not a Haskell module
-}

import Prelude hiding ( even
                      , split
                      , recip
                      )

-- Library functions definitions by combining
-- one or more exising functions.

even :: Integral a => a -> Bool
even n = n `mod` 2 == 0

splitAt :: Int -> [a] -> ([a], [a])
splitAt n xs = (take n xs, drop n xs)

recip :: Fractional a => a -> a
recip n = 1/n
