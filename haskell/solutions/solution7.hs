module Solution7 (
    solve7
) where

import Utils

find_n_primes :: Int -> [Int]
find_n_primes n = take n (filter Utils.is_prime (2:[3,5..]))

solve7 :: Int -> Int
solve7 = last . find_n_primes
