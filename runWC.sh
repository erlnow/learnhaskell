#!/bin/sh
# From "Real World Haskell, Chapter 1"
stack runghc --cwd realwh/ch01 -- WC.hs < realwh/ch01/quux.txt
