-- comments
{-
multiline comments
-}

import Data.List
import System.IO

-- two diff types of integers
-- Ints -2^63 => 2^63
minInt = minBound :: Int
maxInt = maxBound :: Int
-- Integer - unbounded whole number - big as your mem can hold

-- Double 
bigFloat  = 3.999999999999 + 0.000000000005 -- precision up to 11 pts, Produces an error after that

-- Boolean true flase
-- Char unicode '
-- Tuples - only contain two values

always5 :: Int
always5 = 5

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

modEx = mod 5 4
modEx2 = 5 `mod` 4

-- using negative numbers, may need parenthasis
negNumEx = 5 + (-4)

{- *Main> :t sqrt
sqrt :: Floating a => a -> a
-}
-- note that sqrt expects a float result, if coming from an int...
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9) -- from integral can be used anytime you wont to convert to floating point data type

-- Built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = log 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999 -- rounds up
ceilingVal = ceiling 9.999 -- rounds up
floorVal = floor 9.999 -- rounds up

-- Also sin, cos, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- if you need to figure out a function you dont know
-- in ghci use 
    {-
    *Main> :t (+)
    (+) :: Num a => a -> a -> a
    *Main> :t truncate
    truncate :: (RealFrac a, Integral b) => a -> b
    -}

-- lists - singly linked, can only add on the front
primeNumbers = [3, 5, 7, 11]
morePrimes = primeNumbers ++ [13, 17, 19, 23, 29]
favNums = 2 : 7 : 21 : 66 : []
multiList = [[6,5,7], [11,13,17]]
morePrimes2 = 2 : morePrimes
lenPrime = length morePrimes

revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
primeInit = init morePrimes2 -- prints all except last element
first3Primes = take 3 morePrimes2
removePrimes = drop 3 morePrimes2
is7InList = 7 `elem` morePrimes2

maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2

sumPrimes = sum morePrimes2
newList = [2,3,5]
prodPrimes = product newList

zeroToTen = [0..10] -- generates list from 0 to 10
evenList = [2,4..20] -- generates even list up to 20
letterList = ['A', 'C'..'Z']
infinPow10 = [10,20..] --"infinite" list -- generates list only when called and only up to what you needed
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1,2,3,4,5])--list of 10 elements starting with 1-5 followed by 1-5 again

--filtering lists
listTiems2 = [x * 2 | x <- [1..10]] -- multiplies every item in list by 2
--pulls out item from list and assigns to x. Multiplies x by 2
listTiems3 = [x * 3 | x <- [1..10], x * 3 <= 50] -- produce only values up to 50
divisBy9and13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0] -- only vals div by 13 AND by 9

sortedList = sort [9,1,8,3,4,7,6]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]

listBiggerThan5 = filter (>5) morePrimes
evensUpTo20 = takeWhile (<= 20) [2,4..]
multOfList = foldl (*) 1 [2,3,4,5] -- from left. for from right 'foldr'

pow3List = [3^n | n <- [1..10]]
multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

--tupls can store more than one data type
randTuple = (1, "Random Tuple")

bobSmith = ("Bob Smith", 52) -- tuple pairs
bobsName = fst bobSmith -- prints Bob Smith
bobsAge = snd bobSmith -- prints age
names = ["Bob", "Mary", "Tom"]
addresses = ["123 Main", "234 North", "567 South"]
namesNAddress = zip names addresses

{---
can do calculations in the GHC also
Prelude> let num7 = 7
Prelude> let getTriple x = x * 3
Prelude> getTriple num7
21
-}

main = do
   putStrLn "What's your name"
   name <- getLine
   putStrLn ("Hello " ++ name)

-- two ways to compile and create a .exe in windows
-- in command prompt, type
-- ghc haskell-tut
-- OR
-- ghc --make haskell-tut
-- second one seems more proper

-- in windows command prompt type haskell-tut.exe to execute
-- in linux, ./haskell-tut

-- Type declaration
addMe :: Int -> Int -> Int
-- recieves an int and another int and returns an int
-- every function must return something. Funcs cannot start with a capital letter
-- creating a function - template is as follows
-- funcName param1 param2 = operations (returned value)
addMe x y = x + y

-- funcs that do not recieve params are called a definition or a 'name'

-- let haskell figure it out!
sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

whatAge :: Int -> String

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge _ = "Nothing important" --underscore

-- recursion
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

prodFact n = product [1..n]

-- Guards
isOdd :: Int -> Bool
isOdd n | n `mod` 2 == 0 = False | otherwise = True

isEven n = n `mod` 2 == 0

whatGrade :: Int -> String
whatGrade age 
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "Go to college!"


-- Using "where"
batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting Average"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "You're doing pretty good"
    | otherwise = "You're a superstare"
    where avg = hits / atBats

-- accessing lsit items
getListItems  :: [Int] -> String
getListItems [] = "Your list is empty"
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list starts with " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest are " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1,2,3,4,5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

{-
[1,2,3,4] : x = 1 | xs = [2,3,4]
[2,3,4] : x = 2 | xs = [3,4]
[3,4] : x = 3 | xs = [4]
[4] : x = 4
-}

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- Passing funcs into funcs
doMult :: (Int -> Int) -> Int
doMult func = func 3
num3Times4 = doMult times4

getAddFunc :: Int -> (Int ->  Int)
getAddFunc x y = x + y
adds3 = getAddFunc 3
fourPlus3 = adds3 4
threePlusList = map adds3 [1,2,3,4,5]

--Lambdas
dbl1To10 = map (\x -> x * 2) [1..10]

-- Comparison operators
-- Not equal /=
-- && || not

--if statements
doubleEvenNumber y = 
    if (y `mod` 2 /= 0)
        then y
        else y * 2      -- required with if statements

getClass :: Int -> String
getClass n = case n of
	5 -> "Go to Kindergarten"
	6 -> "Go to elementary school"
	_ -> "Go away!"

-- modules - like Data.List, System.IO 
-- contain a bunch of other functions and are imported into where you want to use them
-- defined as follows
-- module SampFunctions (getClass, doubleEvenNumbers) where
	--blah blah blah - list the functions here...

-- enumerated types...
data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                deriving Show

barryBonds ::BaseballPlayer -> Bool
barryBonds Outfield = True

barryInOF = print(barryBonds Outfield)