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

instance (Eq Weekday) where
    Seg == Seg = True
    Ter == Ter = True
    Qua == Qua = True
    Qui == Qui = True
    Sex == Sex = True
    Sab == Sab = True
    Dom == Dom = True
    _   == _   = False

instance (Show Weekday) where
    show Seg = "Segunda"
    show Ter = "Terça"
    show Qua = "Quarta"
    show Qui = "Quinta"
    show Sex = "Sexta"
    show Sab = "Sábado"
    show Dom = "Domingo"

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

