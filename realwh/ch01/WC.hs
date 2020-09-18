-- file: ch01/WC.hs
-- lines beginnin with "--" are comments.

main = interact wordCount
  where wordCount input = show (length (lines input)) ++ " lines\n"
                       -- from exercise 3
                       ++ show (length (words input)) ++ " words\n"
                       -- form execise 4
                       ++ show (length (input)) ++ " characters\n"
