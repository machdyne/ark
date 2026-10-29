# Patterns in the table

```lesson
(objective "Find patterns in a multiplication table and explain them with properties.")
(standards "3.OA.D.9")
(minutes 25)
(keywords "multiplication table")
```

You can find patterns in the facts and say why they happen.

A **multiplication table** shows many products in rows and columns.
To find 4 × 6, go to row 4 and column 6. Where they meet is the product,
24.

```figure
(define r (slider 'r 1 9 4 "Row" 1))
(define c (slider 'c 1 9 6 "Column" 1))
(md-table 50 8 1 9 22 r c #t)
```

```check
(number
  (ask "In the table, row 7 meets column 8. What product is there?")
  (answer 56) (from "7 * 8")
  (wrong-if 15 "15 is 7 + 8. Where row 7 meets column 8, the table shows 7 × 8.")
  (hint "Move the sliders to row 7 and column 8."))
```

---

## The 4s are all even

Look along row 4: 4, 8, 12, 16, 20, 24, 28, 32, 36. Every one is even.

Why? 4 is 2 × 2. So 4 × 6 = 2 × (2 × 6) by the associative property.
That is double 2 × 6. A double is always even, so every 4s product is
even.

```figure
(md-table 50 8 1 9 22 4 0 #f)
```

```check
(choice
  (ask "Is 4 × 7 even or odd?")
  (right "Even: it is double 2 × 7")
  (wrong "Odd: 7 is odd"
    "7 is odd, but 4 × 7 = 28 is even. Any number times 4 is a double of a double, so it is even.")
  (hint "4 × 7 is double 2 × 7. Is a double even or odd?"))
```

---

## The table is the same both ways

Row 3 reads 3, 6, 9, 12 ... Column 3 reads 3, 6, 9, 12 ... the same
numbers. That is the commutative property: 3 × 5 = 5 × 3.

So the table matches itself across the line from top left to bottom
right.

```check
(choice
  (ask "Row 6 meets column 8 at 48. What is where row 8 meets column 6?")
  (right "48, because 8 × 6 = 6 × 8" (true "8 * 6 = 6 * 8"))
  (wrong "a different number"
    "Swapping the factors does not change the product. 8 × 6 and 6 × 8 are both 48.")
  (hint "Think of the commutative property."))
```

---

## Odd and even products

- An even number times any number is even. It is a double.
- An odd number times an odd number is odd.

So 3 × 5 = 15 is odd, but 3 × 6 = 18 is even.

```check
(choice
  (ask "Is 7 × 9 even or odd?")
  (right "Odd: both factors are odd" (true "7 * 9 = 63"))
  (wrong "Even: there are 2 factors"
    "Having 2 factors does not make a product even. 7 × 9 = 63, which is odd. Odd times odd is odd.")
  (hint "Are 7 and 9 even or odd?"))
```

---

## Worked example

```example
(example
  (problem "Look at row 5: 5, 10, 15, 20, 25 ... What pattern do the last digits make? Why?")
  (step "The last digits go 5, 0, 5, 0 ...")
  (step "Each step adds 5. Adding 5 to a number ending in 5 makes a 0, and adding 5 to a 0 makes a 5.")
  (step "Also: 5 × an even number is even, so it ends in 0.")
  (answer "The 5s end in 5, 0, 5, 0 ... because each one is 5 more than the last."))
```

```example
(example
  (problem "Row 2 and row 4: how are they linked?")
  (step "Row 2: 2, 4, 6, 8 ... Row 4: 4, 8, 12, 16 ...")
  (step "Each number in row 4 is 2 times the one above it in row 2.")
  (step (choice (ask "Why?")
    (right "4 = 2 × 2, so 4 × a number is double 2 × that number")
    (wrong "Row 4 is 2 rows lower" "Being lower in the table does not explain it. 4 is double 2, so each 4s product is double the 2s product.")))
  (answer "Row 4 doubles row 2, because 4 is double 2."))
```

---

## Practice

```check
(choice
  (ask "Which row has only even products?")
  (right "Row 6")
  (wrong "Row 5"
    "Row 5 has 5, 15, 25 ... which are odd. 6 is even, so every 6s product is even.")
  (wrong "Row 9"
    "Row 9 has 9, 27, 45 ... which are odd. 6 is even, so every 6s product is even.")
  (hint "Which factor is even?"))
```

```check
(number
  (ask "Each number in row 8 is double the number in which row?")
  (answer 4)
  (wrong-if 2 "Doubling row 2 gives row 4, not row 8. 8 = 2 × 4, so row 8 doubles row 4.")
  (wrong-if 16 "There is no row 16 in the table. 8 is double 4, so row 8 doubles row 4.")
  (hint "8 is double what number?"))
```

---

```check
(choice
  (ask "Is 3 × 9 even or odd?")
  (right "Odd" (true "3 * 9 = 27"))
  (wrong "Even"
    "3 and 9 are both odd. Odd times odd is odd: 3 × 9 = 27.")
  (hint "Are both factors odd?"))
```

So: patterns in the multiplication table come from the properties, like doubling and swapping factors.
