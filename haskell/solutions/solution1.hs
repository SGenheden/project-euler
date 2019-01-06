module Solution1 (
    solve1
) where

solve1 :: Int -> Int
solve1 limit = sum([x | x <- [1..(limit-1)], multiple_of_three_or_five x ])

multiple_of_three_or_five :: Int -> Bool
multiple_of_three_or_five x = mod x 3 == 0 || mod x 5 == 0
