# Sharing in a ratio

```lesson
(objective "Share an amount in a given ratio.")
(minutes 20)
```

When two people put in different amounts, they may share the takings
in a ratio: here is how to split an amount fairly that way.

To share 50 dollars in the ratio 2 : 3:

1. Add the parts: 2 + 3 = 5 parts.
2. Find one part: 50 ÷ 5 = 10 dollars.
3. Multiply: 2 parts is 20 dollars, 3 parts is 30 dollars.

Check: 20 + 30 = 50.

```figure
(nu1-strip 20 70 280 50 2 3 'warm 'cool)
(label 48 145 "10")
(label 104 145 "10")
(label 160 145 "10")
(label 216 145 "10")
(label 272 145 "10")
(label 76 60 "20")
(label 216 60 "30")
(caption "50 dollars in 5 equal parts: 2 parts and 3 parts.")
```

```check
(number
  (ask "Share 40 dollars in the ratio 1 : 3. How much is the larger share?")
  (answer 30) (unit "dollars") (from "40 / 4 * 3")
  (wrong-if 10 "10 dollars is the smaller share, 1 part. The larger share is 3 parts: 30 dollars.")
  (wrong-if 13.33 "There are 1 + 3 = 4 parts, not 3. One part is 40 ÷ 4 = 10.")
  (hint "How many parts in all?")
  (hint "One part is 40 ÷ 4."))
```

---

## Worked example

```example
(example
  (problem "Two friends put 300 and 200 dollars into a market stall. They share the 1000 dollar takings in the ratio 3 : 2. How much does each get?")
  (step "Parts: 3 + 2 = 5.")
  (step "One part: 1000 ÷ 5 = 200 dollars.")
  (step "3 parts: 600 dollars. 2 parts: 400 dollars.")
  (answer "600 dollars and 400 dollars (600 + 400 = 1000)"))
```

```example
(example
  (problem "Share 84 dollars in the ratio 4 : 3.")
  (step "Parts: 4 + 3 = 7. One part: 84 ÷ 7 = 12 dollars.")
  (step (number (ask "How much is 4 parts?") (answer 48) (unit "dollars") (from "84 / 7 * 4")
    (wrong-if 12 "12 dollars is one part. 4 parts is 4 times that.")))
  (answer "48 dollars and 36 dollars"))
```

---

## A common mistake

Do not split the amount into halves first. In 2 : 3, nobody gets half:
the parts are 2 fifths and 3 fifths of the whole.

```check
(choice
  (ask "Share 90 dollars in the ratio 1 : 2. Which is right?")
  (right "30 dollars and 60 dollars" (true "90 / 3 = 30"))
  (wrong "45 dollars and 45 dollars" "That is the ratio 1 : 1. In 1 : 2, one person gets twice what the other gets.")
  (wrong "45 dollars and 90 dollars" "45 + 90 = 135, more than the 90 there is. The shares must add up to 90.")
  (wrong "1 dollar and 2 dollars" "The ratio gives the parts, not the dollars. 3 parts in all, so one part is 30 dollars.")
  (hint "1 + 2 = 3 parts."))
```

---

## Practice

```check
(number
  (ask "A 120 dollar bill is shared in the ratio 3 : 1. How much is the smaller share?")
  (answer 30) (unit "dollars") (from "120 / 4")
  (wrong-if 40 "There are 3 + 1 = 4 parts, so one part is 120 ÷ 4 = 30, not 120 ÷ 3.")
  (wrong-if 90 "90 dollars is the larger share, 3 parts. The smaller is 1 part.")
  (hint "Add the parts first."))
```

```check
(number
  (ask "A concrete mix is 1 part cement to 5 parts sand and gravel. How many buckets of cement for 36 buckets of mix in all?")
  (answer 6) (from "36 / 6")
  (wrong-if 7.2 "There are 1 + 5 = 6 parts, not 5. One part is 36 ÷ 6 = 6 buckets.")
  (wrong-if 30 "30 buckets is the sand and gravel. Cement is 1 part.")
  (hint "1 + 5 = 6 parts."))
```

```check
(number
  (ask "Share 250 dollars in the ratio 2 : 3. How much is the larger share?")
  (answer 150) (unit "dollars") (from "250 / 5 * 3")
  (wrong-if 100 "100 dollars is the smaller share (2 parts). The larger is 3 parts.")
  (wrong-if 125 "That is half. In 2 : 3 the shares are 2 fifths and 3 fifths.")
  (hint "One part is 250 ÷ 5 = 50."))
```

To share in a ratio, add the parts, divide to find one part, then
multiply for each share.
