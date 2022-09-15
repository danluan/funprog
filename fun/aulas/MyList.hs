module Mylist where

    data List a = Empty | List a (List a)
        deriving (Show, Eq)

    {-
    instance Show List where
        show x = show' x
            where
                show' Empty = ""
                show' (List x Empty) = show x
                show' (List x y) = show x ++ "," ++ show y
    -}
