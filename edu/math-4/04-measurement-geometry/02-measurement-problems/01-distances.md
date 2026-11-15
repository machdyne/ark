# Distance problems

```lesson
(objective "Solve word problems about distances with the four operations, showing them on a number line with a measurement scale.")
(standards "4.MD.A.2")
(minutes 25)
```

You can solve distance problems by drawing them on a number line marked in units.

Mia walks 300 meters to the park. Then she walks 500 meters to the library. How far does she walk?

```figure
(number-line 30 290 120 0 1000 100 200)
(nl-jump 0 300 'warm "300 m")
(nl-jump 300 800 'cool "500 m")
(nl-mark 800 'ink)
(caption "Distance in meters")
```

The hops join: $300 + 500 = 800$.

```check
(number
  (ask "How far does Mia walk, in meters?")
  (answer 800) (unit "m") (from "300 + 500")
  (wrong-if 200 "That is the difference. Mia walks both parts, so join them: 300 + 500.")
  (hint "Add the 2 hops."))
```

---

## How much farther?

A bike path is 900 meters long. Leo has ridden 600 meters. How far is left?

```figure
(number-line 30 290 120 0 1000 100 200)
(nl-jump 0 600 'warm "600 m")
(nl-jump 600 900 'cool "?")
(caption "Distance in meters")
```

```check
(number
  (ask "How many meters are left?")
  (answer 300) (unit "m") (from "900 - 600")
  (wrong-if 1500 "That adds. The whole path is 900 m. Take away the part Leo rode.")
  (hint "600 + ? = 900"))
```

---

## Equal parts

A race is 2 km. That is 2,000 meters. The race has 4 equal parts. How long is each part?

```figure
(number-line 30 290 120 0 2000 500 500)
(nl-jump 0 500 'cool)
(nl-jump 500 1000 'cool)
(nl-jump 1000 1500 'cool)
(nl-jump 1500 2000 'cool)
(caption "Distance in meters")
```

```check
(number
  (ask "How long is each part, in meters?")
  (answer 500) (unit "m") (from "2000 / 4")
  (wrong-if 8000 "That multiplies. The 2,000 m is shared into 4 parts: divide.")
  (wrong-if 1996 "That subtracts 4. Share 2,000 into 4 equal parts: 2,000 ÷ 4.")
  (hint "4 × ? = 2,000"))
```

---

## A worked example

```example
(example
  (problem "Sam runs 3 laps of a track. Each lap is 400 m. How far does he run?")
  (step "Each lap is the same: 3 equal hops of 400 on a number line.")
  (step "Multiply: 3 × 400.")
  (step (number (ask "3 × 400 = ?") (answer 1200) (from "3 * 400")
          (wrong-if 403 "Multiply, do not add: 3 laps of 400.")))
  (answer "Sam runs 1,200 m."))
```

---

## Now you finish one

A rope is 12 feet long. Ana cuts it into 3 equal pieces. How long is each piece?

```check
(number
  (ask "How long is each piece, in feet?")
  (answer 4) (unit "ft") (from "12 / 3")
  (wrong-if 9 "That subtracts 3. Share 12 feet into 3 equal pieces: 12 ÷ 3.")
  (wrong-if 36 "That multiplies. Cutting into pieces shares the length: divide.")
  (hint "3 × ? = 12"))
```

---

## Practice

```check
(number
  (ask "A bus goes 25 km in the morning and 18 km in the afternoon. How far does it go?")
  (answer 43) (unit "km") (from "25 + 18")
  (wrong-if 7 "That is the difference. The bus goes both distances in one day: add.")
  (hint "25 + 18 = ?"))
```

```check
(number
  (ask "A kite string is 100 feet long. 35 feet are still on the spool. How many feet are out?")
  (answer 65) (unit "ft") (from "100 - 35")
  (wrong-if 135 "That adds. The 100 feet is all of it: take away the part on the spool.")
  (hint "35 + ? = 100"))
```

---

```check
(number
  (ask "A path is 2 km long. A runner goes along it 3 times. How many meters does she run?")
  (answer 6000) (unit "m") (from "3 * 2 * 1000")
  (wrong-if 6 "6 is in kilometers. The question asks for meters: each km is 1,000 m.")
  (wrong-if 2003 "Multiply: 3 times 2,000 m.")
  (hint "2 km = 2,000 m.")
  (hint "3 × 2,000 = ?"))
```

On a number line marked in units, you can see whether to add, subtract, multiply or divide.
