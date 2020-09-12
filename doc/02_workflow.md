## Workflow

Read the [Quick Start
Guide](https://docs.haskellstack.org/en/stable/README/#quick-start-guide).

I try to follow the workflow described in
[Workflow](https://docs.haskellstack.org/en/stable/README/#workflow).

In the *Learn You Haskell for Greet Good!* describe a method in that
edit a file `.hs` and then load in `ghci` with the command `:l`. 
Then can play with the stuff defined in the `.hs` file. I try to 
follow this method to. With `stack ghci` start the REPL with the 
lib defined in the project and so. For this libs is not neede to 
load o import them. In the book uses a file `baby.hs` this file 
is not a Haskell module, `:l` is needed in that case.

When the project evolve we need to add packages, tests, and so.
With `stack` we can change `stack.yaml` or directly into `.cabal` file.
Other option is modify the `package.hpack`. When modify this file we
need to run `hpack` but no the system-wide `hpack`, we need the
`hpack` local to the project. For example change the version of
the project to '0.1.0.1' we modify it in `package.yaml`. And then,

```
$ hpack
learnhaskell.cabal was generated with a new version of hpack, please upgrade and try again.
$ stack exec -- hpack
learnhaskell.cabal is up-to-date
```

In this
[course](https://academy.mondaymorninghaskell.com/courses/159658/lectures/2390918)
explains how to use *hpack* with *stack*.
