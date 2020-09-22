{-
  file: ch04/NestedIf.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding ((&&))

-- 5. Without using any other library functions or oprators shows how the
-- meaning of the following pattern matching definition for logical conjunction
-- && can be formalided usin conditional expressions:
--   True && True = True
--   _    && _    = False
--
-- Hint: use two nested conditional expresion
(&&) :: Bool -> Bool -> Bool
a && b = if a
            then if b
                    then True
                    else False
            else False
