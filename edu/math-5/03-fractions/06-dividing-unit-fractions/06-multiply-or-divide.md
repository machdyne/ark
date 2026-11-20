# Multiply or divide?

```lesson
(objective "Decide whether a fraction word problem needs multiplying or dividing, and solve it.")
(standards "5.NF.B.7c" "5.NF.B.6")
(minutes 30)
```

Before you solve a fraction problem, decide what it asks.

- A fraction of an amount, or equal groups: multiply.
  "$2/3$ of 6 feet", "4 bags of $3/4$ pound".
- Sharing equally, or how many pieces fit: divide.
  "$1/2$ pound shared by 3", "how many $1/4$ cups in 2 cups".

```check
(choice
  (ask "A ribbon is 6 feet long. Ana uses" (math "1/3") "of it. Multiply or divide?")
  (right "Multiply: (1/3) x 6 = 2 feet" (true "(1/3) * 6 = 2"))
  (wrong "Divide: 6 ÷ (1/3) = 18 pieces"
    "That counts how many 1/3-foot pieces fit. The question asks for 1/3 OF the ribbon: multiply.")
  (wrong "Divide: (1/3) ÷ 6 = 1/18 foot"
    "Nothing is shared among 6. She uses a fraction of the ribbon: (1/3) x 6.")
  (hint "\"1/3 of\" means ..."))
```

---

## Look for the question

Same numbers, different questions:

- 2 cups of milk, each glass holds $1/4$ cup. How many glasses?
  $2 ÷ (1/4) = 8$.
- 2 glasses, each with $1/4$ cup. How much milk? $2 * (1/4) = 1/2$ cup.

```check
(choice
  (ask "Each lap is" (math "1/4") "mile. Jo runs 3 laps. How far does she run?")
  (right "Multiply: 3 x (1/4) = 3/4 mile" (true "3 * (1/4) = 3/4"))
  (wrong "Divide: 3 ÷ (1/4) = 12 miles"
    "That would count how many 1/4-mile laps fit in 3 miles. Here she runs 3 laps of 1/4 mile: equal groups.")
  (wrong "Divide: (1/4) ÷ 3 = 1/12 mile"
    "Nothing is shared. 3 laps of 1/4 mile each: multiply.")
  (hint "3 equal groups of 1/4."))
```

---

## Check the size

A quick check of the size helps:

- $(1/3) * 6 = 2$: less than 6, since you take a part of 6.
- $6 ÷ (1/3) = 18$: more than 6, since many small pieces fit.
- $(1/3) ÷ 6 = 1/18$: less than $1/3$, since $1/3$ is shared.

```check
(number
  (ask "A pitcher holds 2 liters. Each cup holds" (math "1/5") "liter. How many cups can you fill?")
  (answer 10) (unit "cups") (from "2 ÷ (1/5)")
  (wrong-if 0.4 "That is 2 x (1/5). You are counting how many fifths fit in 2: divide.")
  (hint "How many fifths of a liter fit in 2 liters?"))
```

---

## Worked example

```example
(example
  (problem "There is 1/2 of a pie. Sam eats 1/3 of it. How much of the whole pie does he eat?")
  (step "1/3 OF the half: a fraction of an amount. Multiply.")
  (step "(1/3) x (1/2) = 1/6.")
  (step "Size check: less than 1/2, since he eats a part of it.")
  (answer "Sam eats 1/6 of the pie."))
```

```example
(example
  (problem "There is 1/2 of a pie. 3 friends share it equally. How much of the whole pie does each get?")
  (step "Shared equally: divide. (1/2) ÷ 3.")
  (step (fraction (ask "(1/2) ÷ 3 = ?") (answer 1 6) (equivalent) (true "(1/2) ÷ 3 = 1/6")
    (wrong-if (3 2) "3/2 is more than the half there is. Sharing gives each a smaller part.")))
  (answer "Each friend gets 1/6 of the pie: the same as 1/3 of 1/2."))
```

---

## Practice

```check
(fraction
  (ask "A recipe needs" (math "3/4") "cup of sugar. Lin makes" (math "1/2") "of the recipe. How much sugar does she need, in cups?")
  (answer 3 8) (equivalent) (true "(1/2) * (3/4) = 3/8")
  (wrong-if (5 4) "That adds 1/2 to 3/4. Half of the recipe needs half the sugar: (1/2) x (3/4).")
  (wrong-if (1 4) "That subtracts. Half OF 3/4 means multiply.")
  (hint "\"1/2 of the recipe\": multiply."))
```

```check
(number
  (ask "A board is 4 feet long. It is cut into pieces" (math "1/3") "foot long. How many pieces?")
  (answer 12) (unit "pieces") (from "4 ÷ (1/3)")
  (wrong-if 1.3333333333 "That is (1/3) x 4. You are counting how many 1/3-foot pieces fit: 4 ÷ (1/3).")
  (hint "How many thirds fit in 4?"))
```

---

```check
(fraction
  (ask "2 brothers share" (math "1/4") "of a bag of popcorn equally. What part of the bag does each get?")
  (answer 1 8) (equivalent) (true "(1/4) ÷ 2 = 1/8")
  (wrong-if (1 2) "That is 2 x (1/4). Sharing 1/4 between 2 gives each less than 1/4.")
  (hint "Shared equally: divide."))
```

```check
(number
  (ask "Each box of crayons weighs" (math "2/5") "pound. How much do 10 boxes weigh, in pounds?")
  (answer 4) (unit "pounds") (from "10 * (2/5)")
  (wrong-if 25 "Each box weighs less than 1 pound, so 10 boxes weigh less than 10 pounds. 10 equal groups of 2/5 pound: multiply.")
  (hint "10 groups of 2/5."))
```

Read the question: a fraction of an amount or equal groups means
multiply; sharing or counting how many fit means divide.
