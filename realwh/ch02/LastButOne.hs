{-
  file: ch02/LastButOne.hs

  This file isn't a Haskell module.
-}

-- Exercise 2: Write a function, `lastButOne, that returns the element before the last
lastButOne :: [a] -> a
lastButOne xs = if null xs || length xs == 1
                   then error "Not enough elements"
                   else head ( tail (reverse xs) )

-- Whith this definition
-- >>> lastButOne []
-- *** Exception: Not enough elements
-- >>> lastButOne [1]
-- *** Exception: Not enough elements
-- >>> lastButOne [1,2]
-- 1
-- >>> lastButOne [1,2,3]
-- 2
-- lastButOne xs = head (tail (reverse xs))
--
-- With this definition:
-- >>> lastButOne []
-- *** Exception: Prelude.tail: empty list
-- >>> lastButOne [1]
-- *** Exception: Prelude.head: empty list
-- >>> lastButOne [1,2]
-- 1
-- >>> lastButOne [1,2,3]
-- 2
