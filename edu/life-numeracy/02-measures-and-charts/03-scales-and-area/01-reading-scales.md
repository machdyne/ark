# Reading scales

```lesson
(objective "Read a measuring scale by working out what each small mark is worth.")
(minutes 20)
(keywords "scale (of a measuring tool)" "interval (of a scale)")
```

You can read a kitchen scale, a measuring jug or a gauge, even when most of its marks have no numbers.

The **scale** of a measuring tool is its row of marks with numbers. Only some marks are numbered. To read the others, find the **interval**: what each small step from one mark to the next is worth.

1. Take two numbered marks next to each other.
2. Find the difference between them.
3. Count the small steps between them, and divide.

```figure
(nu2-gauge 30 100 260 0 1000 200 50 #f)
(text 160 60 "a kitchen scale, in grams" 'centre 'small)
```

```check
(number
  (ask "On this scale, how many grams is each small step worth?")
  (answer 50) (unit "g") (from "200 / 4")
  (wrong-if 1 "Each step is not 1 g here. From 0 to 200 there are 4 steps, so each is 200 / 4 = 50 g.")
  (wrong-if 40 "Count the steps, not the marks: from 0 to 200 there are 4 steps. 200 / 4 = 50.")
  (hint "How many small steps are there from 0 to 200?")
  (hint "Divide 200 by that number."))
```

---

## Reading the pointer

Now count steps from the numbered mark just below the pointer.

```figure
(nu2-gauge 30 100 260 0 1000 200 50 650)
(text 160 170 "each small step is 50 g" 'centre 'small)
```

```check
(number
  (ask "What does the scale read?")
  (answer 650) (unit "g") (from "600 + 50")
  (wrong-if 610 "The step after 600 is worth 50 g, not 10 g. So it reads 600 + 50.")
  (wrong-if 700 "The pointer is 1 step past 600, not 2. Each step is 50 g.")
  (hint "Find the numbered mark just below the pointer: 600.")
  (hint "Count the steps after it, each 50 g."))
```

---

## A different interval

Every tool can have its own interval. This measuring jug is marked every 100 mL, with 4 small steps between the numbers.

```figure
(nu2-gauge 30 100 260 0 500 100 25 175)
(text 160 60 "a measuring jug, in mL" 'centre 'small)
```

```check
(number
  (ask "What does the jug show?")
  (answer 175) (unit "mL") (from "100 + 3 * 25")
  (wrong-if 130 "Each small step here is 100 / 4 = 25 mL, not 10 mL. 3 steps past 100 is 175.")
  (hint "What is each small step worth? 100 / 4.")
  (hint "Count 3 steps past 100."))
```

---

## A worked example

```figure
(nu2-gauge 30 100 260 0 50 10 2 34)
(text 160 60 "a tire pressure gauge, in psi" 'centre 'small)
```

```example
(example
  (problem "What does this tire gauge read?")
  (step "Numbered marks go 0, 10, 20 ...: they are 10 apart.")
  (step "There are 5 small steps between them, so each step is 10 / 5 = 2.")
  (step "The pointer is 2 steps past 30: 30 + 2 * 2.")
  (answer "34 psi (pounds per square inch, a US unit of pressure)."))
```

---

## Now you

```figure
(nu2-gauge 30 100 260 0 50 10 2 46)
(text 160 60 "a tire pressure gauge, in psi" 'centre 'small)
```

```check
(number
  (ask "What does this gauge read?")
  (answer 46) (unit "psi") (from "40 + 3 * 2")
  (wrong-if 43 "That counts each step as 1. Each step is 2 here: 40 + 3 * 2.")
  (hint "Each step is worth 2.")
  (hint "The pointer is 3 steps past 40."))
```

---

## Practice

```figure
(line 30 100 290 100 'ink 1.5)
(for-range 0 9 (lambda (i) (line (+ 30 (* i 32.5)) 100 (+ 30 (* i 32.5)) (if (= 0 (modulo i 4)) 114 107) 'ink 1)))
(for-range 0 3 (lambda (i) (text (+ 30 (* i 130)) 128 i 'centre 'small)))
(arrow (+ 30 (* 5 32.5)) 64 (+ 30 (* 5 32.5)) 97 'ink 2)
(text 160 50 "a jug, in liters" 'centre 'small)
```

```check
(number
  (ask "This jug is marked in liters, with 4 steps from one liter to the next. How many liters does it show?")
  (answer 1.25) (unit "L") (from "1 + 1/4")
  (wrong-if 1.1 "Each step is a quarter of a liter, not a tenth: 1 / 4 = 0.25. One step past 1 is 1.25.")
  (wrong-if 1.5 "Half a liter would be 2 steps past 1. The pointer is 1 step past.")
  (hint "Each step is 1 / 4 of a liter.")
  (hint "Count the steps past 1."))
```

```check
(choice
  (ask "On a scale numbered 0, 20, 40, 60 with 10 small steps between numbers, what is each step worth?")
  (right "2" (true "20 / 10 = 2"))
  (wrong "10"
    "10 is how many steps there are. Each is worth the gap between numbers divided by the steps: 20 / 10.")
  (wrong "20"
    "20 is the gap between numbered marks. Divide it among the 10 steps.")
  (hint "Divide the gap between numbers by the number of steps."))
```

To read a scale, find the interval -- the gap between numbers divided by the steps -- and count steps from the last number.
