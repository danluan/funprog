module Primeiro where

errado :: [Char]
errado = "not good"

five :: Integer
five = 5

addFive :: Integer -> Integer
addFive x = x + 5

sempreSix :: Integer -> Integer
sempreSix x = 6 

main :: IO ()
main = do
    putStrLn "Enter your name, please"
    userName <- getLine
    putStrLn $ "Hello, " ++ userName