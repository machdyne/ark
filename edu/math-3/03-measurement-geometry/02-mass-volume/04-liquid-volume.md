# Liquid volume

```lesson
(objective "Measure liquid volume in liters with a marked container.")
(standards "3.MD.A.2")
(minutes 20)
(keywords "liquid volume" "liter")
```

You can measure how much liquid is in a container.

**Liquid volume** is how much space a liquid takes up. Two jugs are the same size here. The jug with the higher water has more liquid volume.

```figure
(ms-jug 50 40 70 160 5 4)
(ms-jug 190 40 70 160 5 2)
(label 85 222 "jug A" 'small)
(label 225 222 "jug B" 'small)
```

```check
(choice
  (ask "The 2 jugs are the same size. Which holds more liquid volume?")
  (right "Jug A")
  (wrong "Jug B"
    "Jug B has less water in it: its water is lower. In the same size jugs, higher water means more.")
  (wrong "They hold the same"
    "The jugs are the same size, but the water is at different heights. Jug A's water is higher.")
  (hint "Which jug has the higher water?"))
```

---

## The liter

A **liter** is a unit of liquid volume. You write it as **L**. A big bottle of soda often holds 2 liters.

This container has a mark for each liter. Read the mark at the top of the water.

```figure
(ms-jug 110 30 100 180 6 3)
(caption "A container marked in liters")
```

```check
(number
  (ask "How many liters of water are in the container?")
  (answer 3) (unit "L")
  (wrong-if 6 "6 L is the top mark: what the container can hold. The water is only up to 3 L.")
  (wrong-if 4 "Read the mark at the top of the water. It is at the 3 L mark.")
  (hint "Find the mark at the top of the water."))
```

```sources
(source "BIPM, The International System of Units (SI), 9th edition (2019): the liter, a unit for use with the SI")
```

---

## Pour it in

Move the slider to pour 1 liter at a time into the container.

```figure
(define n (slider 'n 0 8 2 "Liters poured" 1))
(ms-jug 110 30 100 180 8 n)
(caption (string-append (fmt n 0) " L in the container"))
```

```check
(number
  (ask "There are 2 L in the container. You pour in 3 L more. How many liters are in it now?")
  (answer 5) (unit "L") (from "2 + 3")
  (wrong-if 3 "3 L is what you poured. There were already 2 L in it.")
  (wrong-if 1 "Pouring in more water makes more, not less. Add: 2 + 3.")
  (hint "Use the slider: start at 2, then go up 3."))
```

---

## A different container

When you pour water into a container of another shape, the water looks different. But the liquid volume stays the same.

```figure
(ms-jug 30 135 120 75 3 2)
(ms-jug 210 30 50 180 3 2)
(label 90 228 "wide" 'small)
(label 235 228 "thin" 'small)
```

```check
(choice
  (ask "You pour 2 L from the wide container into the thin one. How much water is in the thin one?")
  (right "2 L")
  (wrong "More than 2 L, because the water is higher"
    "The water is higher because the container is thin. No water was added, so it is still 2 L.")
  (wrong "Less than 2 L, because the container is thin"
    "No water was spilled. The same 2 L just fill the thin container to a higher mark.")
  (hint "Did you add any water, or spill any?"))
```

---

## A worked example

```figure
(ms-jug 40 40 70 160 5 2)
(ms-jug 190 40 70 160 5 3)
(label 75 222 "pot" 'small)
(label 225 222 "pail" 'small)
```

```example
(example
  (problem "A pot has 2 L of water. A pail has 3 L. You pour both into a big tub. How many liters are in the tub?")
  (step "Read each container: 2 L and 3 L.")
  (step "Pouring them together adds the liters.")
  (step (number (ask "2 + 3 = ?") (answer 5) (from "2 + 3")
          (wrong-if 6 "2 + 3 is 5. Count on 3 from 2: 3, 4, 5.")))
  (answer "There are 5 L in the tub."))
```

---

## Now you finish one

```figure
(ms-jug 110 30 100 180 8 7)
(caption "A tank marked in liters")
```

A fish tank is filled to the 7 L mark. You take out 2 L to clean it.

```check
(number
  (ask "How many liters are left in the tank?")
  (answer 5) (unit "L") (from "7 - 2")
  (wrong-if 9 "Taking water out leaves less, so subtract: 7 - 2.")
  (wrong-if 2 "2 L is what you took out. Subtract it from the 7 L.")
  (hint "Read the tank, then take away 2."))
```

---

## Practice

```figure
(ms-jug 110 30 100 180 10 6)
```

```check
(number
  (ask "How many liters of water are in this container?")
  (answer 6) (unit "L")
  (wrong-if 10 "10 L is the top mark, what it can hold. Read the mark at the top of the water.")
  (hint "Find the mark at the top of the water."))
```

---

```check
(choice
  (ask "Which can you measure in liters?")
  (right "The water in a bathtub")
  (wrong "The mass of a rock"
    "Mass is measured in grams or kilograms. Liters measure liquid volume.")
  (wrong "How long a pencil is"
    "Length is measured in inches or centimeters. Liters measure liquid volume.")
  (hint "Liters measure how much liquid."))
```

```check
(number
  (ask "A container has 4 L of juice. You pour in 4 L more. How many liters are in it?")
  (answer 8) (unit "L") (from "4 + 4")
  (wrong-if 4 "There were 4 L, and you poured in 4 L more. Add them.")
  (hint "4 + 4 = ?"))
```

Now you can measure liquid volume in liters (L) by reading the mark at the top of the liquid.
