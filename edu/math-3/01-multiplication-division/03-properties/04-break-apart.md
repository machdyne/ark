# Break apart a fact

```lesson
(objective "Use the distributive property: find 8 x 7 as 8 x 5 + 8 x 2.")
(standards "3.OA.B.5")
(minutes 25)
(keywords "distributive property")
```

You can find a hard fact by breaking it into 2 easy facts.

Look at the array of 8 rows of 7. Cut it into 2 parts: 8 rows of 5 and
8 rows of 2. You know 8 × 5 = 40 and 8 × 2 = 16. Together: 40 + 16 = 56.

Move the slider to cut the array in other places.

```figure
(define s (slider 's 1 6 5 "Cut after" 1))
(dot-array 60 30 8 s 18 'ink)
(dot-array (+ 60 (* s 18) 14) 30 8 (- 7 s) 18 'ink)
(line (+ 60 (* s 18) -2) 18 (+ 60 (* s 18) -2) 168 'ink 2)
(label 160 192 (string-append "(8 × " (fmt s 0) ") + (8 × " (fmt (- 7 s) 0) ")") 'body)
(label 160 214 (string-append (fmt (* 8 s) 0) " + " (fmt (* 8 (- 7 s)) 0) " = 56") 'body 'bold)
```

```check
(number
  (ask "8 × 5 = 40 and 8 × 2 = 16. What is 8 × 7?")
  (answer 56) (from "8 * 5 + 8 * 2") (true "8 * 7 = 56")
  (wrong-if 15 "15 is 8 + 7. Add the 2 parts of the array: 40 + 16.")
  (wrong-if 40 "40 is only the left part, 8 × 5. Add the right part too: 40 + 16.")
  (hint "Add the 2 parts: 40 + 16."))
```

---

## The distributive property

You split 7 into 5 + 2. Then you multiplied 8 by each part and added.

$$ 8 × 7 = (8 × 5) + (8 × 2) $$

The **distributive property** says you can break a factor into parts,
multiply each part, and add the products.

```check
(choice
  (ask "Which shows 6 × 9 broken apart?")
  (right "(6 × 5) + (6 × 4)" (true "6 * 9 = (6 * 5) + (6 * 4)"))
  (wrong "(6 × 5) + 4"
    "The 4 must be multiplied by 6 as well. Each part of the 9 is 6 rows long: (6 × 5) + (6 × 4).")
  (wrong "(6 × 5) × (6 × 4)"
    "The 2 parts are added, not multiplied. Put the 2 pieces of the array back together with +.")
  (hint "9 = 5 + 4. Multiply 6 by each part. Then add."))
```

---

## Break off an easy part

Breaking off a 5 works well, because 5s are easy. So does breaking off
a 2 or a 1. Pick parts whose facts you know.

7 × 6: break 6 into 5 + 1. Then 7 × 5 = 35 and 7 × 1 = 7. So
7 × 6 = 35 + 7 = 42.

```check
(number
  (ask "Find 4 × 7 as (4 × 5) + (4 × 2).")
  (answer 28) (from "4 * 5 + 4 * 2") (true "4 * 7 = 28")
  (wrong-if 22 "4 × 5 is 20, and the 2 must be multiplied by 4 too: 4 × 2 = 8. So 20 + 8.")
  (wrong-if 11 "11 is 4 + 7. Find 4 × 5 = 20 and 4 × 2 = 8, then add.")
  (hint "4 × 5 = 20 and 4 × 2 = 8."))
```

---

## Worked example

```example
(example
  (problem "Find 8 × 6 by breaking apart the 6.")
  (step "Break 6 into 5 + 1.")
  (step "8 × 5 = 40 and 8 × 1 = 8.")
  (step "Add the products: 40 + 8 = 48.")
  (answer "8 × 6 = 48"))
```

```example
(example
  (problem "Find 9 × 7 by breaking apart the 7.")
  (step "Break 7 into 5 + 2.")
  (step "9 × 5 = 45 and 9 × 2 = 18.")
  (step (number (ask "45 + 18 = ?") (answer 63) (from "45 + 18") (true "9 * 7 = 63")
    (wrong-if 53 "45 + 18: 45 + 10 = 55, then 55 + 8 = 63.")))
  (answer "9 × 7 = 63"))
```

---

## Practice

```check
(number
  (ask "Find 6 × 8 as (6 × 5) + (6 × 3).")
  (answer 48) (from "6 * 5 + 6 * 3") (true "6 * 8 = 48")
  (wrong-if 33 "6 × 5 is 30, and the 3 must be multiplied by 6 too: 6 × 3 = 18. So 30 + 18.")
  (hint "6 × 5 = 30 and 6 × 3 = 18."))
```

```check
(number
  (ask "Find the missing number: 7 × 8 = (7 × 5) + (7 × ?)")
  (answer 3) (from "8 - 5") (true "7 * 8 = (7 * 5) + (7 * 3)")
  (wrong-if 8 "The 8 is split into 2 parts. One part is 5. What is the other part?")
  (wrong-if 21 "21 is 7 × 3, a product. The missing number is the part of the 8: 8 = 5 + 3.")
  (hint "8 = 5 + ?"))
```

---

```check
(number
  (ask "A garden has 3 rows of 9 plants. Find 3 × 9 as (3 × 5) + (3 × 4).")
  (answer 27) (from "3 * 5 + 3 * 4") (true "3 * 9 = 27")
  (wrong-if 19 "3 × 5 is 15, and the 4 must be multiplied by 3 too: 3 × 4 = 12. So 15 + 12.")
  (hint "3 × 5 = 15 and 3 × 4 = 12."))
```

So: by the distributive property, you can break a factor into parts, multiply each part, then add.
