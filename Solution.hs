
import Combinations
import Permutations

numOfWaysToMoveBuckets x = sum (map permutations (repTwos (combination x) []))

-- real solution...
-- if you draw out the first few answers, you'll notice this is just the fibonnaci sequence
-- there's tons of ways to do this in haskell, I like zipWith and infinite lists

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

realNumWaysToMoveBuckets x = fibs !! n