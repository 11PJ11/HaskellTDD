module FizzBuzzKata ( fizzBuzz ) where

isDivisibleBy ::Int -> Int -> Bool
isDivisibleBy x n = x `mod` n == 0

fizzBuzz :: Int -> String
fizzBuzz x
    | x `isDivisibleBy` 15 = "FizzBuzz"
    | x `isDivisibleBy` 3 = "Fizz"
    | x `isDivisibleBy` 5 = "Buzz"
    | otherwise = show x
