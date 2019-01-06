
sum_of_squares :: Int -> Int
sum_of_squares n = sum (map (^2) [1..n])

square_of_sum :: Int -> Int
square_of_sum n = sum([1..n]) ^ 2

solve6 :: Int -> Int
solve6 n = square_of_sum n - sum_of_squares n
