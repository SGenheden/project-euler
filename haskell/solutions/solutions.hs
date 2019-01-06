module Main (main) where

import Solution1
import Solution2
import Solution3
import Solution4
import Solution5
import Solution6
import Solution7
import Solution8
import Solution10
import Solution9

main = putStrLn (s1 ++ "\n" ++ s2 ++ "\n" ++ s3 ++ "\n" ++ s4 ++ "\n" ++ s5 ++ "\n" ++ s6 ++ "\n" ++ s7 ++ "\n" ++ s8 ++ "\n" ++ s9 ++ "\n" ++ s10)
    where s1 = "The solution to problem 1 is " ++ show(Solution1.solve1 1000)
          s2 = "The solution to problem 2 is " ++ show(Solution2.solve2 4000000)
          s3 = "The solution to problem 3 is " ++ show(Solution3.solve3 600851475143)
          s4 = "The solution to problem 4 is " ++ show(Solution4.solve4 3)
          s5 = "The solution to problem 5 is " ++ show(Solution5.solve5 20)
          s6 = "The solution to problem 6 is " ++ show(Solution6.solve6 100)
          s7 = "The solution to problem 7 is " ++ show(Solution7.solve7 10001)
          s8 = "The solution to problem 8 is " ++ show(Solution8.solve8 13)
          s9 = "The solution to problem 9 is " ++ show(Solution9.solve9 1000)
          s10 = "The solution to problem 10 is " ++ show(Solution10.solve10 2000000)
