cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
        topArea = pi * r ^ 2
    in sideArea + 2 * topArea

-- `let` use to make local
[let square x = x * x in (square 5, square 3, square 2)]
-- let use semicolon to separate
(let a = 100; b = 200; c = 300 in a * b * c, let foo = "Hey "; bar = "there!" in foo ++ bar)
-- use let and pattern matching, binding to names
(let (a, b, c) = (1, 2, 3) in a + b + c) * 100
-- use let in list comprehension

calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

let zoot x y z = x * y + z
zoot 3 9 2
let boot x y z = x * y + z in boot 3 4 2
boot