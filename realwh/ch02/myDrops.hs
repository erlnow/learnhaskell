{-
  file: ch02/myDrop.hs

  This file is not a module.
-}

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <=0 || null xs
                 then xs
                 else myDrop (n-1) (tail xs)
