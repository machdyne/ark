# Why multiplying works

```lesson
(objective "Explain why a/b = (n x a)/(n x b) by cutting every part of a model into n equal parts.")
(standards "4.NF.A.1")
(minutes 25)
```

You can explain why multiplying the top and the bottom by one number
works.

Start with $2/3$. Cut every third into the same number of equal parts.
Move the slider to choose how many.

```figure
(define n (slider 'n 1 4 1 "Cut into" 1))
(m4p2-bar 60 50 240 40 2 3 n 'warm)
(math 160 140 (string-append "2/3 = (" (fmt n 0) " * 2)/(" (fmt n 0) " * 3) = " (m4p2-s (* 2 n) (* 3 n))) 22)
(caption "Thick: the thirds. Thin: the new cuts.")
```

```check
(number
  (ask "You cut every third of 2/3 into 2 equal parts. How many parts does the whole have now?")
  (answer 6) (from "3 * 2")
  (wrong-if 5 "5 is 3 + 2. Each of the 3 thirds becomes 2 parts: 3 × 2 = 6.")
  (wrong-if 4 "4 is the shaded parts: 2 × 2. The whole has 3 thirds, each in 2 parts: 6.")
  (hint "Move the slider to 2 and count all the parts."))
```

---

## Why the amount stays the same

Cutting a part does not add or take away any of the bar. The shading
ends at the same place.

- The number of parts is multiplied by n.
- Each part is 1/n of its old size.

So you have n times as many parts, each 1/n of the old size: the same
amount.

```check
(choice
  (ask "You cut every part of a fraction into 3 equal parts. What happens to the size of each part?")
  (right "Each part is 1/3 of its old size")
  (wrong "Each part is 3 times as big"
    "Cutting makes parts smaller, not bigger. Each old part is now 3 small parts, each 1/3 of its size.")
  (wrong "The size does not change"
    "The whole and the shaded amount do not change. But each part does: it is cut into 3 smaller parts.")
  (hint "Move the slider from 1 to 3. Look at one part."))
```

---

## Multiply the top and the bottom

Cutting every part into n parts multiplies 2 numbers by n: the shaded
parts, and all the parts of the whole.

$$ a/b = (n * a)/(n * b) $$

For $3/4$ with n = 2: $3/4 = (2 * 3)/(2 * 4) = 6/8$.

```sources
(source "Common Core State Standards for Mathematics (2010), Grade 4, 4.NF.A.1: a/b is equivalent to (n x a)/(n x b), explained with fraction models")
```

```check
(fraction
  (ask "Cut every part of" (math "3/4") "into 3 equal parts. What fraction is shaded now? Count the small parts.")
  (answer 9 12) (true "3/4 = 9/12")
  (wrong-if (9 4) "The whole is cut into more parts too: 4 × 3 = 12. Multiply the denominator as well.")
  (wrong-if (6 7) "6/7 adds 3 to the top and the bottom. Cutting multiplies: 3 × 3 over 4 × 3.")
  (hint "Shaded parts: 3 × 3. Parts in the whole: 4 × 3."))
```

---

## Why both, and by the same number?

Multiply only the numerator: $2/3$ becomes $8/3$, more than 2 wholes.
Multiply only the denominator: $2/3$ becomes $2/12$, much less. Each
changes the amount.

Only cutting every part, so that both are multiplied by the same
number, keeps the amount.

```check
(choice
  (ask "Which is equivalent to" (math "2/5") "?")
  (right "4/10" (true "2/5 = 4/10"))
  (wrong "4/5" (false "2/5 = 4/5")
    "Only the numerator was multiplied. 4/5 is twice as much as 2/5.")
  (wrong "2/10" (false "2/5 = 2/10")
    "Only the denominator was multiplied. 2/10 is half as much as 2/5.")
  (wrong "4/7" (false "2/5 = 4/7")
    "Adding 2 to the top and the bottom does not cut the parts equally. Multiply both by 2: 4/10.")
  (hint "Cut every fifth into 2 parts."))
```

