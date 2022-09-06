module ExBool where

-- Do not alter this import!
import Prelude
    ( Show(..)
    , Eq(..)
    , Ord(..)
    , Num(..)
    , Enum(..)
    , Integral(..)
    , Int
    , Char
    , (++)
    , ($)
    , (.)
    , undefined
    , error
    , otherwise
    )

-- Define evenerything that is undefined,
-- without using standard Haskell functions.
-- (Hint: recursion is your friend!)

data Bool = False | True

instance Show Bool where

    show False = "False"
    show True = "True"

instance Enum Bool where
    
    toEnum 0 = False
    toEnum _ = True

    fromEnum True = 1
    fromEnum False = 0

-- conjunction (AND)
(&&) :: Bool -> Bool -> Bool
(&&) True True = True
(&&) _ _ = False 

infixr 3 &&

-- disjunction (OR)
(||) :: Bool -> Bool -> Bool
(||) False False = False
(||) _ _ = True

infixr 2 ||

-- boolean negation
not :: Bool -> Bool
not False = True
not True  = False

-- NAND (Sheffer stroke)
(/|\) :: Bool -> Bool -> Bool
(/|\) True True = False
(/|\) _ _ = True

infixr 2 /|\

-- NOR (aka: Peirce arrow or Quine dagger)
(\|/) :: Bool -> Bool -> Bool
(\|/) False False = True
(\|/) _ _ = False

infixr 2 \|/

-- XOR (exclusive disjunction)
(<=/=>) :: Bool -> Bool -> Bool
(<=/=>) True True = False
(<=/=>) False False = False
(<=/=>) _ _ = True


infixr 2 <=/=>

-- if-then-else expression
ifThenElse :: Bool -> a -> a -> a
ifThenElse True x y = x
ifThenElse False x y = y

-- logical "implies"
(==>) :: Bool -> Bool -> Bool
(==>) True False = False
(==>) _ _ = True

infixr 1 ==>

-- logical "implied by"
(<==) :: Bool -> Bool -> Bool
(<==) q p = (==>) p q

infixl 1 <==

-- logical equivalence
(<=>) :: Bool -> Bool -> Bool
(<=>) True True = True
(<=>) False False = True
(<=>) _ _ = False


infixr 1 <=>


