{-
  file: ch04/LunhAlg.hs

  This is NOT a Haskell Module.
-}

-- 8. The Lunh algorithm is used to  check bank card numbers for simple errors
-- such mistypin a digit, and proceeds as follows:
 
-- * consider each digit as a separate number
-- * moving left double each other number from the second last
-- * substract 9 from each number that is now greate than 9
-- * add all resluting numbers together if the total is divisible by 10, the
--   card is valid

-- Define a function luhnDouble :: Int -> Int that doubles a digit and substract
-- 9 if the result is greater tahn 9. For example:
--
-- > luhnDouble 3
-- 6
-- > luhnDouble 6
-- 3
luhnDouble :: Int -> Int
luhnDouble n = if double > 9 then double - 9          -- = (2 * n) `mod` 9
                             else double
                               where double = 2 * n

-- Using luhnDouble and the ingeger remmainder function mod, define a function
-- luhn :: Int -> Int -> Int -> Bool that decides if a four-digit bank card number
-- is valid. For example:

-- > luhn 1 7 8 4
-- True
-- > luhn 4 7 8 3
-- False
luhn :: Int -> Int -> Int -> Int -> Bool
luhn n1 n2 n3 n4 = total `mod` 10 == 0
  where total = n4 + luhnDouble n3 + n2 + luhnDouble n1

-- In the exercise 7 we will consider a more general version of this
-- function that accept card numbers of any length.
