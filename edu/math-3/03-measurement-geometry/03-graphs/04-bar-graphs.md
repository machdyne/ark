# Bar graphs with a scale

```lesson
(objective "Read a bar graph whose scale counts by 2, 5 or 10.")
(standards "3.MD.B.3")
(minutes 20)
```

You can read a bar graph whose numbers count by 2s, 5s or 10s.

On a bar graph, the scale is the numbers along the side. Here they count by 2s. To read a bar, look across from its top to the scale.

```figure
(ms-bars '(("Mon" 6) ("Tue" 10) ("Wed" 4) ("Thu" 8)) 12 2 'cool)
(label 170 16 "Hours of sun" 'small 'bold)
```

```check
(number
  (ask "How many hours of sun were there on Tuesday?")
  (answer 10) (unit "hours")
  (wrong-if 5 "That counts the lines by 1s. The scale counts by 2s: 2, 4, 6, 8, 10.")
  (hint "Look across from the top of Tuesday's bar to the numbers on the side."))
```

---

## Between 2 lines

Sometimes a bar ends between 2 lines. Then it is the number halfway between them.

Here Sam's bar ends halfway between 6 and 8. The number halfway between 6 and 8 is 7.

```figure
(ms-bars '(("Sam" 7) ("Ava" 4) ("Raj" 9) ("Kim" 6)) 10 2 'warm)
(label 170 16 "Goals scored" 'small 'bold)
```

```check
(number
  (ask "Raj's bar ends halfway between 8 and 10. How many goals did Raj score?")
  (answer 9) (from "(8 + 10) / 2")
  (wrong-if 8 "The bar goes above the 8 line. It stops halfway to 10.")
  (wrong-if 10 "The bar does not reach the 10 line. It stops halfway between 8 and 10.")
  (hint "Which number is halfway between 8 and 10?"))
```

---

## A scale of 5

This scale counts by 5s: 0, 5, 10, 15, 20, 25, 30.

```figure
(ms-bars '(("Red" 15) ("Blue" 25) ("Green" 10) ("Gray" 20)) 30 5 'cool)
(label 170 16 "Cars in the lot" 'small 'bold)
```

```check
(number
  (ask "How many blue cars are in the lot?")
  (answer 25)  (wrong-if 5 "That counts the lines by 1s. The scale counts by 5s.")
  (wrong-if 20 "Look again: the blue bar goes 1 line above 20. Each line is 5 more.")
  (hint "Look across from the top of the blue bar."))
```

---

## A scale of 10

This scale counts by 10s. Halfway between 2 lines is 5 more than the lower line.

```figure
(ms-bars '(("Jan" 30) ("Feb" 45) ("Mar" 60) ("Apr" 25)) 70 10 'warm)
(label 170 16 "Books read" 'small 'bold)
```

```check
(number
  (ask "How many books were read in February?")
  (answer 45) (from "40 + 5")
  (wrong-if 40 "The bar goes above the 40 line. It stops halfway to 50.")
  (wrong-if 50 "The bar does not reach 50. Halfway between 40 and 50 is 45.")
  (hint "The bar stops halfway between 40 and 50."))
```

---

## A worked example

```figure
(ms-bars '(("Jan" 30) ("Feb" 45) ("Mar" 60) ("Apr" 25)) 70 10 'warm)
(label 170 16 "Books read" 'small 'bold)
```

```example
(example
  (problem "How many books were read in April?")
  (step "The scale counts by 10s.")
  (step "The April bar goes above 20 but not up to 30.")
  (step "It stops halfway. Halfway between 20 and 30 is 25.")
  (answer "25 books were read in April."))
```

---

## Now you finish one

```figure
(ms-bars '(("Cats" 14) ("Dogs" 18) ("Fish" 6) ("Frogs" 11)) 20 2 'cool)
(label 170 16 "Pets at a show" 'small 'bold)
```

The scale counts by 2s. The bar for frogs stops halfway between 10 and 12.

```check
(number
  (ask "How many frogs were at the show?")
  (answer 11) (from "(10 + 12) / 2")
  (wrong-if 12 "The bar does not reach 12. Halfway between 10 and 12 is 11.")
  (wrong-if 10 "The bar goes above 10. It stops halfway to 12.")
  (hint "Which number is between 10 and 12?"))
```

---

## Practice

```figure
(ms-bars '(("Cats" 14) ("Dogs" 18) ("Fish" 6) ("Frogs" 11)) 20 2 'cool)
(label 170 16 "Pets at a show" 'small 'bold)
```

```check
(number
  (ask "How many dogs were at the show?")
  (answer 18)  (wrong-if 9 "That counts lines by 1s. The scale counts by 2s.")
  (hint "Count by 2s up to the top of the dogs bar."))
```

```check
(choice
  (ask "A bar graph counts by 5s. A bar stops on the third line above 0. What number is it?")
  (right "15" (true "3 * 5 = 15"))
  (wrong "3" (false "3 * 5 = 3")
    "3 is how many lines. Each line is 5 more, so count 5, 10, 15.")
  (wrong "8" (false "3 * 5 = 8")
    "That adds 3 + 5. Count by 5s 3 times: 5, 10, 15.")
  (hint "Count by 5s, 1 count for each line."))
```

---

```check
(number
  (ask "A bar graph counts by 10s. A bar stops halfway between 60 and 70. What number is it?")
  (answer 65) (from "60 + 5")
  (wrong-if 61 "Halfway between 60 and 70 is 5 more than 60, not 1 more.")
  (wrong-if 70 "The bar does not reach 70. It stops halfway.")
  (hint "Halfway between 2 tens is 5 more."))
```

Now you can read a bar graph: look across from the top of a bar, and count by the scale.
