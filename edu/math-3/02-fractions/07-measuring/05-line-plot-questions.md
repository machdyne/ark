# Line plot questions

```lesson
(objective "Answer how many, which is most and which is least from a line plot.")
(standards "3.MD.B.4")
(minutes 20)
```

You can answer questions from a line plot: how many, which length is
most common, and which is least common.

A class measured pencils to the nearest quarter inch.

```figure
(fr-plot 30 290 170 12 16 4 '(2 5 1 3 2))
(text 160 220 "Length of pencils (inches)" 'centre 'small)
```

```check
(choice
  (ask "Which length has the most pencils?")
  (right "3 1/4 inches")
  (wrong "4 inches"
    "4 is the longest length, not the one with the most pencils. Look for the tallest stack of X marks.")
  (wrong "3 3/4 inches"
    "3 3/4 has 3 X marks. The stack over 3 1/4 is taller.")
  (hint "Find the tallest stack of X marks."))
```

---

## Least and how many

The shortest stack shows the length with the fewest pencils. To find
how many in all, add up every stack.

```check
(choice
  (ask "Which length has the fewest pencils?")
  (right "3 1/2 inches")
  (wrong "3 inches"
    "3 is the shortest length, but it has 2 pencils. Find the shortest stack of X marks.")
  (wrong "4 inches"
    "4 has 2 X marks. One stack has only 1.")
  (hint "Find the stack with the fewest X marks."))
```

```check
(number
  (ask "How many pencils were measured in all?")
  (answer 13) (from "2 + 5 + 1 + 3 + 2")
  (wrong-if 5 "5 is the tallest stack, or the number of marks. Add up all the stacks.")
  (wrong-if 11 "Check your adding: 2 + 5 + 1 + 3 + 2.")
  (hint "Add the X marks over every mark."))
```

---

## How many more

To compare 2 lengths, subtract the counts.

```check
(number
  (ask "How many more pencils are" (math "3 1/4") "inches than" (math "3 1/2") "inches?")
  (answer 4) (from "5 - 1")
  (wrong-if 6 "That adds the 2 stacks. How many more means subtract: 5 - 1.")
  (wrong-if 5 "5 is how many are 3 1/4 inches. Take away the 1 that is 3 1/2 inches.")
  (hint "5 are 3 1/4 inches. 1 is 3 1/2 inches."))
```

---

## Worked example

```example
(example
(problem "How many pencils are longer than 3 1/2 inches?")
(step "Longer than 3 1/2 means the marks to its right: 3 3/4 and 4.")
(step "3 3/4 has 3 X marks and 4 has 2.")
(step "3 + 2 = 5.")
(answer "5 pencils are longer than 3 1/2 inches."))
```

```example
(example
(problem "How many pencils are shorter than 3 1/2 inches?")
(step "Shorter means the marks to the left: 3 and 3 1/4.")
(step (choice (ask "How many X marks are over 3 and 3 1/4?")
  (right "7")
  (wrong "5"
    "5 is the stack over 3 1/4 alone. Add the 2 over 3 as well.")))
(answer "7 pencils are shorter than 3 1/2 inches."))
```

---

## Practice

```figure
(fr-plot 40 280 170 2 6 2 '(1 4 2 3 1))
(text 160 220 "Length of worms (inches)" 'centre 'small)
```

```check
(choice
  (ask "Which length has the most worms?")
  (right "1 1/2 inches")
  (wrong "3 inches"
    "3 inches is the longest length. The tallest stack is over 1 1/2.")
  (wrong "2 1/2 inches"
    "2 1/2 has 3 worms. 1 1/2 has 4.")
  (hint "Find the tallest stack."))
```

```check
(number
  (ask "How many worms are at least 2 inches long?")
  (answer 6) (from "2 + 3 + 1")
  (wrong-if 4 "2 inches counts too, since at least 2 means 2 or more. Add the stacks over 2, 2 1/2 and 3.")
  (wrong-if 11 "11 is all the worms. Only count 2 inches and longer.")
  (hint "Count the X marks over 2, 2 1/2 and 3."))
```

So: the tallest stack is the most common length, the shortest is the
least common, and adding the stacks gives how many in all.
