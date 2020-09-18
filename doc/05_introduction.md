# Introduction to Haskell

In [How to learn Haskell](https://github.com/bitemyapp/learnhaskell)
recommends [Yorgey's cis194](https://www.seas.upenn.edu/~cis194/spring13/lectures.html)
that I use as a guide.

In this document, Yorgey recommends two readings:
 
-   [Learn You a Haskell for Great Good, chapter 2](http://learnyouahaskell.com/starting-out)
-   [Real World Haskell](http://book.realworldhaskell.org/),
    chapters 1 and 2

I try to read them too. I have the book "Programming Haskell". I read this, too.

* Code from Yorgey's cis194 course is under `cis194/` directory.
* Code from "Real World Haskell" is under `realhw/` directory
* Code from "Learn you Haskell for Great Good" is in `baby.hs`

Add WC.hs as executable has some complications. For running stack, for example,
throws the following message:

```
$ stack ghci

* * * * * * * *
The main module to load is ambiguous. Candidates are:
1. Package `lernhaskell' component lernhaskell:exe:WC with main-is file: /home/erlnow/learning/haskell/lernhaskell/realwh/ch01/WC.hs
2. Package `lernhaskell' component lernhaskell:exe:lernhaskell-exe with main-is file: /home/erlnow/learning/haskell/lernhaskell/app/Main.hs
You can specify which one to pick by:
 * Specifying targets to stack ghci e.g. stack ghci lernhaskell:exe:WC
 * Specifying what the main is e.g. stack ghci --main-is lernhaskell:exe:WC
 * Choosing from the candidate above [1..2]
* * * * * * * *

Specify main module to use (press enter to load none):
```
