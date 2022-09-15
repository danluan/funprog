module Shapes where

    data Color = Red | Green | Blue
        deriving (Show, Eq)

    data RGBColor = RGBColor Double Double Double
        deriving (Show, Eq)
    
    data Point3D = Point3d Double Double Double
        deriving (Show, Eq)

    data Shape = Circle Double --Construtor de aridade 1
               | Square Double
               | Rectangle Double Double
        deriving (Show, Eq)

    data Pair a b = Pair a b
        deriving (Show, Eq)


    outl :: Pair a b -> a
    outl (Pair x y) = x

    outr :: Pair a b -> b
    outr (Pair x y) = y

    area :: Shape -> Double
    area (Circle r)  = pi * (r^2)
    area (Square l)    = l ^ 2
    area (Rectangle c h) = c * h

    rot90 :: Shape -> Shape
    rot90 (Rectangle c h) = Rectangle h c
    rot90 s = s

    height :: Shape -> Double
    height (Circle r) = r+r
    height (Square l) = l
    height (Rectangle c h) = h