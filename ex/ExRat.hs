module ExRat
    ( rat
    , (//)
    , denominator
    , numerator
    ) where

-- define Rat:
data Rat

instance Show Rat where
    show = undefined

instance Eq Rat where
    (==) = undefined

instance Num Rat where
    (+) = undefined
    (*) = undefined
    negate = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined

instance Ord Rat where
    compare = undefined

rat :: Integer -> Integer -> Rat
rat = undefined

(//) :: Rat -> Rat -> Rat
(//) = undefined

denominator :: Rat -> Integer
denominator = undefined

numerator :: Rat -> Integer
numerator = undefined

