module Chapter3 where

--Basic Types
cond :: Bool
cond = True
--
int :: Int
int = 10
--
integer :: Integer
integer = 11
--
float :: Float
float = 3.141592
--
double :: Double
double = 3.1415926535897932
--Lists
list :: [Int]
list = [1, 2, 3, 4, 5, 6]
--Tuples
tuple2 :: (Int, Int)
tuple2 = (2,3)

--(+) function with 2-tuple
--add :: (Int,Int) -> Int
--add (x,y) = x+y
--(+) function with currification
add :: Int -> Int -> Int
add x y = x + y
add5 :: Int -> Int
add5 = add 5
succ :: Int -> Int
succ = add 1

media :: (Float, Float) -> Float
media (x,y) = (x+y)/2

mediaCurry :: Float -> Float -> Float
mediaCurry x y = (x+y)/2

mediaList :: [Float] -> Float
mediaList = undefined

zeroto :: Int -> [Int]
zeroto n = [0..n]


--Polymorphic types

left :: (a,b) -> a
left (x,y) = x

--Overloaded types
--(+) :: Num a => a -> a -> a
--Num is a class of numeric types

--Basic Classes
{-
    Eq - equality types
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool

    Ord – ordered types
    (<) :: a -> a -> Bool
    (<=) :: a -> a -> Bool
    (>) :: a -> a -> Bool
    (>=) :: a -> a -> Bool
    min :: a -> a -> a
    max :: a -> a -> a

    Show – showable types
    show :: a -> String

    Read – readable types
    read :: String -> a

    Num – numeric types
    (+) :: a -> a -> a
    (-) :: a -> a -> a
    (*) :: a -> a -> a
    negate :: a -> a
    abs :: a -> a
    signum :: a -> a (it returns -1 for negative numbers, 0 for zero, and 1 for positive numbers)

    Integral – integral types
    div :: a -> a -> a
        > 7 ‘div‘ 2
        3
    mod :: a -> a -> a
        > 7 ‘mod‘ 2
        1
    
    Fractional – fractional types
    (/) :: a -> a -> a
        > 7.0 / 2.0
        3.5
    recip :: a -> a (returns 1 / argument)
        > recip 2.0
        0.5

    
-}
