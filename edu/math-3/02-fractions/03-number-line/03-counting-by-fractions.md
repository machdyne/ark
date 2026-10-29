# Counting by fractions

```lesson
(objective "Count forward by a unit fraction along a number line: 1/4, 2/4, 3/4, 4/4.")
(standards "3.NF.A.2b")
(minutes 20)
```

You can count along a number line by a unit fraction.

Each jump is 1 part, $1/4$ long. Move the slider to jump again and
again from 0. Count the fourths: $1/4$, $2/4$, $3/4$, $4/4$.

```figure
(define k (slider 'jumps 1 4 1 "Jumps" 1))
(fr-line 40 280 150 1 4 'frac)
(for-range 0 k (lambda (i) (nl-jump (/ i 4) (/ (+ i 1) 4) 'warm)))
(math 160 50 (fr-s k 4) 28)
(caption (string-append (fmt k 0) (if (= k 1) " jump" " jumps") " of 1/4 from 0"))
```

```check
(fraction
  (ask "You jump 3 times from 0, each jump" (math "1/4") ". Where do you land?")
  (answer 3 4) (true "3 * 1/4 = 3/4")
  (wrong-if (1 4) "1/4 is where the first jump lands. You jump 3 times, so count 3 fourths.")
  (wrong-if (3 3) "The jumps are fourths, so the denominator stays 4. Only the count, the numerator, grows.")
  (hint "Count the jumps: 1 fourth, 2 fourths, ...")
  (hint "3 jumps of 1/4 is 3 fourths."))
```

---

## The denominator stays

When you count by fourths, the numerator counts the jumps. The
denominator stays 4, because every jump is a fourth.

4 jumps of $1/4$ land on 1. So $4/4$ is at the same point as 1.

```figure
(fr-line 40 280 120 1 6 'frac)
(text 40 70 "Count by sixths:" 'small 'left)
(for-range 0 6 (lambda (i) (nl-jump (/ i 6) (/ (+ i 1) 6) 'cool)))
(text 280 175 "1" 'centre 'body 'bold)
(caption "6 jumps of 1/6 from 0 land on 1.")
```

```check
(choice
  (ask "You count by sixths: 1/6, 2/6, 3/6. What comes next?")
  (right "4/6")
  (wrong "3/7"
    "Counting by sixths does not change the denominator. Each jump is 1 more sixth, so the numerator grows: 4/6.")
  (wrong "4/7"
    "The parts are still sixths. Only the numerator counts up: 4/6.")
  (hint "Every jump is a sixth. Which number counts the jumps?"))
```

---

## Count the jumps, not the marks

Each jump goes from one mark to the next. Start at 0, but do not
count 0. Your first jump lands on the first fraction.

```figure
(fr-line 40 280 120 1 8 'none)
(for-range 0 5 (lambda (i) (nl-jump (/ i 8) (/ (+ i 1) 8) 'warm)))
(text 40 150 "0" 'centre 'body)
(text 280 150 "1" 'centre 'body)
(caption "Jumps of 1/8 from 0.")
```

```check
(fraction
  (ask "The arrows jump by" (math "1/8") "from 0. Where do they stop?")
  (answer 5 8) (true "5 * 1/8 = 5/8")
  (wrong-if (6 8) "6 is the number of marks from 0 to the end of the jumps. Count the jumps instead: 5.")
  (wrong-if (5 9) "The line from 0 to 1 has 8 parts, not 9. Count the spaces, and the denominator is 8.")
  (hint "Count the arrows.")
  (hint "5 jumps of 1/8."))
```

---

## Worked example

```example
(example
(problem "Count by thirds from 0 to 1.")
(step "Each jump is 1/3. The denominator stays 3.")
(step "1 jump: 1/3. 2 jumps: 2/3.")
(step "3 jumps: 3/3. You are at 1.")
(answer "1/3, 2/3, 3/3."))
```

```example
(example
(problem "Count by halves from 0 to 1.")
(step "Each jump is 1/2. The denominator stays 2.")
(step (choice (ask "Where does 1 jump land?")
  (right "1/2")
  (wrong "1/1"
    "The jumps are halves, so the denominator stays 2. 1 jump lands on 1/2.")))
(step "2 jumps: 2/2. You are at 1.")
(answer "1/2, 2/2."))
```

---

## Practice

```check
(fraction
  (ask "Count by eighths: 1/8, 2/8, 3/8, ... What comes after 6/8?")
  (answer 7 8) (true "6/8 + 1/8 = 7/8")
  (wrong-if (6 9) "The jumps are eighths, so the denominator stays 8. The numerator goes up by 1.")
  (wrong-if (7 9) "The denominator stays 8 when you count by eighths. Only the numerator changes.")
  (hint "The numerator goes up by 1 each time."))
```

```check
(number
  (ask "How many jumps of" (math "1/3") "take you from 0 to 1?")
  (answer 3) (true "3 * 1/3 = 1")
  (wrong-if 1 "1 jump of 1/3 lands on 1/3, not on 1. The whole is 3 thirds.")
  (wrong-if 4 "With the mark at 0, there are 4 marks. But there are only 3 jumps between them.")
  (hint "1 whole is how many thirds?"))
```

So: counting by fourths goes $1/4$, $2/4$, $3/4$, $4/4$: the
numerator counts the jumps and the denominator stays the same.
