# A unit fraction shared

```lesson
(objective "Divide a unit fraction by a whole number with a model, such as 1/3 shared by 4 people: (1/3) ÷ 4 = 1/12.")
(standards "5.NF.B.7a")
(minutes 25)
```

You can share a unit fraction among several people. That is dividing a
unit fraction by a whole number.

There is $1/3$ of a pan of cornbread left. 4 friends share it equally.
How much of the whole pan does each get?

Cut the $1/3$ into 4 equal parts. Do the same to the other thirds: the
whole pan is now $3 * 4 = 12$ equal parts. Each friend gets 1 of them.

$$ (1/3) ÷ 4 = 1/12 $$

```figure
(define cut (toggle 'cut "Cut" #f))
(frac-bar 0 3 1 'cool "1/3")
(if cut (frac-bar 1 12 1 'cool "1/12") (frac-bar 1 3 1 'grey))
(if cut (begin (line 152 72 152 110 'ink 3) (line 224 72 224 110 'ink 3)))
(caption (if cut "Each friend's share is 1 of 12 parts of the pan." "The 1/3 left, to share by 4"))
```

```check
(fraction
  (ask "Share" (math "1/2") "of a pizza equally among 3 people. What part of the whole pizza does each get?")
  (answer 1 6) (equivalent) (true "(1/2) ÷ 3 = 1/6")
  (wrong-if (3 2) "Sharing 1/2 makes smaller pieces, not 1 1/2 pizzas. Cut the half into 3: each is 1/6 of the pizza.")
  (wrong-if (1 3) "1/3 is each share of a whole pizza. They share only 1/2 of it, so each gets less. Cut each half into 3: 6 parts, so 1/6.")
  (hint "Cut each half into 3 equal parts.")
  (hint "How many parts in the whole pizza?"))
```

---

## Why the parts are twelfths

The answer names a part of the whole, not of the $1/3$. Each friend
gets $1/4$ of the $1/3$, and that is $1/12$ of the pan.

Cutting every third into 4 makes $3 * 4 = 12$ equal parts. So
$(1/b) ÷ n = 1/(b * n)$.

```check
(choice
  (ask "What is" (math "(1/5) ÷ 2") "?")
  (right "1/10 of the whole" (true "(1/5) ÷ 2 = 1/10"))
  (wrong "1/2"
    "1/2 is the share of the 1/5, not of the whole. Half of a fifth is 1/10 of the whole.")
  (wrong "2/5"
    "2/5 is bigger than 1/5. Sharing 1/5 between 2 gives each less than 1/5.")
  (hint "Cut every fifth into 2. How many parts in the whole?"))
```

---

## On a number line

$(1/4) ÷ 2$: the space from 0 to $1/4$, cut into 2 equal parts. Each
part is $1/8$.

```figure
(m5p3-line 30 290 120 1 8 'frac)
(nl-jump 0 0.125 'cool)
(nl-jump 0.125 0.25 'cool)
(text 30 75 "1/4 cut into 2 equal parts: each 1/8" 'left 'small)
```

```check
(fraction
  (ask "Find" (math "(1/4) ÷ 3") ".")
  (answer 1 12) (equivalent) (true "(1/4) ÷ 3 = 1/12")
  (wrong-if (3 4) "3/4 is bigger than 1/4. Sharing 1/4 by 3 makes smaller parts.")
  (wrong-if (1 7) "That adds 4 and 3. Cutting every fourth into 3 makes 4 x 3 = 12 parts.")
  (hint "Cut each fourth into 3."))
```

---

## Worked example

```example
(example
  (problem "6 children share 1/2 of a melon equally. What part of the melon does each get?")
  (step "Cut the 1/2 into 6 equal parts.")
  (step "Cut the other half the same way: 2 x 6 = 12 parts in the whole melon.")
  (step "Each child gets 1 part: (1/2) ÷ 6 = 1/12.")
  (answer "Each child gets 1/12 of the melon."))
```

```example
(example
  (problem "Find (1/6) ÷ 2.")
  (step "Cut every sixth into 2 equal parts.")
  (step (fraction (ask "How big is each part of the whole?") (answer 1 12) (equivalent) (true "(1/6) ÷ 2 = 1/12")
    (wrong-if (1 3) "1/3 is bigger than 1/6. Half of a sixth is smaller: 6 x 2 = 12 parts.")))
  (answer "(1/6) ÷ 2 = 1/12."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "(1/3) ÷ 2") ".")
  (answer 1 6) (equivalent) (true "(1/3) ÷ 2 = 1/6")
  (wrong-if (2 3) "2/3 is bigger than 1/3. Half of a third is smaller.")
  (hint "Cut each third into 2."))
```

```check
(fraction
  (ask "5 friends share" (math "1/4") "of a cake equally. What part of the whole cake does each get?")
  (answer 1 20) (equivalent) (true "(1/4) ÷ 5 = 1/20")
  (wrong-if (1 5) "1/5 is the part of the 1/4, not of the whole cake. 4 x 5 = 20 parts in the cake.")
  (wrong-if (5 4) "5/4 is more than a whole cake. They share only 1/4.")
  (hint "Cut every fourth into 5."))
```

---

```check
(fraction
  (ask "Find" (math "(1/8) ÷ 2") ".")
  (answer 1 16) (equivalent) (true "(1/8) ÷ 2 = 1/16")
  (wrong-if (1 4) "1/4 is bigger than 1/8. Half of an eighth is a sixteenth.")
  (hint "8 x 2 = ?"))
```

```check
(choice
  (ask "Which is greater:" (math "1/3") "or" (math "(1/3) ÷ 4") "?")
  (right "1/3" (true "1/3 > (1/3) ÷ 4"))
  (wrong "(1/3) ÷ 4"
    "Sharing 1/3 among 4 gives each a part of the 1/3. Each part is less than 1/3.")
  (wrong "They are equal"
    "Cutting 1/3 into 4 parts makes each part smaller than 1/3.")
  (hint "Is a share of 1/3 bigger or smaller than 1/3?"))
```

To divide a unit fraction by a whole number, cut each part into that
many equal parts: $(1/b) ÷ n = 1/(b * n)$.
