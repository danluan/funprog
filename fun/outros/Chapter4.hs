module Chapter4 where


even :: Integral a => a -> Bool
even n = mod n 2 == 0

splitAt :: Int -> [a] -> ([a],[a])
splitAt n xs = (take n xs, drop n xs)

recip :: Fractional a => a -> a
recip n = 1/n

abs :: Int -> Int
abs n = if n >= 0 then n else -n

-- Guarded

signum :: Int -> Int
signum n
  | n < 0 = -1
  | n == 0 = 0
  | otherwise = 1