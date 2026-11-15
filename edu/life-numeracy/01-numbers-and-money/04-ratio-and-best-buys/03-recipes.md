# Scaling a recipe

```lesson
(objective "Scale a recipe up or down for more or fewer people.")
(minutes 20)
(keywords "scale (a recipe)")
```

A recipe for 4 that you need for 6, or for 2: every amount changes by
the same number, so the dish tastes the same.

To **scale** a recipe is to change every amount in it by the same
number, so the amounts stay in the same ratio. For twice as many
people, double everything; for half as many, halve everything.

| Chili for 4 | for 8 (double) | for 2 (half) |
|---|---|---|
| 2 onions | 4 onions | 1 onion |
| 2 cans of beans | 4 cans | 1 can |
| 6 spoonfuls of spice | 12 spoonfuls | 3 spoonfuls |

```check
(number
  (ask "A soup for 4 uses 6 carrots. How many carrots for 8 people?")
  (answer 12) (from "6 * 8 / 4")
  (wrong-if 10 "Adding 4 carrots for 4 more people does not keep the ratio. 8 people is twice 4, so double: 12.")
  (wrong-if 3 "8 people is more than 4, so you need more carrots, not fewer.")
  (hint "8 people is how many times 4 people?"))
```

---

## The number to multiply by

When it is not simply double or half, find the amount for 1 person
first, then multiply.

For 6 people from a recipe for 4: one person needs a quarter of each
amount, then 6 people need 6 times that. That is the same as
multiplying by $6/4 = 1 1/2$.

```example
(example
  (problem "Pancakes for 4 use 2 eggs and 8 spoonfuls of flour. How much for 6?")
  (step "The number to multiply by is 6/4 = 1.5.")
  (step "Eggs: 2 * 1.5 = 3.")
  (step "Flour: 8 * 1.5 = 12 spoonfuls.")
  (answer "3 eggs and 12 spoonfuls of flour"))
```

```example
(example
  (problem "A stew for 6 uses 9 potatoes. How many for 4?")
  (step "One person: 9 ÷ 6 = 1.5 potatoes.")
  (step (number (ask "How many potatoes for 4 people?") (answer 6) (from "9 / 6 * 4")
    (wrong-if 7 "Taking 2 potatoes away for 2 fewer people does not keep the ratio. 1.5 potatoes each, times 4.")))
  (answer "6 potatoes"))
```

---

## Things that do not scale

Some things in a recipe do not change in the same ratio. Cooking time
and the oven setting often stay much the same when you double a
recipe; a bigger pot may need longer. Scale the ingredients; for time,
follow the recipe and check the food.

```check
(choice
  (ask "A cake for 8 bakes for 40 minutes. You make it for 4 in a smaller tin. Which is most sensible?")
  (right "Start checking it before 40 minutes")
  (wrong "Bake it for exactly 20 minutes" "Baking time does not halve with the amounts. A smaller cake may need a little less time, but not half: check it.")
  (wrong "Bake it for 80 minutes" "Fewer ingredients do not need more time. A smaller cake usually needs a little less.")
  (hint "Do cooking times change in the same ratio as amounts?"))
```

---

## Practice

```check
(number
  (ask "A drink for 2 uses 3 spoonfuls of syrup. How many spoonfuls for 10 people?")
  (answer 15) (from "3 * 10 / 2")
  (wrong-if 11 "Adding 8 for 8 more people does not keep the ratio. 10 people is 5 times 2, so 5 times 3.")
  (hint "10 people is how many times 2?"))
```

```check
(number
  (ask "Rice for 6 uses 3 mugs of water. How many mugs of water for 4 people?")
  (answer 2) (from "3 / 6 * 4")
  (wrong-if 1 "Taking 2 away for 2 fewer people does not keep the ratio. Each person needs half a mug: 4 halves.")
  (hint "One person needs 3 ÷ 6 mugs."))
```

```check
(number
  (ask "A recipe for 4 uses 10 spoonfuls of oats. How many spoonfuls for 6?")
  (answer 15) (from "10 * 6 / 4")
  (wrong-if 12 "Adding 2 for 2 more people does not keep the ratio. Multiply by 6/4 = 1.5: 10 * 1.5.")
  (hint "Multiply by 6/4, which is 1.5."))
```

To scale a recipe, multiply every amount by the new number of people
divided by the old one.
