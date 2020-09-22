{-
  file: ch04/Disjunction.hs

  This is NOT a Haskell Module.
-}

import Prelude hiding ((||))

-- 4. In a similar way to && in section 4.4, show how the disjunction ||
-- can be defined in four differents ways using pattern matching.

(||) :: Bool -> Bool -> Bool
-- 1.
-- True  || True  = True
-- True  || False = True
-- False || True  = True
-- False || False = False
--
-- 2.
-- False || False = False
-- _     || _     = True
--
-- 3.
-- False || b = b
-- True  || _ = True
--
-- 4.
a || b
  | a == b    = a
  | otherwise = True
