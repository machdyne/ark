# Times problems

```lesson
(objective "Solve word problems that multiply a fraction by a whole number, such as 5 people who each drink 3/4 liter.")
(standards "4.NF.B.4c")
(minutes 25)
```

You can solve word problems that multiply a fraction by a whole
number.

5 people each drink $3/4$ liter of juice. How much do they drink in
all? There are 5 equal groups of $3/4$ liter:

$$ 5 * (3/4) = 15/4 = 3 3/4 $$

They drink $3 3/4$ liters, between 3 and 4 liters.

```figure
(m4p3-groups 10 30 52 26 5 3 4 10 'warm)
(for-range 0 5 (lambda (i) (text (+ 36 (* i 62)) 76 "3/4" 'centre 'small)))
(m4p3-wholes 60 100 200 22 15 4 'warm)
(caption "5 × 3/4 liter = 3 3/4 liters")
```

```check
(choice
  (ask "4 friends each eat" (math "2/8") "of a pizza. Which shows how much pizza they eat?")
  (right "4 × 2/8" (true "4 * 2/8 = 8/8"))
  (wrong "4 + 2/8"
    "Adding 4 adds 4 whole pizzas. There are 4 equal groups of 2/8: multiply.")
  (wrong "2/8 - 4"
    "Nothing is taken away. Each friend eats the same amount, so make 4 groups.")
  (hint "Equal groups: how many, and how big?"))
```

---

## Each and in all

"Each" tells the size of one group. The number of groups is the whole
number. "In all" asks for the product.

A plant grows $2/10$ of a centimeter each day. How much does it grow in
7 days? $7 * (2/10) = 14/10 = 1 4/10$ centimeters.

```check
(number
  (ask "A snail moves" (math "3/5") "meter each minute. How far does it move in 4 minutes? Type it like 2 1/4.")
  (answer 2.4) (unit "meters") (from "4 * 3/5")
  (wrong-if 12 "12 is the numerator: 12/5 meters. That is 2 2/5 meters.")
  (wrong-if 4.6 "You added 4 + 3/5. It moves 3/5 meter 4 times: multiply.")
  (hint "4 × 3/5 = 12/5."))
```

---

## Worked example

```example
(example
  (problem "Each bow uses 2/3 meter of ribbon. How much ribbon do 6 bows use?")
  (step "6 equal groups of 2/3 meter: 6 × 2/3.")
  (step "6 × 2 = 12, so 12/3 meters.")
  (step "12 ÷ 3 = 4.")
  (answer "6 bows use 4 meters of ribbon."))
```

```example
(example
  (problem "A runner runs 5/8 of a lap each minute. How many laps in 3 minutes?")
  (step "3 × 5/8 = 15/8.")
  (step (choice (ask "15/8 is between which two whole numbers?")
    (right "1 and 2" (true "1 < 15/8 < 2"))
    (wrong "15 and 16" "15 is the numerator. 8/8 = 1 and 16/8 = 2.")))
  (answer "15/8 = 1 7/8 laps, between 1 and 2 laps."))
```

---

## Practice

```check
(number
  (ask "Each glass holds" (math "1/4") "liter. How many liters do 10 glasses hold? Type it like 2 1/4.")
  (answer 2.5) (unit "liters") (from "10 * 1/4")
  (wrong-if 10.25 "You added. 10 glasses of 1/4 liter: 10 × 1/4 = 10/4.")
  (wrong-if 10 "10/4 is 10 fourths of a liter: 2 2/4 liters.")
  (hint "10/4 = 2 R 2 fourths."))
```

```check
(choice
  (ask "A cat eats" (math "3/8") "kilogram of food each week. About how much does it eat in 5 weeks?")
  (right "Between 1 and 2 kilograms" (true "1 < 5 * 3/8 < 2"))
  (wrong "Between 15 and 16 kilograms"
    "15 is the numerator: 15/8 kilogram. 8/8 = 1 and 16/8 = 2.")
  (wrong "Less than 1 kilogram"
    "One week is less than 1 kilogram, but 5 weeks is 15/8, more than 8/8.")
  (hint "5 × 3/8 = 15/8."))
```

---

```check
(fraction
  (ask "A recipe uses" (math "2/3") "kilogram of rice. Leo makes it 3 times. How much rice does he use?")
  (answer 6 3) (equivalent) (true "3 * 2/3 = 6/3")
  (wrong-if (6 9) "The parts are thirds of a kilogram. 3 groups of 2 thirds are 6 thirds.")
  (wrong-if (5 3) "You added 3 + 2. Multiply: 3 × 2 = 6 thirds.")
  (hint "3 × 2/3 = ?/3"))
```

So: in a times problem, find the number of equal groups and the
fraction in each, then multiply.
