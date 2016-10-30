module Combinations where

import Data.List.Unique

combination :: Int -> [Int]
combination x 
  | x == 0 = []
  | x `mod` 2 == 1 = combination(x - 1) ++ [1]
  | x `mod` 2 == 0 = combination(x - 2) ++ [2]

repTwos :: [Int] -> [[Int]] ->[[Int]]
repTwos xs y
  | xs == [] = y 
  | head xs == 1 = xs:y 
  | head xs == 2 = repTwos (tail xs ++ [1,1]) (xs:y)

