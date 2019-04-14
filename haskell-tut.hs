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
floorVal = floor 9.999	-- rounds up

-- Also sin, cos, tan, asin, atan, acos, sinh
-- tanh, cosh, asinh, atanh, acosh