## Learning session example

As recommend the author of *Learn You a Haskell for Greet Good!* for learning
Haskell you need a editor and a Haskell compiler.

My choice for the editor is `nvim`. For the compiler I use GHC. Stack install a
version of GHC compatible with the libraries, modules, and so needed by my
project and other tools. The compiler, the libraries and tools are locals to
the project and doesn't interfered with compiler, libraries and tools installed
(or not) in your system.

The book recommends a learning cycle where you define functions, data types
and so in a file and then load this file in a Haskell interpreter to play with
them. This file in the book is called `baby.hs`. The Haskell interpreter for GHC
is `ghci`. With `stack ghci` I can run `ghci` inside my project, load my
project modules and so. 

The file `baby.hs` is not a module and it isn't part of my project. So, I need
to load it when I run `ghci`.

Typically I edit modules in nvim, to test things I can define it in `baby.hs`.
Then I can run `stack ghci` in a split window inside nvim. See `h :terminal`.
Load the file and play with it. When the thing is working as I want can copy
to a module, add a test that can run inside `ghci` and so. Next a simple
session.

  ````
  $ stack ghci
  Using main module: 1. Package `lernhaskell' component lernhaskell:exe:lernhaskell-exe with main-is file:
   /home/erlnow/learning/haskell/lernhaskell/app/Main.hs
  lernhaskell> configure (lib + exe)
  Configuring lernhaskell-0.1.0.1...
  lernhaskell> initial-build-steps (lib + exe)
  The following GHC options are incompatible with GHCi and have not been passed to it: -threaded
  Configuring GHCi with the following packages: lernhaskell
  GHCi, version 8.8.4: https://www.haskell.org/ghc/  :? for help
  Loaded GHCi configuration from /home/erlnow/.ghci
  [1 of 2] Compiling Lib              ( /home/erlnow/learning/haskell/lernhaskell/src/Lib.hs, interpreted
  )
  [2 of 2] Compiling Main             ( /home/erlnow/learning/haskell/lernhaskell/app/Main.hs, interpreted
   )
  Ok, two modules loaded.
  Loaded GHCi configuration from /tmp/haskell-stack-ghci/95780bfe/ghci-script
  ghci> :l baby
  [1 of 1] Compiling Main             ( baby.hs, interpreted )
  Ok, one module loaded.
  ghci> :t outputStr
  outputStr :: String
  ghci> :q
  Leaving GHCi.
  $
  ```

  You can edit this file and then reload in `ghci` with `:r`. For example:

  ```baby.hs
  --
  -- Baby's first function, Ch 2. Starting Out!
  doubleMe x = x + x

  ```

  And then in another split running `ghci`, I can reload `baby.hs` and
  run the new function.

  ```
  $ stack ghci
  Using main module: 1. Package `lernhaskell' component lernhaskell:exe:lernhaskell-exe with main-is file:
   /home/erlnow/learning/haskell/lernhaskell/app/Main.hs
  lernhaskell> configure (lib + exe)
  Configuring lernhaskell-0.1.0.1...
  lernhaskell> initial-build-steps (lib + exe)
  The following GHC options are incompatible with GHCi and have not been passed to it: -threaded
  Configuring GHCi with the following packages: lernhaskell
  GHCi, version 8.8.4: https://www.haskell.org/ghc/  :? for help
  Loaded GHCi configuration from /home/erlnow/.ghci
  [1 of 2] Compiling Lib              ( /home/erlnow/learning/haskell/lernhaskell/src/Lib.hs, interpreted
  )
  [2 of 2] Compiling Main             ( /home/erlnow/learning/haskell/lernhaskell/app/Main.hs, interpreted
   )
  Ok, two modules loaded.
  Loaded GHCi configuration from /tmp/haskell-stack-ghci/95780bfe/ghci-script
  ghci> :l baby
  [1 of 1] Compiling Main             ( baby.hs, interpreted )
  Ok, one module loaded.

  ... edit baby.h

  :r 
  [1 of 1] Compiling Main             ( baby.hs, interpreted )
  Ok, one module loaded.
  ghci> :t doubleMe
  doubleMe :: Num a => a -> a
  ghci> doubleMe 9
  18
  ghci> doubleMe 8.3
  16.6
  ghci> :t
  ```
