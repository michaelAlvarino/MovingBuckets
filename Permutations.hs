module Permutations where

import Data.List.Unique

factorial :: Int -> Int
factorial x = product [1 .. x]

findEachFactorial :: [Int] -> [Int]
findEachFactorial = map factorial

getSecondOfOneTuple :: (a, Int) -> Int
getSecondOfOneTuple (_,x) = x

getSecondOfEachTuple :: [(a, Int)] -> [Int]
getSecondOfEachTuple= map getSecondOfOneTuple

findDenom :: [Int] -> Int
findDenom xs = product $ findEachFactorial $ getSecondOfEachTuple $ count xs

permutations :: [Int] -> Double
permutations xs = (fromIntegral $ factorial $ length xs)/(fromIntegral $ findDenom xs)
