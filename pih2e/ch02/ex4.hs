{-
  file: ch02/ex4.hs

  This file is not a Haskell module.

  4. The library function last selects the last element of non-empty list; for
  example, `last [1,2,3,4,5] = 5`. Show how the function could be defined in
  terms of other library functions introduced in this chapter. Can you think of
  another possible definition?
-}

myLast [] = error "myLast: empty list"
myLast xs = head (reverse xs)

-- other definitioin
myLast' [] = error "myLast': empty list"
myLast' xs = xs !! (length xs - 1)
