{-
  file: ch02/ex5.hs

  This file is not a Haskell module.

  5. The library function `init` removes the last element from a non-empty list;
  for example, `init [1,2,3,4,5] = [1,2,3,4]`. Show how init could similarly
  be defined in two differents ways.
-}

myInit [] = error "myInit: empty list"
myInit xs = reverse (drop 1 (reverse xs))

myInit' [] = error "myInit': empty list"
myInit' xs = take (length xs - 1) xs
