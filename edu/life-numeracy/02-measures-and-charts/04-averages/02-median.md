# The median

```lesson
(objective "Find the median of a set of numbers, odd or even in count.")
(minutes 20)
(keywords "median")
```

You can find the median: the middle value of a set of numbers.

The **median** is the middle number when the numbers are put in order from smallest to biggest. Half the numbers are at or below it, half at or above it.

Rents of 5 apartments: \$900, \$1200, \$850, \$1000, \$950. In order:

\$850, \$900, **\$950**, \$1000, \$1200

The middle one, the 3rd of 5, is \$950. That is the median.

```figure
(number-line 30 290 120 800 1250 50 100)
(nl-mark 850 'ink)
(nl-mark 900 'ink)
(nl-mark 950 'warm "median")
(nl-mark 1000 'ink)
(nl-mark 1200 'ink)
(caption "5 rents in order: 2 below the median, 2 above")
```

```check
(number
  (ask "Find the median of 7, 2, 9, 4, 5.")
  (answer 5)
  (wrong-if 9 "9 is in the middle of the list as written, but the numbers must be put in order first: 2, 4, 5, 7, 9.")
  (wrong-if 5.4 "5.4 is the mean. The median is the middle number once they are in order.")
  (hint "Put them in order first.")
  (hint "2, 4, 5, 7, 9: which is in the middle?"))
```

---

## Always order first

The most common mistake is to take the middle of the list as it was given. Always put the numbers in order first.

```check
(choice
  (ask "Daily sales: \$40, \$90, \$60. What is the median?")
  (right "\$60" (true "40 < 60 < 90"))
  (wrong "\$90"
    "\$90 is the middle of the list as written. In order -- 40, 60, 90 -- the middle is \$60.")
  (wrong "\$190"
    "That is the total. The median is the middle value in order.")
  (hint "Put the three amounts in order."))
```

---

## An even number of values

With an even count there are 2 middle numbers. The median is halfway between them: add the 2 and divide by 2.

4 prices in order: \$3, \$5, \$8, \$10. The middle two are 5 and 8, so the median is (5 + 8) / 2 = \$6.50.

```check
(number
  (ask "Find the median of 2, 6, 10, 12.")
  (answer 8) (from "(6 + 10) / 2")
  (wrong-if 6 "With 4 numbers there are 2 in the middle: 6 and 10. The median is halfway between them.")
  (wrong-if 7.5 "7.5 is the mean. The median is halfway between the 2 middle numbers: (6 + 10) / 2.")
  (hint "The 2 middle numbers are 6 and 10."))
```

---

## A worked example

```example
(example
  (problem "Ages of 6 people at a meeting: 34, 51, 28, 45, 39, 60. What is the median age?")
  (step "In order: 28, 34, 39, 45, 51, 60.")
  (step "6 values: the middle two are the 3rd and 4th, 39 and 45.")
  (step "(39 + 45) / 2 = 42.")
  (answer "The median age is 42."))
```

```check
(number
  (ask "Now you: travel times of 15, 40, 25, 20, 35, 30 minutes. What is the median, in minutes?")
  (answer 27.5) (unit "minutes") (from "(25 + 30) / 2")
  (wrong-if 22.5 "That takes the middle two as written (25 and 20). Order first: 15, 20, 25, 30, 35, 40.")
  (hint "Put them in order.")
  (hint "The middle two are 25 and 30."))
```

---

## Practice

```check
(number
  (ask "Find the median of 11, 3, 8, 15, 6, 9, 4.")
  (answer 8)
  (wrong-if 15 "15 is in the middle as written. In order: 3, 4, 6, 8, 9, 11, 15. The middle (4th) is 8.")
  (hint "Order the 7 numbers; the 4th is the middle."))
```

```check
(number
  (ask "Find the median of \$1.20, \$0.80, \$2.00, \$1.50.")
  (answer 1.35) (unit "dollars") (from "(1.2 + 1.5) / 2")
  (wrong-if 1.375 "That is the mean. The median is halfway between the 2 middle values: 1.20 and 1.50.")
  (hint "In order: 0.80, 1.20, 1.50, 2.00."))
```

The median is the middle value once the numbers are in order; with 2 middle values, it is halfway between them.
