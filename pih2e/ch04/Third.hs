{-
  file: ch04/Third.hs

  This is NOT a Haskell Module.
-}

-- 2. Define a function thier :: [a] -> a that returns the third element in a
-- list that contains at least this elements using:

-- a. head and tail
third :: [a] -> a
third xs
  | length xs < 3 = error "not enough elements"
  | otherwise     = head (tail (tail xs))

-- b. list indexing !!
third' :: [a] -> a
third' xs
  | length xs < 3 = error "not enougth elements"
  | otherwise     = xs !! 3

-- c. pattern matching
third'' :: [a] -> a
third'' (_:_:z:xs) = z
third'' xs         = error "not enougth elements"
