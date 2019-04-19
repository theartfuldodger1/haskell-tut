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