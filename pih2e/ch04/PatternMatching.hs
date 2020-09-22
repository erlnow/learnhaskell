{-
  file: ch04/PatternMatching.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding (not
                      , (&&)
                      , fst , snd
                      , head, tail
                      )

not :: Bool -> Bool
not False = True
not True = False

(&&) :: Bool -> Bool -> Bool
-- True && True    = True
-- True && False   = False
-- False && True   = False
-- False && False  = False
-- other definition could be:
-- True && True = True
-- _ && _       = False
True  && b = b
False && _ = False

-- Tuple patterns

fst :: (a,b) -> a
fst (x,_) = x

snd :: (a,b) -> b
snd (_,y) = y

-- List patterns

test :: [Char] -> Bool
test ['a',_,_] = True
test _         = False

test' :: [Char] -> Bool
test' ('a':_) = True
test' _       = False

head :: [a] -> a
head (x:_) = x

tail :: [a] -> [a]
tail (_:xs) = xs
