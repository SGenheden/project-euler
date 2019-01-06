module Solution4 (
    solve4
) where

lowerLim :: Int -> Int
lowerLim n = read('1':(replicate (n-1) '0')) :: Int

upperLim :: Int -> Int
upperLim n = read('9':(replicate (n-1) '9')) :: Int

palindroms :: Int -> [Int]
palindroms n = [x*y | x<-[lowerLim(n)..upperLim(n)], y<-[x..upperLim(n)], let xstr = show (x*y), xstr == reverse xstr]

solve4 :: Int -> Int
solve4 n = maximum(palindroms(n))
