module Programa where

duplica::[Integer]->[Integer]
duplica [] = []
duplica (x:xs) = x:x:(duplica xs)
