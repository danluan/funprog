module BasicTypes where

list :: [Int]
list = [1, 2, 3, 4, 5, 6]

--(+) function with 2-tuple
--add :: (Int,Int) -> Int
--add (x,y) = x+y
--(+) function with curryfication 
add :: Int -> Int -> Int
add x y = x + y

add5 :: Int -> Int
add5 = add 5

media :: (Float, Float) -> Float
media (x,y) = (x+y)/2

mediaCurry :: Float -> Float -> Float
mediaCurry x y = (x+y)/2

mediaList :: [Float] -> Float
mediaList = undefined

zeroto :: Int -> [Int]
zeroto n = [0..n]