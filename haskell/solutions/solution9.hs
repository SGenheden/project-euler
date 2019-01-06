module Solution9 (
    solve9
) where

pythagorean_triplet :: Int -> (Int,Int,Int)
pythagorean_triplet limit = head [(a, b, c) | a <- [1..limit], b <- [a..limit], let c=limit-a-b, a^2+b^2==c^2]

solve9 :: Int -> Int
solve9 n =
    let (a, b, c) = pythagorean_triplet n
    in a*b*c
