module Solution7 (
    solve7
) where


is_prime :: Int -> Bool
is_prime 1 = True
is_prime 2 = True
is_prime n =
    let limit = floor (sqrt (fromIntegral n))
        list = filter (\x -> mod n x == 0) [2..limit]
    in null list

find_n_primes :: Int -> [Int]
find_n_primes n = take n (filter is_prime (2:[3,5..]))

solve7 :: Int -> Int
solve7 n = last (find_n_primes n)
