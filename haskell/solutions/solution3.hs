module Solution3 (
    solve3,
    first_factor
) where

first_factor :: Int -> Int
first_factor 1 = 1
first_factor n = head [x | x <- [2..n], mod n x == 0]

solve3 :: Int -> Int
solve3 n =
    let ff = first_factor n
    in if ff == n then ff else solve3 (div n ff)
