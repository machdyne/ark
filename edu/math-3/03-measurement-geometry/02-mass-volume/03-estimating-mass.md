# Estimating mass

```lesson
(objective "Estimate a mass in grams or kilograms from objects whose mass you know.")
(standards "3.MD.A.2")
(minutes 20)
```

You can estimate a mass by comparing it with things whose mass you know.

Some masses are good to know:

- 1 paper clip: about 1 g
- 1 US nickel (a 5-cent coin): 5 g
- 1 kilogram: 1000 g, about 1000 paper clips

```check
(number
  (ask "About how many grams are 10 paper clips?")
  (answer 10) (unit "g") (from "10 * 1")
  (wrong-if 1 "1 gram is about 1 paper clip. 10 paper clips are about 10 grams.")
  (wrong-if 1000 "1000 g is about 1000 paper clips. 10 clips are much less.")
  (hint "Each paper clip is about 1 g."))
```

```sources
(source "United States Mint, Coin Specifications: the 5-cent coin, 5.000 g")
```

---

## Compare with coins

An eraser balances 4 nickels. Each nickel is 5 g. So the eraser is about 20 g.

$$ 5 + 5 + 5 + 5 = 20 $$

```figure
(ms-balance "eraser" "4 nickels" 0)
(caption "4 nickels of 5 g each: about 20 g")
```

```check
(number
  (ask "A small toy balances 6 nickels. About how many grams is the toy?")
  (answer 30) (unit "g") (from "6 * 5")
  (wrong-if 6 "6 is how many nickels. Each nickel is 5 g, so count by 5s 6 times.")
  (wrong-if 11 "6 + 5 adds the count and the mass. Count by 5s instead: 5, 10, 15, 20, 25, 30.")
  (hint "Each nickel is 5 g.")
  (hint "Count by 5s 6 times."))
```

---

## Compare with a kilogram

For heavy things, compare with a 1 kg mass.

A full backpack feels like 3 of the 1 kg masses. So the backpack is about 3 kg.

```figure
(ms-balance "backpack" "1 kg x 3" 0)
(caption "About 3 kg")
```

```check
(number
  (ask "A pumpkin feels like 5 of the 1 kg masses. About how many kilograms is it?")
  (answer 5) (unit "kg") (from "5 * 1")
  (wrong-if 1 "Each mass is 1 kg. 5 of them are 5 kg.")
  (wrong-if 5000 "5 kg is the same as 5000 g. But the question asks in kilograms.")
  (hint "Each mass is 1 kg."))
```

---

## Does the estimate make sense?

A good estimate uses the right unit and a number that makes sense. Think: is it about as heavy as a few paper clips, or as many bags of 1 kg?

A medium apple has a mass of about 200 g.

```check
(choice
  (ask "Which is the best estimate for the mass of a medium apple?")
  (right "200 g")
  (wrong "200 kg"
    "200 kg is heavier than 2 grown-ups. An apple is easy to hold in 1 hand.")
  (wrong "2 g"
    "2 g is about 2 paper clips. An apple is much heavier than that.")
  (hint "Is an apple heavier than 2 paper clips? Can you lift it with 1 hand?"))
```

```sources
(source "USDA FoodData Central: Apples, raw, with skin; 1 medium apple, 182 g")
```

---

## A worked example

```figure
(ms-balance "orange" "nickels" 0)
(caption "An orange and a pile of nickels")
```

```example
(example
  (problem "An orange balances 40 nickels. About how many grams is the orange?")
  (step "Each nickel is 5 g.")
  (step "40 nickels are 40 groups of 5 g: 40 x 5.")
  (step (number (ask "40 x 5 = ?") (answer 200) (from "40 * 5")
          (wrong-if 45 "That adds 40 + 5. There are 40 groups of 5, so multiply.")))
  (answer "The orange is about 200 g."))
```

---

## Now you finish one

A box of crayons balances 20 paper clips. Each paper clip is about 1 g.

```check
(number
  (ask "About how many grams is the box of crayons?")
  (answer 20) (unit "g") (from "20 * 1")
  (wrong-if 21 "That adds 20 + 1. 20 clips of about 1 g each are about 20 g.")
  (hint "1 paper clip is about 1 g."))
```

---

## Practice

```check
(choice
  (ask "Which is the best estimate for the mass of a 3rd grader?")
  (right "30 kg")
  (wrong "30 g"
    "30 g is about 6 nickels. A child is much heavier, so use kilograms.")
  (wrong "300 kg"
    "300 kg is heavier than 4 grown-ups together. A child is much lighter than that.")
  (hint "A child is heavy, so use kilograms. Is it a few or hundreds?"))
```

```check
(number
  (ask "A ring balances 2 nickels. About how many grams is the ring?")
  (answer 10) (unit "g") (from "2 * 5")
  (wrong-if 2 "2 is how many nickels. Each is 5 g: 5 + 5.")
  (wrong-if 7 "2 + 5 adds the count and the mass. 2 nickels are 5 g + 5 g.")
  (hint "Each nickel is 5 g."))
```

---

```check
(choice
  (ask "Which object has a mass of about 1 kg?")
  (right "Something as heavy as 1000 paper clips")
  (wrong "Something as heavy as 1 paper clip"
    "1 paper clip is about 1 gram. 1 kilogram is 1000 grams.")
  (wrong "Something as heavy as 10 paper clips"
    "10 paper clips are about 10 grams. 1 kilogram is 1000 grams.")
  (hint "How many grams are in 1 kilogram?"))
```

Now you can estimate a mass by comparing it with paper clips, nickels or 1 kg masses.
