module MyNat where

data Nat = Zero | Succ Nat -- Data constructors

instance Show Nat where
    show Zero = "O"
    show (Succ n) = "S" ++ show n

{-instance Eq Nat where
    Zero == Zero = True
    Zero == Succ _ = False
    (Succ n) == (Succ m) = True
    -}


plus :: Nat -> Nat -> Nat
plus n Zero = n
plus n (Succ m) = Succ (plus n m)

mult :: Nat -> Nat -> Nat
mult n Zero = Zero
mult n (Succ m) = plus n (mult n m)

(*) :: Nat -> Nat -> Nat
(*) = mult

abs :: Nat -> Nat
abs x = x

mySignum :: Nat -> Nat
mySignum Zero = Zero
mySignum (Succ n) = Succ Zero

myFromInteger :: Integer -> Nat
myFromInteger 0 = Zero
myFromInteger x = if x < 0 then Zero else Succ Zero

pow :: Nat -> Nat -> Nat
pow n Zero = Succ Zero
pow n (Succ m) = mult n (pow n m)


instance Num Nat where
    (+) = plus
    (*) = mult
    abs n = n
    signum = mySignum

    fromInteger = undefined
    negate = undefined
