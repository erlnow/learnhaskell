{-
  file: ch03/FunctionType.hs

  This file is not a Haskell Module
-}

add :: (Int,Int) -> Int
add (x,y) = x+y

zeroto :: Int -> [Int]
zeroto n = [0..n]

-- Curried Functions

add' :: Int -> Int -> Int
add' x y = x + y

mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z

-- Using a partial aplication of a curried function
inc :: Int -> Int
inc = add' 1
