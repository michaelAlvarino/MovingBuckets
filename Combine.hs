
import Combinations
import Permutations

numOfWaysToMoveBuckets x = sum (map permutations (repTwos (combination x) []))
