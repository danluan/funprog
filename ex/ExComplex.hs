module ExComplex
    ( complex
    , conjugate
    , toRect
    , toTrig
    , magnitude
    , arg
    ) where

type RePart    = Double
type ImPart    = Double
type Magnitude = Double
type Angle     = Double     -- in rads!

data Complex = Rect RePart    ImPart
             | Trig Magnitude Angle

instance Show Complex where
    show = undefined

instance Eq Complex where
    (==)  = undefined

instance Num Complex where
    (+) = undefined
    (*) = undefined
    negate = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined

complex :: RePart -> ImPart -> Complex
complex = undefined

conjugate :: Complex -> Complex
conjugate = undefined

toRect :: Complex -> Complex
toRect = undefined

toTrig :: Complex -> Complex
toTrig = undefined

magnitude :: Complex -> Magnitude
magnitude = undefined

-- arg should be a number in (-pi, pi]
arg :: Complex -> Angle
arg = undefined

-- real part
re :: Complex -> RePart
re = undefined

-- imaginary part
im :: Complex -> ImPart
im = undefined

