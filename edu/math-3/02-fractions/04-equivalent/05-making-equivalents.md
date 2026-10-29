# Making equivalent fractions

```lesson
(objective "Make an equivalent fraction by cutting every part into the same number of smaller parts.")
(standards "3.NF.A.3b")
(minutes 20)
```

You can make an equivalent fraction by cutting every part into the
same number of smaller parts.

Choose a fraction. Then move the slider to cut every part into 2, 3
or 4 smaller parts. The shaded part stays the same size.

```figure
(define c (choice 'f '("1/2" "1/3" "1/4" "2/3" "3/4") "Fraction"))
(define a (list-ref '(1 1 1 2 3) c))
(define b (list-ref '(2 3 4 3 4) c))
(define k (min (quotient 8 b) (slider 'k 1 (quotient 8 b) 1 "Cut into" 1)))
(frac-bar-at 40 40 240 40 b a 'warm)
(frac-bar-at 40 120 240 40 (* b k) (* a k) 'cool)
(for-range 1 b (lambda (i) (line (+ 40 (* (/ 240 b) i)) 114 (+ 40 (* (/ 240 b) i)) 166 'ink 3)))
(math 160 205 (string-append (fr-s a b) " = " (fr-s (* a k) (* b k))) 24)
```

```check
(fraction
  (ask "Choose 1/2 and cut each part into 3. What fraction is shaded now?")
  (answer 3 6) (true "1/2 = 3/6")
  (wrong-if (1 6) "Every part is cut into 3, so the 1 shaded part becomes 3 shaded parts.")
  (wrong-if (3 2) "The whole now has 2 times 3 parts, which is 6. So the denominator is 6.")
  (hint "There are 3 times as many parts in all, and 3 times as many shaded."))
```

---

## Both numbers change the same way

When you cut every part into 2, there are 2 times as many parts in
all. There are also 2 times as many shaded parts.

$$ 3/4 = 6/8 $$

The denominator 4 becomes $4 * 2 = 8$. The numerator 3 becomes
$3 * 2 = 6$.

```check
(fraction
  (ask "Cut every part of" (math "1/3") "into 2 smaller parts. What fraction is it now?")
  (answer 2 6) (true "1/3 = 2/6")
  (wrong-if (1 6) "The shaded part is cut into 2 as well. 1 shaded part becomes 2.")
  (wrong-if (2 3) "The denominator changes too: 3 parts each cut into 2 make 6 parts.")
  (hint "Multiply both the numerator and the denominator by 2."))
```

---

## Every part, not just some

You must cut every part, shaded or not, into the same number of
pieces. If you cut only some parts, the parts are no longer equal.

```figure
(fr-cuts 40 60 240 50 '(0.125 0.25 0.5 0.75) 2 'warm #f)
(caption "Only the first fourth is cut in half.")
```

```check
(choice
  (ask "Here only 1 fourth was cut in half. Can you say the bar now shows fifths?")
  (right "No: the 5 parts are not equal")
  (wrong "Yes: there are 5 parts"
    "There are 5 parts, but 2 are small and 3 are big. Fifths must be 5 equal parts.")
  (hint "Are all 5 parts the same size?"))
```

---

## Worked example

```example
(example
(problem "Make a fraction equivalent to 1/4 with denominator 8.")
(step "4 parts must become 8 parts, so cut every part into 2.")
(step "The 1 shaded part becomes 2 shaded parts.")
(answer "1/4 = 2/8."))
```

```example
(example
(problem "Make a fraction equivalent to 1/2 with denominator 8.")
(step "2 parts must become 8 parts, so cut every part into 4.")
(step (choice (ask "What happens to the 1 shaded part?")
  (right "It becomes 4 shaded parts")
  (wrong "It stays 1 part"
    "The shaded part is cut into 4 like every other part. It becomes 4 smaller parts.")))
(answer "1/2 = 4/8."))
```

---

## Practice

```check
(fraction
  (ask "Cut every part of" (math "1/2") "into 2 smaller parts. Write the new fraction.")
  (answer 2 4) (true "1/2 = 2/4")
  (wrong-if (1 4) "The shaded half is cut into 2 as well, so 2 parts are shaded.")
  (wrong-if (2 2) "2/2 is the whole. The 2 parts became 4 parts, so the denominator is 4.")
  (hint "Both numbers become 2 times as big."))
```

```check
(fraction
  (ask "Write a fraction equivalent to" (math "2/3") "with denominator 6.")
  (answer 4 6) (true "2/3 = 4/6")
  (wrong-if (2 6) "The denominator went from 3 to 6: every part was cut into 2. The 2 shaded parts become 4.")
  (wrong-if (5 6) "Adding 3 to both numbers does not keep the size. Cut every part into 2: the numerator becomes 2 times 2.")
  (hint "3 parts became 6 parts. Into how many was each part cut?"))
```

So: cut every part into the same number of smaller parts, and the
numerator and the denominator both grow the same number of times.
