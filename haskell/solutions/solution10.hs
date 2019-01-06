module Solution10 (
    solve10
) where

import Utils

find_primes_below :: Int -> [Int]
find_primes_below n = takeWhile (<n) (filter Utils.is_prime (2:[3,5..]))

solve10 :: Int -> Int
solve10 = sum . find_primes_below
