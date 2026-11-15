# Joining parts

```lesson
(objective "Explain adding fractions as joining parts of the same whole, such as 2/5 + 1/5 = 3/5, with a bar and a number line.")
(standards "4.NF.B.3a")
(minutes 20)
```

You can add fractions by joining parts of the same whole.

A bar is cut into 5 equal parts. Each part is $1/5$. Mia paints 2
parts. Then she paints 1 more part. Now 3 parts are painted.

$$ 2/5 + 1/5 = 3/5 $$

```figure
(frac-bar 0 5 2 'warm "2/5")
(frac-bar 1 5 1 'cool "1/5")
(frac-bar-at 80 132 216 30 5 2 'warm)
(rect (+ 80 (* 216 (/ 2 5))) 132 (/ 216 5) 30 'cool)
(frame 80 132 216 30 'ink 1.5)
(for-range 1 5 (lambda (i) (line (+ 80 (* i (/ 216 5))) 132 (+ 80 (* i (/ 216 5))) 162 'ink 1)))
(math 40 153 "3/5" 22)
(caption "2 fifths joined with 1 fifth make 3 fifths.")
```

```check
(fraction
  (ask "A bar is cut into 6 equal parts. You shade 2 parts, then 3 more. What fraction is shaded?")
  (answer 5 6) (equivalent) (true "2/6 + 3/6 = 5/6")
  (wrong-if (5 12) "You added the denominators too. The bar still has 6 parts, so the parts are still sixths.")
  (hint "Count the shaded parts. The bar has 6 parts in all."))
```

---

## The parts stay the same size

When you join $2/5$ and $1/5$, the parts are fifths before and after.
You count fifths: 2 fifths and 1 fifth are 3 fifths. The whole does
not change, so the denominator does not change.

```check
(choice
  (ask "Leo says" (math "1/4 + 2/4 = 3/8") ". What is wrong?")
  (right "The parts are still fourths, so the sum is 3/4" (true "1/4 + 2/4 = 3/4"))
  (wrong "Nothing: 1 + 2 = 3 and 4 + 4 = 8"
    "Adding 4 + 4 says the whole now has 8 parts. But you joined parts of one whole cut in 4. The sum is 3 fourths.")
  (wrong "The sum should be 2/4"
    "1 fourth and 2 fourths are 3 fourths, not 2. Count every part you join.")
  (hint "Into how many parts is the whole cut? Does joining change that?"))
```

---

## On a number line

On a number line from 0 to 1 cut into fifths, start at $2/5$. Jump
$1/5$ to the right. You land on $3/5$.

```figure
(m4p3-line 30 290 120 1 5 'frac)
(nl-mark (/ 2 5) 'cool)
(m4p3-jumps 2 1 5 'warm)
(nl-mark (/ 3 5) 'warm)
(caption "Start at 2/5 and jump 1/5.")
```

```check
(fraction
  (ask "Start at" (math "3/8") "on a number line. Jump" (math "4/8") "to the right. Where do you land?")
  (answer 7 8) (equivalent) (true "3/8 + 4/8 = 7/8")
  (wrong-if (7 16) "The line is cut in eighths, and your jumps are eighths. You land on 7 eighths.")
  (wrong-if (1 8) "You jumped to the left. Adding moves to the right.")
  (hint "Each small jump is 1/8. Count 4 jumps from 3/8."))
```

---

## Worked example

```example
(example
  (problem "A pizza is cut into 8 equal slices. Sam eats 3/8. Ann eats 2/8. How much do they eat together?")
  (step "Both parts are from the same pizza, cut in eighths.")
  (step "Join the slices: 3 eighths and 2 eighths are 5 eighths.")
  (answer "3/8 + 2/8 = 5/8 of the pizza."))
```

```example
(example
  (problem "Find 1/6 + 4/6.")
  (step "The parts are sixths.")
  (step (fraction (ask "1 sixth and 4 sixths make how much?")
    (answer 5 6) (equivalent) (true "1/6 + 4/6 = 5/6")
    (wrong-if (5 12) "The parts are still sixths. Keep the 6.")))
  (answer "1/6 + 4/6 = 5/6."))
```

---

## Practice

```check
(fraction
  (ask "Find" (math "1/3 + 1/3") ".")
  (answer 2 3) (equivalent) (true "1/3 + 1/3 = 2/3")
  (wrong-if (2 6) "The parts are thirds. 1 third and 1 third are 2 thirds.")
  (hint "Count thirds."))
```

```check
(fraction
  (ask "Find" (math "4/10 + 5/10") ".")
  (answer 9 10) (equivalent) (true "4/10 + 5/10 = 9/10")
  (wrong-if (9 20) "The parts are tenths. Keep the denominator 10.")
  (hint "4 tenths and 5 tenths are how many tenths?"))
```

---

```check
(choice
  (ask "Which number line shows" (math "2/6 + 3/6") "?")
  (right "Start at 2/6 and make 3 jumps of 1/6 to the right")
  (wrong "Start at 2/6 and make 3 jumps of 1/6 to the left"
    "Jumping left takes parts away. Adding joins parts, so you jump to the right.")
  (wrong "Start at 0 and make 3 jumps of 1/6"
    "That shows only 3/6. Start at 2/6, then join 3 more sixths.")
  (hint "Where do you start, and which way does adding go?"))
```

```check
(fraction
  (ask "Kim paints" (math "5/12") "of a fence. Then she paints" (math "6/12") "more. How much of the fence is painted?")
  (answer 11 12) (equivalent) (true "5/12 + 6/12 = 11/12")
  (wrong-if (11 24) "It is one fence cut in twelfths. The parts are still twelfths.")
  (hint "5 twelfths and 6 twelfths."))
```

So: adding fractions of the same whole joins their parts, and the
size of the parts stays the same.
