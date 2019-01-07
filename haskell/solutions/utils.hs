module Utils (
    divisible_by,
    first_factor,
    is_power_of,
    is_prime
) where

divisible_by :: Int -> Int -> Bool
divisible_by x y = mod x y == 0

first_factor :: Int -> Int
first_factor 1 = 1
first_factor n = head (filter (divisible_by n) [2..n])

is_power_of :: Int -> Int -> Bool
-- Determines if there is a number n such that x ^ n = y
is_power_of x y =
    let xi = fromIntegral x
        yi = fromIntegral y
        log_frac = log yi / log xi
    in snd (properFraction log_frac) == 0.0

is_prime :: Int -> Bool
is_prime 1 = True
is_prime 2 = True
is_prime n = null (filter (divisible_by n) [2..limit])
    where limit = floor (sqrt (fromIntegral n))
