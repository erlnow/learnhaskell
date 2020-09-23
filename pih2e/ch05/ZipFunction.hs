{-
  file: pih2e/ch05/ZipFunction.hs

  This file is not a Haskell module.
-}

-- The zip function

pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)

sorted :: Ord a => [a] -> Bool
sorted xs = and [ x <= y | (x,y) <- pairs xs]

positions :: Eq a => a -> [a] -> [Int]
positions x xs = [ i | (x',i) <- zip xs [0..], x == x']
