module Solution5 (
    solve5
) where

import Utils (divisible_by, first_factor, is_power_of)


solve5 :: Int -> Int
solve5 n = product(filtered_list)
    where list = [2..n]
          first_factors = map first_factor list
          list_filter (x, y) = is_power_of x y
          filtered_list = map fst (filter list_filter (zip first_factors list))


all_divisible_by :: Int -> Int -> Bool
-- Determines if a number is evenly evenly divisble by all numbers from 2 to n
even_divisible_by x n = all (divisible_by x) [2..n]
