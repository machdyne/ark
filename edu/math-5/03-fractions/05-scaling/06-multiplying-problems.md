# Multiplying word problems

```lesson
(objective "Solve real-world problems that multiply fractions and mixed numbers, such as making 1 1/2 times a recipe.")
(standards "5.NF.B.6")
(minutes 30)
```

Many problems ask for a fraction of an amount, or an amount scaled.
Both are multiplying.

A recipe uses $3/4$ cup of oats. Mia makes $1 1/2$ times the recipe.
How many cups of oats does she need?

$$ 1 1/2 * (3/4) = (3/2) * (3/4) $$

$$ (3/2) * (3/4) = 9/8 = 1 1/8 $$

Check by scaling: $1 1/2$ is more than 1, so she needs more than $3/4$
cup. $1 1/8$ cups is reasonable.

```figure
(m5p3-scale 190 2 0.125 1 0.75 1.5 "3/4 cup" "1 1/2 times: 9/8 cups")
```

```check
(number
  (ask "A recipe uses" (math "2/3") "cup of milk. Leo makes" (math "1 1/2") "times the recipe. How many cups of milk does he need?")
  (answer 1) (unit "cups") (from "(3/2) * (2/3)")
  (wrong-if 2.1666666667 "That adds 1 1/2 and 2/3. Making 1 1/2 times the recipe multiplies: (3/2) x (2/3).")
  (hint "1 1/2 = 3/2.")
  (hint "(3/2) x (2/3) = 6/6."))
```

---

## "Of" means times

"$2/3$ of the class", "$1/2$ of the pizza": a fraction of an amount is
the fraction times the amount.

A field is $3/4$ mile long. A path runs along $2/3$ of it. How long is the path?

$$ (2/3) * (3/4) = 6/12 = 1/2 $$

The path is $1/2$ mile long.

```check
(fraction
  (ask "Sara has" (math "3/4") "of a pizza. She eats" (math "1/3") "of what she has. What part of a whole pizza does she eat?")
  (answer 3 12) (equivalent) (true "(1/3) * (3/4) = 3/12")
  (wrong-if (5 12) "That subtracts. She eats 1/3 OF her 3/4: multiply.")
  (wrong-if (4 7) "Do not add. 1/3 of 3/4 is (1 x 3)/(3 x 4).")
  (hint "1/3 of 3/4 = (1/3) x (3/4)."))
```

---

## Mixed numbers in problems

A board is $2 1/2$ meters long. Ty uses $3/5$ of it. How much does he
use?

$$ (3/5) * 2 1/2 = (3/5) * (5/2) $$

$$ (3/5) * (5/2) = 15/10 = 1 1/2 $$

Ty uses $1 1/2$ meters, less than the board: right, since $3/5 < 1$.

```check
(number
  (ask "A bag holds" (math "4 1/2") "pounds of apples. Max uses" (math "2/3") "of them for a pie. How many pounds does he use?")
  (answer 3) (unit "pounds") (from "(2/3) * (9/2)")
  (wrong-if 6.75 "That is 4 1/2 x 3/2, which stretches. 2/3 of the apples is less than 4 1/2.")
  (hint "4 1/2 = 9/2.")
  (hint "(2/3) x (9/2) = 18/6."))
```

---

## Worked example

```example
(example
  (problem "Each lap of a track is 1/4 mile. Ana runs 6 1/2 laps. How far does she run?")
  (step "6 1/2 laps of 1/4 mile: 6 1/2 x (1/4).")
  (step "(13/2) x (1/4) = 13/8.")
  (step "13/8 = 1 5/8.")
  (answer "Ana runs 1 5/8 miles."))
```

```example
(example
  (problem "A ribbon is 3/4 yard long. Jo cuts off 1/2 of it. How long is the piece?")
  (step "1/2 of 3/4 yard: (1/2) x (3/4).")
  (step (fraction (ask "(1/2) x (3/4) = ?") (answer 3 8) (equivalent) (true "(1/2) * (3/4) = 3/8")
    (wrong-if (1 4) "That subtracts 1/2. Half of 3/4 is (1 x 3)/(2 x 4).")))
  (answer "The piece is 3/8 yard long."))
```

---

## Practice

```check
(number
  (ask "A plant grows" (math "2 1/4") "inches a week. How much does it grow in 4 weeks, in inches?")
  (answer 9) (unit "inches") (from "4 * (9/4)")
  (wrong-if 8.25 "Multiply the 1/4 by 4 too: 4 x (1/4) = 1. So 8 + 1.")
  (hint "4 x 2 + 4 x (1/4)."))
```

```check
(fraction
  (ask "In a class," (math "5/6") "of the students like art. Of those," (math "2/5") "like to paint. What part of the class likes to paint?")
  (answer 10 30) (equivalent) (true "(2/5) * (5/6) = 10/30")
  (wrong-if (7 11) "Do not add. 2/5 of 5/6 is (2 x 5)/(5 x 6).")
  (hint "(2/5) x (5/6)."))
```

---

```check
(number
  (ask "A pitcher holds" (math "1 1/3") "liters. Kim fills it 3 times. How many liters is that?")
  (answer 4) (unit "liters") (from "3 * (4/3)")
  (wrong-if 3.3333333333 "Multiply the 1/3 by 3 too: 3 x (1/3) = 1. So 3 + 1.")
  (hint "(4/3) x 3."))
```

```check
(choice
  (ask "Without working it out: Rosa makes" (math "3/4") "of a recipe that needs 2 cups of flour. Which is true?")
  (right "She needs less than 2 cups" (true "(3/4) * 2 < 2"))
  (wrong "She needs more than 2 cups"
    "3/4 of the recipe is less than the whole recipe, so less flour.")
  (wrong "She needs 2 3/4 cups"
    "That adds 3/4. Making 3/4 of a recipe multiplies: (3/4) x 2 = 1 1/2 cups.")
  (hint "Is 3/4 more or less than 1?"))
```

For a multiplying problem: find the fraction and the amount, multiply,
and check the size with scaling.