---

## In an area model

The same idea works in a rectangle. Here $1/4$ is cut across into rows.
Each row cut multiplies the shaded parts and all the parts by the same
number.

```figure
(define n (slider 'n 1 3 1 "Rows" 1))
(m4p2-area 60 20 200 140 1 4 n 'warm)
(math 160 200 (string-append "1/4 = " (m4p2-s n (* 4 n))) 24)
```

```check
(fraction
  (ask "Cut the" (math "1/4") "rectangle into 3 rows. What fraction is shaded? Count the small parts.")
  (answer 3 12) (true "1/4 = 3/12")
  (wrong-if (1 12) "The shaded column is cut into 3 parts too, so 3 parts are shaded.")
  (wrong-if (3 4) "The whole is cut into 4 × 3 = 12 parts now, not 4.")
  (hint "Move the slider to 3. Count the shaded parts and all the parts."))
```

---

## Worked example

```example
(example
  (problem "Explain why 3/5 = 6/10.")
  (step "Start with a bar in fifths, 3 shaded.")
  (step "Cut every fifth into 2 equal parts. Now there are 5 × 2 = 10 parts.")
  (step "The 3 shaded fifths become 3 × 2 = 6 shaded tenths.")
  (step "Nothing was added or taken away.")
  (answer "3/5 = (2 × 3)/(2 × 5) = 6/10."))
```

```example
(example
  (problem "Explain why 5/6 = 10/12.")
  (step "Cut every sixth into 2 equal parts: 6 × 2 = 12 parts.")
  (step (number (ask "How many parts are shaded now?")
    (answer 10) (from "5 * 2")
    (wrong-if 7 "7 is 5 + 2. Each shaded sixth becomes 2 parts: 5 × 2.")))
  (answer "5/6 = (2 × 5)/(2 × 6) = 10/12."))
```

---

## Practice

```check
(fraction
  (ask "Cut every part of" (math "1/3") "into 4 equal parts. What fraction is shaded? Count the small parts.")
  (answer 4 12) (true "1/3 = 4/12")
  (wrong-if (1 12) "The shaded third is cut into 4 parts too. Multiply the numerator by 4 as well.")
  (wrong-if (5 7) "That adds 4 to the top and the bottom. Cutting multiplies both by 4.")
  (hint "Multiply the top and the bottom by 4."))
```

```check
(number
  (ask "2/4 = ?/12")
  (answer 6) (from "2 * 3") (true "2/4 = 6/12")
  (wrong-if 10 "10 adds 8 to the top, as 12 adds 8 to 4. But 4 × 3 = 12, so multiply the top by 3.")
  (wrong-if 2 "The bottom was multiplied by 3. The top must be multiplied by 3 too.")
  (hint "4 × ? = 12. Do the same to the 2."))
```

---

```check
(choice
  (ask "Why does" (math "1/2 = 5/10") "?")
  (right "Each half cut into 5 parts gives 10 parts, 5 of them shaded")
  (wrong "5 and 10 are both 4 more than 1 and 2"
    "5 is 4 more than 1, but 10 is 8 more than 2. Equivalent fractions come from multiplying, not adding.")
  (wrong "Both have 1 part shaded"
    "5/10 has 5 small parts shaded, not 1. They fill the same amount as 1 half.")
  (hint "Cut each half into 5."))
```

```check
(fraction
  (ask "Cut every part of" (math "2/3") "into 2 equal parts. What fraction is shaded? Count the small parts.")
  (answer 4 6) (true "2/3 = 4/6")
  (wrong-if (4 3) "The whole is cut too: 3 × 2 = 6 parts. Multiply the bottom by 2 as well.")
  (wrong-if (2 6) "The 2 shaded thirds become 4 shaded sixths. Multiply the top by 2 as well.")
  (hint "Multiply the top and the bottom by 2."))
```

So: cutting every part into n equal parts multiplies the numerator and
the denominator by n. The amount stays the same.
