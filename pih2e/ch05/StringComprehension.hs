{-
  file: pih2e/ch05/StringComprehension.hs

  This file is not a Haskell module.
-}

-- String Comprehension

lowers :: String -> Int
lowers xs = length [x | x <-xs, x >= 'a' && x <= 'z']

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x' == x]
