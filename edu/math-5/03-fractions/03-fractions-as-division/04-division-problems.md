# Division word problems

```lesson
(objective "Solve word problems that divide whole numbers with answers as fractions or mixed numbers, and tell between which two whole numbers the answer lies.")
(standards "5.NF.B.3")
(minutes 25)
```

Many sharing problems have answers that are fractions or mixed
numbers. Write the division, then write it as a fraction.

A 50-pound sack of rice is shared equally by 9 families. How many
pounds does each family get?

$$ 50 ÷ 9 = 50/9 = 5 5/9 $$

Each family gets $5 5/9$ pounds: between 5 and 6 pounds.

```figure
(m5p3-line 30 290 120 6 9 'whole)
(nl-mark (/ 50 9) 'warm)
(math (nl-x (/ 50 9)) 90 "5 5/9" 18)
(caption "50/9 is between 5 and 6.")
```

```check
(number
  (ask "6 runners share 20 liters of water equally. How many liters does each get? Type it like 2 1/4.")
  (answer 3.3333333333) (within 0.0001) (unit "liters") (from "20 ÷ 6")
  (wrong-if 0.3 "That is 6 ÷ 20. The water, 20 liters, is shared, so 20 ÷ 6.")
  (wrong-if 3 "3 each uses 18 liters. The 2 liters left are shared too: 2/6 each.")
  (hint "20 ÷ 6 = 3 R 2.")
  (hint "The 2 left over shared by 6 is 2/6."))
```

---

## Which number is divided?

Ask: what is being shared, and into how many parts?

- What is shared is the dividend: it goes on top.
- The number of shares is the divisor: it goes on the bottom.

"5 people share 3 yards of cloth": the cloth is shared. $3 ÷ 5 = 3/5$
yard each.

```check
(choice
  (ask "4 kittens share 3 cans of food equally. Which division gives each kitten's share?")
  (right "3 ÷ 4 = 3/4 can" (true "3 ÷ 4 = 3/4"))
  (wrong "4 ÷ 3 = 1 1/3 cans"
    "The food is shared, so the 3 cans are divided. Each kitten gets less than 1 can, since there are more kittens than cans.")
  (wrong "4 x 3 = 12 cans"
    "Sharing is dividing, not multiplying. 3 cans shared by 4 is 3 ÷ 4.")
  (hint "What is being shared?"))
```

---

## Between which two whole numbers?

To find where a quotient lies, look at the whole part of the mixed
number.

$$ 45 ÷ 7 = 6 3/7 $$

$6 3/7$ is more than 6 and less than 7. So each share is between 6 and
7.

```check
(choice
  (ask "A 26-meter rope is cut into 8 equal pieces. Between which two whole numbers of meters is each piece?")
  (right "Between 3 and 4" (true "3 < 26/8 < 4"))
  (wrong "Between 2 and 3"
    "3 x 8 = 24, which is less than 26. So each piece is more than 3 meters.")
  (wrong "Between 26 and 27"
    "The rope is cut into 8 pieces, so each is much shorter than 26 meters.")
  (hint "26 ÷ 8 = 3 R 2."))
```

---

## Worked example

```example
(example
  (problem "3 classmates share a 10-inch sandwich equally. How long is each part?")
  (step "The sandwich is shared: 10 ÷ 3.")
  (step "10 ÷ 3 = 3 R 1. The 1 inch left is shared too: 1/3 each.")
  (step "10 ÷ 3 = 10/3 = 3 1/3, between 3 and 4.")
  (answer "Each part is 3 1/3 inches long."))
```

```example
(example
  (problem "8 friends share a 5-foot roll of paper equally. How many feet does each get?")
  (step "The roll is shared: 5 ÷ 8.")
  (step (fraction (ask "5 ÷ 8 = ?") (answer 5 8) (equivalent) (true "5 ÷ 8 = 5/8")
    (wrong-if (8 5) "8/5 is 8 ÷ 5. The 5 feet of roll are shared by 8, so 5 ÷ 8.")))
  (answer "Each friend gets 5/8 foot, between 0 and 1."))
```

---

## Practice

```check
(number
  (ask "A farmer puts 75 pounds of potatoes into 10 bags equally. How many pounds in each bag? Type it like 2 1/4.")
  (answer 7.5) (unit "pounds") (from "75 ÷ 10")
  (wrong-if 7 "That leaves 5 pounds. Share them too: 5/10 pound more in each bag.")
  (hint "75 ÷ 10 = 7 R 5."))
```

```check
(fraction
  (ask "7 children share 2 pizzas equally. What part of a pizza does each get?")
  (answer 2 7) (equivalent) (true "2 ÷ 7 = 2/7")
  (wrong-if (7 2) "There are more children than pizzas. Each gets less than 1 pizza: 2/7.")
  (hint "The pizzas are shared."))
```

---

```check
(choice
  (ask "A 100-centimeter ribbon is cut into 3 equal pieces. How long is each piece?")
  (right "33 1/3 centimeters, between 33 and 34" (true "100 ÷ 3 = 33 1/3"))
  (wrong "33 centimeters"
    "33 x 3 = 99, so 1 centimeter is left. Cut it too: 1/3 centimeter more each.")
  (wrong "3/100 centimeter"
    "That is 3 ÷ 100. The ribbon is shared, so 100 ÷ 3.")
  (hint "100 ÷ 3 = 33 R 1."))
```

```check
(number
  (ask "12 hikers share 40 kilograms of gear equally. How many kilograms does each carry? Type it like 2 1/4.")
  (answer 3.3333333333) (within 0.0001) (unit "kilograms") (from "40 ÷ 12")
  (wrong-if 3.4 "The remainder 4 is shared by 12, so it is 4/12, not 4 tenths.")
  (hint "40 ÷ 12 = 3 R 4.")
  (hint "4/12 = 1/3."))
```

To solve a sharing problem, divide what is shared by the number of
shares, and write the quotient as a fraction or a mixed number.
