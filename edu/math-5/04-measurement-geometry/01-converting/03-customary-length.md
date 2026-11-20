# Inches, feet, yards and miles

```lesson
(objective "Convert among inches, feet, yards and miles both ways, such as 30 inches = 2 1/2 feet and 1 mile = 5,280 feet.")
(standards "5.MD.A.1")
(minutes 25)
```

You can change US lengths to a bigger or smaller unit by multiplying or dividing.

Inches, feet, yards and miles are US units of length. They are not powers of ten apart.

```figure
(m5p4-table 40 30 120 '(("1 of these" "is") ("foot" "12 inches") ("yard" "3 feet") ("yard" "36 inches") ("mile" "5,280 feet") ("mile" "1,760 yards")))
(caption "US units of length")
```

A **mile** is exactly 5,280 feet. It is for long distances, like a 20-minute walk.

```check
(number
  (ask "How many feet are in 3 miles?")
  (answer 15840) (unit "ft") (from "3 * 5280")
  (wrong-if 5283 "That adds 3. Each mile is 5,280 feet, so multiply: 3 × 5,280.")
  (wrong-if 1760 "1,760 is the yards in 1 mile. Feet are smaller: 5,280 of them a mile.")
  (hint "1 mile = 5,280 feet.")
  (hint "3 × 5,280 = ?"))
```

```sources
(source "NIST Handbook 44, Appendix C: General Tables of Units of Measurement, units of length (US customary)")
```

---

## Big unit to small unit

To get the smaller unit, multiply by how many fit in the bigger one.

4 yards = $4 * 3$ feet = 12 feet. 4 yards = $4 * 36$ inches = 144 inches.

```check
(number
  (ask "A rug is 7 feet long. How many inches is that?")
  (answer 84) (unit "in") (from "7 * 12")
  (wrong-if 19 "That adds 7 + 12. Each foot is 12 inches, so multiply.")
  (wrong-if 70 "That uses 10 inches a foot. A foot is 12 inches.")
  (hint "7 × 12 = ?"))
```

---

## Small unit to big unit

To get the bigger unit, divide. A fraction is a division, so the answer can be a fraction.

30 inches = $30/12$ feet = $2 6/12$ feet = $2 1/2$ feet.

```figure
(number-line 30 290 110 0 36 6 6)
(nl-mark 30 'warm)
(nl-jump 0 12 'cool "1 ft")
(nl-jump 12 24 'cool "1 ft")
(nl-jump 24 30 'warm "1/2 ft")
(caption "30 inches: 2 feet and 6 inches more")
```

```check
(number
  (ask "A ribbon is 42 inches long. How many feet is that? (A mixed number is fine.)")
  (answer 3.5) (unit "ft") (from "42 / 12")
  (wrong-if 3.6 "42 ÷ 12 is 3 with 6 left. The 6 are 6 inches, which is 6/12 = 1/2 foot, not 0.6.")
  (wrong-if 504 "That multiplies. Feet are bigger, so divide by 12.")
  (hint "Feet are bigger: divide by 12.")
  (hint "42 ÷ 12 = 3, and 6 inches more. 6 inches is what part of a foot?"))
```

---

## A worked example

```example
(example
  (problem "A path is 2,640 feet long. What part of a mile is it?")
  (step "Miles are bigger, so divide: 2,640 ÷ 5,280.")
  (step "Write it as a fraction: 2,640/5,280. 2,640 is half of 5,280.")
  (step (number (ask "So the path is how many miles?") (answer 0.5) (from "2640 / 5280")
          (wrong-if 2 "5,280 ÷ 2,640 = 2 divides the wrong way. The path is shorter than a mile.")))
  (answer "2,640 feet = 1/2 mile."))
```

---

## Practice

```check
(number
  (ask "How many yards are in 2 miles?")
  (answer 3520) (unit "yd") (from "2 * 1760")
  (wrong-if 10560 "That is feet: 2 × 5,280. A mile is 1,760 yards.")
  (hint "1 mile = 1,760 yards."))
```

```check
(choice
  (ask "A board is 9 feet long. How many yards is that?")
  (right "3 yards" (true "9 / 3 = 3"))
  (wrong "27 yards" (false "9 / 3 = 27") "That multiplies. Yards are bigger than feet, so divide by 3.")
  (wrong "3/4 yard" "That divides by 12, the inches in a foot. A yard is 3 feet.")
  (hint "1 yard = 3 feet."))
```

---

```check
(number
  (ask "A shelf is 3 3/4 feet long. How many inches is that?")
  (answer 45) (unit "in") (from "3 * 12 + (3/4) * 12")
  (wrong-if 39 "3 feet is 36 inches, but 3/4 foot is not 3 inches. It is 3/4 of 12 = 9 inches.")
  (hint "3 feet = 36 inches.")
  (hint "3/4 of 12 inches = 9 inches."))
```

To change US lengths, multiply by 12, 3 or 5,280 to go smaller, and divide to go bigger.
