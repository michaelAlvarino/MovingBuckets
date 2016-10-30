
import Combinations
import Permutations

numOfWaysToEatFries x = sum (map permutations (repTwos (combination x) []))
