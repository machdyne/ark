# Dividing by multiples of 10

```lesson
(objective "Divide by a multiple of 10 with place value and related facts, such as 2,400 ÷ 60 = 40.")
(standards "5.NBT.B.6")
(minutes 20)
```

You can divide by a multiple of 10 with a basic fact and place value.

Find 2,400 ÷ 60. Think in tens:

- 2,400 is 240 tens. 60 is 6 tens.
- 240 tens ÷ 6 tens is the same as $240 ÷ 6 = 40$.

The related fact $24 ÷ 6 = 4$ helps you find $240 ÷ 6 = 40$.

$$ 2400 ÷ 60 = 40 $$

Check with multiplying: $40 * 60 = 2400$.

```figure
(frame 120 40 80 120 'ink 1.5)
(label 160 108 "2,400" 'big 'bold)
(label 160 32 "?" 'big 'bold)
(text 112 106 "60" 'right 'body 'bold)
(label 160 180 "60 × ? = 2,400" 'body)
(label 160 205 "6 × 4 = 24, so 60 × 40 = 2,400" 'body 'bold)
(caption "An area of 2,400 with one side 60")
```

```check
(number
  (ask "Find 3,500 ÷ 70.")
  (answer 50) (from "3500 ÷ 70") (true "50 * 70 = 3500")
  (wrong-if 5 "70 × 5 is only 350. 3,500 is 350 tens, and 350 ÷ 7 = 50.")
  (wrong-if 500 "70 × 500 = 35,000, which is too big. Check: 70 × 50 = 3,500.")
  (hint "The related fact is 35 ÷ 7 = 5.")
  (hint "3,500 is 350 tens. 70 is 7 tens."))
```

---

## Take a 0 from each

A quick way: take away the same number of zeros at the end of both
numbers. It works because both are divided by 10: the groups are 10
times smaller, and so is the amount, so the number of groups is the
same.

$$ 2400 ÷ 60 = 240 ÷ 6 $$

Then use a basic fact and place value: $240 ÷ 6 = 40$.

```check
(number
  (ask "Find 4,800 ÷ 80.")
  (answer 60) (from "4800 ÷ 80") (true "60 * 80 = 4800")
  (wrong-if 600 "Take one 0 from each: 480 ÷ 8 = 60. Check: 600 × 80 = 48,000, too big.")
  (wrong-if 6 "80 × 6 = 480, not 4,800. 480 ÷ 8 = 60.")
  (hint "Take one 0 from each number: 480 ÷ 8.")
  (hint "48 ÷ 8 = 6, so 480 ÷ 8 = 60."))
```

---

## When the fact has a 0

Sometimes the basic fact itself ends in 0, like $40 ÷ 5 = 8$. Then
4,000 ÷ 50 is 400 ÷ 5 = 80. Check: $80 * 50 = 4000$.

```check
(number
  (ask "Find 3,000 ÷ 60.")
  (answer 50) (from "3000 ÷ 60") (true "50 * 60 = 3000")
  (wrong-if 500 "60 × 500 = 30,000. Take one 0 from each: 300 ÷ 6 = 50.")
  (wrong-if 5 "60 × 5 = 300, not 3,000.")
  (hint "The fact is 30 ÷ 6 = 5.")
  (hint "300 ÷ 6 = 50."))
```

---

## Worked example

```example
(example
  (problem "Find 5,600 ÷ 80.")
  (step "Take one 0 from each: 560 ÷ 8.")
  (step "The fact 56 ÷ 8 = 7, so 560 ÷ 8 = 70.")
  (step "Check: 70 × 80 = 5,600.")
  (answer "5,600 ÷ 80 = 70"))
```

```example
(example
  (problem "Find 1,800 ÷ 20.")
  (step "Take one 0 from each: 180 ÷ 2.")
  (step (number (ask "180 ÷ 2 = ?") (answer 90) (from "180 ÷ 2") (true "90 * 20 = 1800")
    (wrong-if 9 "18 ÷ 2 = 9, so 180 ÷ 2 = 90.")))
  (answer "1,800 ÷ 20 = 90"))
```

---

## Practice

```check
(number
  (ask "Find 2,700 ÷ 90.")
  (answer 30) (from "2700 ÷ 90") (true "30 * 90 = 2700")
  (wrong-if 300 "90 × 300 = 27,000. Try 270 ÷ 9.")
  (hint "27 ÷ 9 = 3."))
```

```check
(number
  (ask "Find 6,300 ÷ 70.")
  (answer 90) (from "6300 ÷ 70") (true "90 * 70 = 6300")
  (wrong-if 9 "70 × 9 = 630. You need 6,300: 630 ÷ 7 = 90.")
  (hint "63 ÷ 7 = 9."))
```

---

```check
(number
  (ask "Find 4,200 ÷ 70.")
  (answer 60) (from "4200 ÷ 70") (true "60 * 70 = 4200")
  (wrong-if 600 "70 × 600 = 42,000. Take one 0 from each: 420 ÷ 7 = 60.")
  (wrong-if 6 "70 × 6 = 420, not 4,200.")
  (hint "Take one 0 from each number: 420 ÷ 7.")
  (hint "42 ÷ 7 = 6."))
```

```check
(number
  (ask "A school has 1,200 chairs. It puts them in rows of 40. How many rows?")
  (answer 30) (from "1200 ÷ 40") (unit "rows") (true "30 * 40 = 1200")
  (wrong-if 3 "40 × 3 = 120 chairs. 1,200 is 10 times as many: 30 rows.")
  (wrong-if 48000 "Putting chairs in rows makes groups: divide.")
  (hint "120 ÷ 4 = 30."))
```

So: think in tens, use a basic fact, and check by multiplying.
