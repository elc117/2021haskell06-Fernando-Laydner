-- Prática 06 de Haskell
-- Nome: Fernando Kalikosque Laydner Júnior

--1
ends :: [Int] -> [Int]
ends x = (head x) : (last x) : []

--2
deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = (2 * x) : deduzame xs

--3
deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2
  then x : deduzame2 xs 
  else deduzame2 xs

--4
geraTabela :: Int -> [(Int,Int)]
geraTabela x = [ (z,z^2) | z <- [x, x-1..1]]

--5
contido :: Char -> String -> Bool
contido char str = if any (==char) str then True else False

--6
translate :: [(Float, Float)] -> [(Float, Float)]
translate lista = [ (x+2,y+2) | (x,y) <- lista]

--7
countLongs :: [String] -> Int
countLongs [] = 0
countLongs (x:xs) = if length x > 5 then 1 + countLongs xs else  countLongs xs

--8
onlyLongs :: [String] -> [String]
onlyLongs [] = []
onlyLongs (x:xs) = 
  if (length x) > 5 then x : onlyLongs xs else onlyLongs xs