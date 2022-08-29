{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use guards" #-}
module Chapter4 where

--New from old

even :: Integral a => a -> Bool
even n = mod n 2 == 0

splitAt :: Int -> [a] -> ([a],[a])
splitAt n xs = (take n xs, drop n xs)

recip :: Fractional a => a -> a
recip n = 1/n

--Conditional expressions

abs :: Int -> Int
abs n = if n >= 0 then n else -n

signumCond :: Int -> Int
signumCond n = if n < 0 then -1 else
  if n == 0 then 0 else 1

-- Guarded equations

signumGuard :: Int -> Int
signumGuard n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1

--Pattern matching


