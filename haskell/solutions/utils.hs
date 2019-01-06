module Utils (
    is_prime
) where

is_prime :: Int -> Bool
is_prime 1 = True
is_prime 2 = True
is_prime n = null (filter divisible_by [2..limit])
    where limit = floor (sqrt (fromIntegral n))
          divisible_by x = mod n x == 0
