# Doubling

```lesson
(objective "Find facts of 4, 6 and 8 by doubling facts of 2, 3 and 4.")
(standards "3.OA.B.5" "3.OA.C.7")
(minutes 20)
```

You can find a 4s, 6s or 8s fact by doubling a fact you know.

6 is double 3. So 6 rows of 7 are 2 copies of 3 rows of 7. Find 3 × 7,
then double it.

```figure
(dot-array 90 22 3 7 20 'ink)
(label 270 47 "3 × 7 = 21" 'small)
(line 76 80 220 80 'ink 2)
(dot-array 90 100 3 7 20 'ink)
(label 270 125 "3 × 7 = 21" 'small)
(label 160 190 "6 × 7 = 21 + 21 = 42" 'body 'bold)
```

```check
(number
  (ask "3 × 7 = 21. Double it to find 6 × 7.")
  (answer 42) (from "21 + 21") (true "6 * 7 = 42")
  (wrong-if 24 "24 is 21 + 3. Doubling means adding 21 to itself: 21 + 21.")
  (wrong-if 28 "28 is 4 × 7. 6 rows of 7 are two sets of 3 rows of 7: 21 + 21.")
  (hint "Double 21: 21 + 21."))
```

---

## 4s are double 2s

4 is double 2. So a 4s fact is double the 2s fact.

4 × 6: first 2 × 6 = 12. Double it: 12 + 12 = 24. So 4 × 6 = 24.

```check
(number
  (ask "2 × 9 = 18. Double it to find 4 × 9.")
  (answer 36) (from "18 + 18") (true "4 * 9 = 36")
  (wrong-if 20 "20 is 18 + 2. Double 18 by adding it to itself: 18 + 18.")
  (hint "18 + 18: 10 + 10 = 20, 8 + 8 = 16, then 20 + 16."))
```

---

## 8s are double 4s

8 is double 4. So an 8s fact is double the 4s fact.

8 × 6: first 4 × 6 = 24. Double it: 24 + 24 = 48. So 8 × 6 = 48.

You can even double twice: 2 × 6 = 12, 4 × 6 = 24, 8 × 6 = 48.

```check
(number
  (ask "4 × 7 = 28. Double it to find 8 × 7.")
  (answer 56) (from "28 + 28") (true "8 * 7 = 56")
  (wrong-if 32 "32 is 28 + 4. Double 28 by adding it to itself: 28 + 28.")
  (wrong-if 46 "28 + 28: 20 + 20 = 40 and 8 + 8 = 16. 40 + 16 = 56.")
  (hint "28 + 28: add the tens, then the ones."))
```

---

## Why it works

Doubling uses the properties you know. 6 × 7 is (2 × 3) × 7. By the
associative property, that is 2 × (3 × 7): 2 groups of 21.

```check
(choice
  (ask "Which fact can you double to find 6 × 4?")
  (right "3 × 4" (true "6 * 4 = 2 * (3 * 4)"))
  (wrong "3 × 2"
    "Doubling 3 × 2 gives 6 × 2, not 6 × 4. Keep the 4 and double the 3: double 3 × 4.")
  (wrong "2 × 4"
    "Doubling 2 × 4 gives 4 × 4, not 6 × 4. 6 is double 3, so double 3 × 4.")
  (hint "6 is double which number?"))
```

---

## Worked example

```example
(example
  (problem "Find 6 × 8 by doubling.")
  (step "6 is double 3, so find 3 × 8 first.")
  (step "3 × 8 = 24.")
  (step "Double it: 24 + 24 = 48.")
  (answer "6 × 8 = 48"))
```

```example
(example
  (problem "Find 8 × 8 by doubling.")
  (step "8 is double 4, so find 4 × 8 first.")
  (step "4 × 8 = 32.")
  (step (number (ask "Double 32. What is 8 × 8?") (answer 64) (from "32 + 32") (true "8 * 8 = 64")
    (wrong-if 36 "36 is 32 + 4. Double 32 by adding it to itself: 32 + 32.")))
  (answer "8 × 8 = 64"))
```

---

## Practice

```check
(number
  (ask "3 × 9 = 27. Find 6 × 9.")
  (answer 54) (from "27 + 27") (true "6 * 9 = 54")
  (wrong-if 30 "30 is 27 + 3. Double 27: 27 + 27.")
  (hint "27 + 27: 20 + 20 = 40 and 7 + 7 = 14."))
```

```check
(number
  (ask "Find 4 × 8 by doubling 2 × 8.")
  (answer 32) (from "16 + 16") (true "4 * 8 = 32")
  (wrong-if 18 "18 is 16 + 2. First 2 × 8 = 16, then double it: 16 + 16.")
  (hint "2 × 8 = 16. Now double 16."))
```

---

```check
(choice
  (ask "Jo says, \"To find 8 × 5, I double 4 × 5.\" Is she right?")
  (right "Yes: 8 is double 4, so 8 × 5 = 20 + 20 = 40" (true "8 * 5 = 20 + 20"))
  (wrong "No: you must double 2 × 5"
    "Doubling 2 × 5 gives 4 × 5, not 8 × 5. 8 is double 4, so Jo is right.")
  (hint "Is 8 double 4?"))
```

So: double a 2s fact for 4s, a 3s fact for 6s and a 4s fact for 8s.
