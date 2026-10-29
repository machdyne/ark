# Multiplying by 1 and 0

```lesson
(objective "Multiply any number by 1 and by 0, and explain each product.")
(standards "3.OA.B.5")
(minutes 15)
```

You can multiply by 1 or by 0 at once, and say why the answer is right.

## Times 1

4 × 1 means 4 groups with 1 in each. That is 4 in all. 1 × 4 means 1
group of 4. That is 4 too.

```figure
(md-groups 18 40 4 1 32 4 'ink)
(label 160 125 "4 × 1 = 4" 'body)
(md-groups 128 140 1 4 32 4 'ink)
(label 160 228 "1 × 4 = 4" 'body)
```

Any number times 1 is that same number. This is a property of
multiplication.

```check
(number
  (ask "8 × 1 = ?")
  (answer 8) (from "8 * 1")
  (wrong-if 9 "9 is 8 + 1. 8 × 1 is 8 groups with 1 in each: 8 in all.")
  (wrong-if 1 "8 groups of 1 hold 8 things, not 1. Any number times 1 is that number.")
  (hint "8 groups with 1 in each. Count them."))
```

---

## Times 0

5 × 0 means 5 groups with 0 in each. The groups are empty, so there
are 0 in all.

```figure
(md-groups 4 80 5 0 28 5 'ink)
(label 160 180 "5 × 0 = 0" 'big)
(caption "5 empty plates")
```

0 × 5 means 0 groups of 5. With no groups, there is nothing. So
0 × 5 = 0 too. Any number times 0 is 0.

```check
(number
  (ask "9 × 0 = ?")
  (answer 0) (from "9 * 0")
  (wrong-if 9 "9 groups with 0 in each hold nothing. 9 × 0 = 0. You may be thinking of 9 + 0, which is 9.")
  (hint "9 empty plates. How many cookies?"))
```

---

## Do not mix up 0 and 1

Adding 0 leaves a number the same: 7 + 0 = 7. But multiplying by 0
gives 0: 7 × 0 = 0. Multiplying by 1 leaves a number the same:
7 × 1 = 7.

```check
(choice
  (ask "Which one is equal to 6?")
  (right "6 × 1" (true "6 * 1 = 6"))
  (wrong "6 × 0"
    "6 × 0 means 6 empty groups, which is 0. It is 6 + 0 that equals 6.")
  (wrong "6 × 6"
    "6 × 6 is 6 groups of 6, which is 36. 6 groups of 1 is 6.")
  (hint "Which factor keeps a number the same when you multiply?"))
```

---

## Worked example

```example
(example
  (problem "Find 1 × 10 and 10 × 0.")
  (step "1 × 10 is 1 group of 10. That is 10.")
  (step "10 × 0 is 10 groups with 0 in each. That is 0.")
  (answer "1 × 10 = 10 and 10 × 0 = 0"))
```

```example
(example
  (problem "Find 0 × 3 and 3 × 1.")
  (step "0 × 3 is 0 groups of 3. With no groups, there is nothing: 0.")
  (step (number (ask "3 × 1 = ?") (answer 3) (from "3 * 1")
    (wrong-if 4 "4 is 3 + 1. 3 × 1 is 3 groups of 1: 3.")))
  (answer "0 × 3 = 0 and 3 × 1 = 3"))
```

---

## Practice

```check
(number
  (ask "1 × 7 = ?")
  (answer 7) (from "1 * 7")
  (wrong-if 8 "8 is 1 + 7. 1 × 7 is 1 group of 7.")
  (wrong-if 1 "1 group of 7 holds 7 things.")
  (hint "1 group of 7."))
```

```check
(number
  (ask "0 × 8 = ?")
  (answer 0) (from "0 * 8")
  (wrong-if 8 "0 × 8 is 0 groups of 8. With no groups there is nothing.")
  (hint "How much is in 0 groups?"))
```

---

```check
(choice
  (ask "Eva has 6 boxes. Each box is empty. Eva says she has 6 × 0 = 6 toys. Is she right?")
  (right "No: 6 empty boxes hold 0 toys, so 6 × 0 = 0")
  (wrong "Yes: there are 6 boxes"
    "There are 6 boxes, but the question is about toys. Each box has 0 toys, so in all there are 0.")
  (hint "How many toys are in each box?"))
```

```check
(number
  (ask "Find the missing factor: 5 × ? = 5")
  (answer 1) (true "5 * 1 = 5")
  (wrong-if 0 "5 × 0 is 0, not 5. Which number of fives makes 5? Or think: 5 groups of what make 5?")
  (wrong-if 5 "5 × 5 is 25. 5 groups of 1 make 5.")
  (hint "5 groups with how many in each make 5?"))
```

So: any number times 1 is that number, and any number times 0 is 0.
