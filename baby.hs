{-
  baby.hs -- this is file not a Haskell module.

  You must use `:l baby` in `ghci`. 

  See `doc/03_session_example.md`.

-}

outputStr :: String
outputStr = "Hello Haskell"

--
-- Baby's first function, Ch 2. Starting Out!
doubleMe x = x + x

-- doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                         then x
                         else x * 2
doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"

boomBangs xs = [ if x < 10 then "Boom!" else "Bang!" | x <-xs, odd x]

length' xs = sum [1 | _ <- xs]

removeUpperCase st = [c | c <-st, c `elem` ['A' .. 'Z']]
