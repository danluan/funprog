module Lista where

    data ListInt = Empty | ListInt Int ListInt
        deriving (Eq)

    instance Show ListInt where
        show a = show' a 
            where
                show' Empty = ""
                show' (ListInt a Empty) = show a
                show' (ListInt a b) = show a ++ "," ++ show b

    hd :: ListInt -> Int
    hd Empty = error "Error: Empty list"
    hd (ListInt a b) = a

    tl :: ListInt -> ListInt
    tl Empty = error "Error: Empty list"
    tl (ListInt a b) = b