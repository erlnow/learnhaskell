{-
  file: ch01/Seqn.hs

  This file isn't a Haskell module. You must load it inside `ghci`.
-}

seqn []         = return []
seqn (act:acts) = do x  <- acts
                     xs <- seqn acts
                     return (x:xs)
