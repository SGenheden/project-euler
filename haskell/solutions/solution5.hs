module Solution5 (
    solve5
) where

import Solution3

factor_factory :: Int -> [(Int, Int)]
-- Find the largest prime factor for each of the natural numbers from to 2 to n
factor_factory n = [(x, Solution3.solve3 x) | x <- [2..n]]

factors_of_x :: [(Int, Int)] -> Int -> [Int]
-- Find all the group of largest prime factors that are all equal to x
factors_of_x list x = [a | (a,b) <- list, b == x]

factors_list :: Int -> [[Int]]
-- Group the largest prime factor for each of the natural numbers from 2 to n by their largest prime factor
factors_list n =
    let largest_factors = factor_factory n
    in [ factors | x <- [2..n], let factors = factors_of_x largest_factors x, not (null factors)]

is_power_of :: Int -> Int -> Bool
-- Determines if there is a number n such that y ^ n = x
is_power_of x y =
    let xi = fromIntegral x
        yi = fromIntegral y
        log_frac = log xi / log yi
    in snd (properFraction log_frac) == 0.0

find_factor :: [Int] -> Int
-- Find the largest prime factor from a list of factors
find_factor (x:[]) = x
find_factor (x:xs) =
    let filtered_xs = filter (\xx -> is_power_of xx x) xs
    in if not (null filtered_xs) then last filtered_xs else x

solve5 :: Int -> Int
solve5 n = product(map find_factor (factors_list n))

even_divisible_by :: Int -> Int -> Bool
-- Determines if a number is evenly evenly divisble by all numbers from 2 to n
even_divisible_by x n = all (\y -> mod x y == 0) [y | y <- [2..n]]
