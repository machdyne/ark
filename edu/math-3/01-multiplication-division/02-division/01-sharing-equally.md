# Sharing equally

```lesson
(objective "Find how many are in each group when a total is shared equally among a number of groups.")
(standards "3.OA.A.2")
(minutes 20)
(keywords "division" "divide")
```

You can share a total fairly, so that every group gets the same number.

Max has 12 grapes. He shares them with 2 friends, so 3 people get
grapes. Each person must get the same number. To **divide** is to
share a total into equal groups.

```figure
(md-groups 40 50 3 4 36 3 'ink)
(caption "12 grapes shared by 3 people")
```

```check
(number
  (ask "Max divides 12 grapes among 3 people. How many grapes does each person get?")
  (answer 4) (from "12 / 3") (true "4 + 4 + 4 = 12")
  (wrong-if 9 "9 is 12 - 3. Sharing does not take 3 away. It makes 3 equal groups out of all 12.")
  (wrong-if 3 "3 is the number of people. Count the grapes in one group.")
  (hint "Look at one circle. Count the dots."))
```

---

## The division sign

Sharing equally is **division**. Division has its own sign, ÷. You
read it as "divided by".

$$ 12 ÷ 3 = 4 $$

You say: 12 divided by 3 is 4. The first number is the total. In a
sharing story, the second is how many groups share it. The answer is how many each group
gets.

```check
(choice
  (ask "What does 15 ÷ 3 mean here?")
  (right "15 shared equally into 3 groups")
  (wrong "15 groups of 3"
    "15 is the total, not the number of groups. 15 ÷ 3 shares 15 things into 3 groups.")
  (wrong "15 take away 3"
    "Taking away is subtraction. Division shares the whole 15 into equal groups.")
  (hint "The first number is the total. The second is the number of groups."))
```

---

## Share one at a time

One way to share is to deal: give 1 to each group, then 1 more to
each, until none are left. Then count one group.

Pick how many groups share 12. Each group always gets the same number.

```figure
(define i (choice 'g '("2" "3" "4" "6") "Groups"))
(define g (if (= i 0) 2 (if (= i 1) 3 (if (= i 2) 4 6))))
(md-groups (- 160 (* 25 g)) 50 g (/ 12 g) 22 6 'ink)
(label 160 140 (string-append "12 ÷ " (fmt g 0) " = " (fmt (/ 12 g) 0)) 'big)
(caption (string-append (fmt g 0) " groups, " (fmt (/ 12 g) 0) " in each"))
```

```check
(number
  (ask "12 stickers are shared equally by 4 children. How many does each child get?")
  (answer 3) (from "12 / 4") (true "3 + 3 + 3 + 3 = 12")
  (wrong-if 8 "8 is 12 - 4. Sharing makes 4 equal groups from all 12 stickers.")
  (wrong-if 4 "4 is the number of children. Deal the 12 stickers out one at a time and count one child's pile.")
  (hint "Deal 1 to each child until all 12 are gone.")
  (hint "After each child has 3, how many are left?"))
```

---

## Worked example

```example
(example
  (problem "Mom shares 10 crackers equally between 2 plates. How many go on each plate?")
  (step "The total is 10. It is shared into 2 equal groups.")
  (step "Deal 1 to each plate at a time. After 5 deals, all 10 are gone.")
  (step "Each plate gets 5. Check: 5 + 5 = 10.")
  (answer "10 ÷ 2 = 5. Each plate has 5 crackers."))
```

```example
(example
  (problem "18 books are put equally on 3 shelves. How many books go on each shelf?")
  (step "The total is 18. It is shared into 3 equal groups.")
  (step "Deal the books out: each shelf gets 1, then 2, and so on.")
  (step (number (ask "18 ÷ 3 = ?") (answer 6) (from "18 / 3")
    (wrong-if 15 "15 is 18 - 3. Share all 18 books into 3 equal groups: 6 + 6 + 6 = 18.")))
  (answer "18 ÷ 3 = 6. Each shelf has 6 books."))
```

---

## Practice

```check
(number
  (ask "20 ÷ 5 = ?")
  (answer 4) (from "20 / 5") (true "4 + 4 + 4 + 4 + 4 = 20")
  (wrong-if 15 "15 is 20 - 5. 20 ÷ 5 shares 20 into 5 equal groups.")
  (wrong-if 25 "25 is 20 + 5. Dividing shares a total out. Each group gets less than the total.")
  (hint "Share 20 into 5 equal groups. How many in each?"))
```

```check
(number
  (ask "A coach shares 16 balls equally among 2 teams. How many balls does each team get?")
  (answer 8) (unit "balls") (from "16 / 2")
  (wrong-if 14 "14 is 16 - 2. Each team gets an equal part of all 16 balls.")
  (hint "Which number plus itself makes 16?"))
```

---

```check
(choice
  (ask "Which story is about sharing equally?")
  (right "24 cards are dealt to 4 players. Each gets the same number.")
  (wrong "24 cards are in a box. 4 are lost."
    "Losing 4 cards takes them away. That is subtraction, not sharing into equal groups.")
  (wrong "4 players each bring 24 cards."
    "This story has 4 groups of 24, so it is multiplication. Sharing starts with a total and splits it.")
  (hint "Look for a total that is split into equal groups."))
```

So: to divide is to share a total into equal groups, and the answer tells how many each group gets.
