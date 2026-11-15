# Decomposing fractions

```lesson
(objective "Decompose a fraction into a sum of fractions with the same denominator in more than one way, such as 5/6 = 2/6 + 3/6 = 1/6 + 4/6, and record each with an equation.")
(standards "4.NF.B.3b")
(minutes 20)
(keywords "decompose")
```

You can break a fraction into parts in more than one way.

To **decompose** a number means to break it into parts that add up to
it. You can decompose $5/6$ as $2/6 + 3/6$. You can also decompose it
as $1/6 + 4/6$.

```figure
(define a (slider 'a 1 4 2 "First part" 1))
(frac-bar-at 40 50 240 40 6 a 'warm)
(rect (+ 40 (* 40 a)) 50 (* 40 (- 5 a)) 40 'cool)
(frame 40 50 240 40 'ink 1.5)
(for-range 1 6 (lambda (i) (line (+ 40 (* 40 i)) 50 (+ 40 (* 40 i)) 90 'ink 1)))
(math 160 150 (string-append "5/6 = " (m4p3-s a 6) " + " (m4p3-s (- 5 a) 6)) 22)
(caption "Left: the first part. Next to it: the second part.")
```

```check
(number
  (ask "5/6 = 1/6 + ?/6. What is the missing numerator?")
  (answer 4) (from "5 - 1") (true "5/6 = 1/6 + 4/6")
  (wrong-if 5 "1/6 + 5/6 is 6/6, the whole bar. You need only 5 sixths.")
  (wrong-if 6 "The denominator stays 6. The numerators must add up to 5.")
  (hint "1 + ? = 5"))
```

---

## Many ways

The numerators must add up to the numerator of the fraction. The
denominator stays the same. For $4/8$:

- $4/8 = 1/8 + 3/8$
- $4/8 = 2/8 + 2/8$
- $4/8 = 1/8 + 1/8 + 2/8$

```check
(choice (several)
  (ask "Which equations decompose" (math "7/10") "? Choose all.")
  (right "7/10 = 3/10 + 4/10" (true "7/10 = 3/10 + 4/10"))
  (right "7/10 = 5/10 + 1/10 + 1/10" (true "7/10 = 5/10 + 1/10 + 1/10"))
  (wrong "7/10 = 3/5 + 4/5" (false "7/10 = 3/5 + 4/5")
    "Fifths are bigger than tenths. The parts must be tenths, like the fraction you decompose.")
  (wrong "7/10 = 2/10 + 4/10" (false "7/10 = 2/10 + 4/10")
    "2 + 4 = 6, so this sum is 6/10. The numerators must add up to 7.")
  (hint "Are the parts tenths? Do the numerators add up to 7?"))
```

---

## Check with a model

A model shows that an equation is true. Shade $3/4$ of a bar. Draw a
line after the first part. You see $1/4$ and $2/4$: so
$3/4 = 1/4 + 2/4$.

```figure
(frac-bar-at 40 60 240 40 4 1 'warm)
(rect 100 60 120 40 'cool)
(frame 40 60 240 40 'ink 1.5)
(for-range 1 4 (lambda (i) (line (+ 40 (* 60 i)) 60 (+ 40 (* 60 i)) 100 'ink 1)))
(line 100 50 100 110 'ink 3)
(math 70 135 "1/4" 18)
(math 160 135 "2/4" 18)
(caption "3/4 = 1/4 + 2/4")
```

```check
(fraction
  (ask "3/4 = 2/4 + ?")
  (answer 1 4) (equivalent) (true "3/4 = 2/4 + 1/4")
  (wrong-if (1 2) "1/2 = 2/4, and 2/4 + 2/4 is the whole bar. You need 1 more fourth.")
  (wrong-if (3 4) "2/4 + 3/4 is more than 3/4. What do you add to 2 fourths to make 3 fourths?")
  (hint "2 fourths and how many fourths make 3 fourths?"))
```

---

## Worked example

```example
(example
  (problem "Decompose 6/8 in 2 ways.")
  (step "The parts are eighths. The numerators must add up to 6.")
  (step "6 = 2 + 4, so 6/8 = 2/8 + 4/8.")
  (step "6 = 3 + 3, so 6/8 = 3/8 + 3/8.")
  (answer "6/8 = 2/8 + 4/8 and 6/8 = 3/8 + 3/8."))
```

```example
(example
  (problem "Decompose 9/12 into 3 parts.")
  (step "The numerators must add up to 9.")
  (step "Try 9 = 2 + 3 + ?")
  (step (number (ask "What is the third numerator?")
    (answer 4) (from "9 - 2 - 3")
    (wrong-if 5 "2 + 3 + 5 = 10. You need 9.")))
  (answer "9/12 = 2/12 + 3/12 + 4/12."))
```

---

## Practice

```check
(number
  (ask "8/10 = 5/10 + ?/10. What is the missing numerator?")
  (answer 3) (from "8 - 5") (true "8/10 = 5/10 + 3/10")
  (wrong-if 13 "13/10 is more than 8/10. Find the part that adds to 5 to make 8.")
  (hint "5 + ? = 8"))
```

```check
(number
  (ask "11/12 = 4/12 + 4/12 + ?/12. What is the missing numerator?")
  (answer 3) (from "11 - 4 - 4") (true "11/12 = 4/12 + 4/12 + 3/12")
  (wrong-if 7 "7 is 11 - 4. You must take away both 4s: 11 - 4 - 4 = 3.")
  (hint "4 + 4 = 8. What makes 11?"))
```

---

```check
(choice
  (ask "Ben writes" (math "2/3 = 1/3 + 1/3") ". Ana writes" (math "2/3 = 1/2 + 1/1") ". Who is right?")
  (right "Ben" (true "2/3 = 1/3 + 1/3"))
  (wrong "Ana"
    "Ana split the numbers 2 and 3, not the fraction. 1/2 + 1/1 is more than 1 whole. The parts must be thirds.")
  (wrong "Both"
    "Only one sum makes 2/3. Ana's parts are not thirds.")
  (hint "Are the parts thirds, and do they make 2 thirds?"))
```

```check
(fraction
  (ask "5/5 = 2/5 + ?")
  (answer 3 5) (equivalent) (true "5/5 = 2/5 + 3/5")
  (wrong-if (2 5) "2/5 + 2/5 = 4/5, not the whole. You need 3 more fifths.")
  (hint "The whole is 5 fifths. 2 fifths and how many more?"))
```

So: decompose a fraction by splitting its numerator, keeping the
denominator, and write each way as an equation.
