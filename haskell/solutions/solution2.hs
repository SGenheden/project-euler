module Solution2 (
    solve2
) where


fibs_limited :: Int -> [Int]
fibs_limited limit =
   let fibs = 0 : 1 : [ n | x <-[2..], let n = ((fibs !! (x-1)) + (fibs !! (x-2)))]
   in takeWhile (<limit) fibs

solve2 :: Int -> Int
solve2 limit = sum(filter even (fibs_limited limit))
