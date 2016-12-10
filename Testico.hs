module Testico
(zero
, testico
, doubleMe
, doubleUs
, doubleSmall
, factorial
, quotientRemainder
, ordinalNum
) where

import Data.Set

zero = empty

ordinalNum 0 = zero
ordinalNum n = let previous = (ordinalNum (pred n)) in insert previous previous
--main :: IO ()
--main = putStrLn "Hello, World!"

factorial :: (Integral a) => a -> a

factorial n = product [1..n]

--zero = []
--one = [zero]
--two = [zero, one]
--three = [zero, one, two]

testico = [1..6]
doubleMe x = x * 2
doubleUs x y = doubleMe x + doubleMe y
doubleSmall x = if x > 100
                  then x
                  else x * 2

--length' xs = sum [1 | _ <- xs]
--
--removeNonUppers str = [c | c <- str, c `elem` ['A'..'Z']]
--
--addVecs :: (Num a) => (a, a) -> (a, a) -> (a, a)
--addVecs (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
--
--
--zipWith' :: (a -> a -> a) -> [a] -> [a] -> [a]
--zipWith' _ [] _ = []
--zipWith' _ _ [] = []
--zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

quotientRemainder :: Int -> Int -> String
quotientRemainder m n = show m ++ " = " ++ show (div m n) ++ " x " ++ show n ++ " + " ++ show (mod m n)
