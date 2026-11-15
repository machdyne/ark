# Problems with two units

```lesson
(objective "Solve problems that need a larger unit written in a smaller one first, such as 2 feet 5 inches minus 9 inches.")
(standards "4.MD.A.2" "4.MD.A.1")
(minutes 25)
```

You can solve a problem with two units by writing it all in the smaller unit first.

A board is 2 feet 5 inches long. In inches, 2 feet is $2 * 12 = 24$ inches. So the board is $24 + 5 = 29$ inches.

```figure
(frame 20 80 280 30 'ink 2)
(line 136 80 136 110 'ink 1)
(line 252 80 252 110 'ink 1)
(label 78 100 "12 in")
(label 194 100 "12 in")
(label 276 100 "5 in")
(text 160 60 "2 ft 5 in = 29 in" 'centre 'body 'bold)
```

```check
(number
  (ask "How many inches is 3 feet 4 inches?")
  (answer 40) (unit "in") (from "3 * 12 + 4")
  (wrong-if 34 "3 feet is not 30 inches. Each foot is 12 inches: 3 × 12 = 36, then add 4.")
  (wrong-if 7 "That adds 3 + 4. Write 3 feet in inches first: 36.")
  (hint "3 feet = 36 inches."))
```

---

## Taking away

You cut 9 inches off the board of 2 feet 5 inches. How long is it now?

All in inches: $29 - 9 = 20$ inches. That is 1 foot 8 inches, because $20 = 12 + 8$.

```check
(number
  (ask "A ribbon is 1 foot 3 inches long. You cut off 7 inches. How many inches are left?")
  (answer 8) (unit "in") (from "12 + 3 - 7")
  (wrong-if 6 "You cannot take 7 from 3 inches and keep the foot as 10. A foot is 12 inches: 15 - 7.")
  (hint "1 foot 3 inches = 15 inches.")
  (hint "15 - 7 = ?"))
```

---

## Time in two units

A swim lasts 1 hour 20 minutes. In minutes: $60 + 20 = 80$ minutes.

```check
(number
  (ask "A trip lasts 2 hours 15 minutes. How many minutes is that?")
  (answer 135) (unit "min") (from "2 * 60 + 15")
  (wrong-if 215 "An hour is 60 minutes, not 100. 2 hours is 120 minutes, then add 15.")
  (hint "2 hours = 120 minutes."))
```

---

## A worked example

```example
(example
  (problem "A bag weighs 1 pound 6 ounces. Another weighs 12 ounces. How much do they weigh together, in ounces?")
  (step "1 pound = 16 ounces, so 1 pound 6 ounces = 22 ounces.")
  (step "Add: 22 + 12.")
  (step (number (ask "22 + 12 = ?") (answer 34) (unit "oz") (from "16 + 6 + 12")
          (wrong-if 19 "1 pound is 16 ounces, not 1. 22 + 12 = 34.")))
  (answer "Together they weigh 34 ounces, which is 2 pounds 2 ounces."))
```

---

## Practice

```check
(number
  (ask "A jar holds 1 L 200 mL of water. How many milliliters is that?")
  (answer 1200) (unit "mL") (from "1000 + 200")
  (wrong-if 201 "1 L is 1,000 mL, not 1. 1,000 + 200.")
  (hint "1 L = 1,000 mL."))
```

```check
(number
  (ask "A rope is 3 yards long. You cut off 2 feet. How many feet are left?")
  (answer 7) (unit "ft") (from "3 * 3 - 2")
  (wrong-if 1 "3 yards is not 3 feet. Each yard is 3 feet: 9 feet, then take 2.")
  (hint "3 yards = 9 feet."))
```

---

```check
(number
  (ask "A runner takes 1 minute 25 seconds. A second runner takes 50 seconds. How many seconds faster is the second runner?")
  (answer 35) (unit "sec") (from "60 + 25 - 50")
  (wrong-if 75 "1 minute is 60 seconds, not 100. 85 - 50 = 35.")
  (hint "1 minute 25 seconds = 85 seconds."))
```

```check
(number
  (ask "A path is 2 km 300 m long. How many meters is that?")
  (answer 2300) (unit "m") (from "2 * 1000 + 300")
  (wrong-if 500 "2 km is 2,000 m, not 200. 2,000 + 300.")
  (hint "2 km = 2,000 m."))
```

Write everything in the smaller unit first; then the numbers can be added and subtracted.
