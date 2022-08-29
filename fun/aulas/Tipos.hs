module Tipos where

-- typeclass: Num; Fractional; Integral
--
-- primitive types:
-- Char; Int; Integer; Float; Double;
--
-- types:
-- [Char]; (Int,Int); Int -> Int

data Weekday = Seg 
            | Ter 
            | Qua 
            | Qui 
            | Sex 
            | Sab 
            | Dom
            deriving (Show)

proxDia :: Weekday -> Weekday
proxDia Seg = Ter
proxDia Ter = Qua
proxDia Qua = Qui
proxDia Qui = Sex
proxDia Sex = Sab
proxDia Sab = Dom
proxDia Dom = Seg
  
proxDiaUtil :: Weekday -> Weekday
proxDiaUtil Seg = Ter
proxDiaUtil Ter = Qua
proxDiaUtil Qua = Qui
proxDiaUtil Qui = Sex
proxDiaUtil _ = Seg

