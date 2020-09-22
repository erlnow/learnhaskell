{-
  file: ch04/Safetail.hs

  This is NOT a Haskell Module.
-}

-- 3. Consider  a function safetail :: [a] -> [a] that behaves in the same way
-- as tail except that it maps the empty list to itself rather than producing an
-- error. Using tail and the function null :: [a] -> Bool that decides if a
-- list is empty or not, define safetail using:

-- a. a conditional expression
safetail :: [a] -> [a]
safetail xs = if null xs
                 then []
                 else tail xs

-- b. guarded equations
safetail' :: [a] -> [a]
safetail' xs
  | null xs   = []
  | otherwise = tail xs

-- c. pattern matching
safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs
