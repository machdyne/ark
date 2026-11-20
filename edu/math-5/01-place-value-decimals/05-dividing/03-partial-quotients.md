# Partial quotients

```lesson
(objective "Divide a number of up to 4 digits by a two-digit number by taking away multiples of the divisor and adding the partial quotients.")
(standards "5.NBT.B.6")
(minutes 25)
```

You can divide by a two-digit number by taking away easy groups.

Find 1,512 ÷ 24. Take away groups of 24 you know:

- 50 groups: $50 * 24 = 1200$. 312 is left.
- 10 groups: $10 * 24 = 240$. 72 is left.
- 3 groups: $3 * 24 = 72$. 0 is left.

Add the partial quotients: $50 + 10 + 3 = 63$. So 1,512 ÷ 24 = 63.

```figure
(define k (slider 'k 0 3 3 "Steps" 1))
(m5p1-quot 160 22 1512 24 '(50 10 3) k)
(label 160 210 (if (= k 3) "50 + 10 + 3 = 63 groups" "") 'body 'bold)
```

```check
(number
  (ask "Find 988 ÷ 26. Take away 30 groups of 26 first.")
  (answer 38) (from "988 ÷ 26") (true "26 * 38 = 988")
  (wrong-if 30 "30 groups use 780, and 208 is left. 208 is 8 more groups of 26.")
  (wrong-if 8 "Add every partial quotient: 30 + 8.")
  (hint "30 × 26 = 780. 988 - 780 = 208.")
  (hint "How many groups of 26 are in 208?"))
```

---

## Easy multiples

Groups of 10, 20, 50 and 100 are easy to find. Make a short list first:

| Groups | of 34 |
| 1 | 34 |
| 10 | 340 |
| 20 | 680 |
| 100 | 3,400 |

For 3,672 ÷ 34: take away 100 groups (3,400), and 272 is left. Then 8
groups: $8 * 34 = 272$. So 3,672 ÷ 34 = 108.

```check
(number
  (ask "Find 2,795 ÷ 43. Start with 50 groups of 43.")
  (answer 65) (from "2795 ÷ 43") (true "43 * 65 = 2795")
  (wrong-if 50 "50 groups use 2,150, and 645 is left. Keep taking away: 10 groups, then 5.")
  (wrong-if 15 "Add the first 50 groups too: 50 + 10 + 5 = 65.")
  (hint "50 × 43 = 2,150. 2,795 - 2,150 = 645.")
  (hint "10 × 43 = 430. 645 - 430 = 215. 5 × 43 = 215."))
```

---

## Any groups work

You may take away bigger or smaller groups. Fewer steps are quicker,
but the quotient is the same.

```check
(choice
  (ask "Ana finds 897 ÷ 23 as 10 + 10 + 10 + 9. Ben finds it as 30 + 9. Who is right?")
  (right "Both: 10 + 10 + 10 + 9 = 30 + 9 = 39" (true "23 * 39 = 897"))
  (wrong "Only Ben: you must take the biggest groups." (false "10 + 10 + 10 + 9 != 39")
    "Any groups you can take away work. Ana just takes more steps.")
  (wrong "Only Ana: Ben's groups are too big." (false "23 * 30 > 897")
    "30 × 23 = 690, which is less than 897, so Ben can take 30 groups.")
  (hint "Add each person's partial quotients."))
```

---

## Worked example

```example
(example
  (problem "Divide 5,250 ÷ 42.")
  (step "100 × 42 = 4,200. 5,250 - 4,200 = 1,050.")
  (step "20 × 42 = 840. 1,050 - 840 = 210.")
  (step "5 × 42 = 210. 210 - 210 = 0.")
  (answer "100 + 20 + 5 = 125, so 5,250 ÷ 42 = 125"))
```

```example
(example
  (problem "Divide 1,938 ÷ 17.")
  (step "100 × 17 = 1,700. 238 is left.")
  (step "10 × 17 = 170. 68 is left. 4 × 17 = 68. 0 is left.")
  (step (number (ask "Add the partial quotients.") (answer 114) (from "1938 ÷ 17") (true "17 * 114 = 1938")
    (wrong-if 14 "Add the 100 groups too: 100 + 10 + 4.")))
  (answer "1,938 ÷ 17 = 114"))
```

---

## Practice

```check
(number
  (ask "Find 7,344 ÷ 36.")
  (answer 204) (from "7344 ÷ 36") (true "36 * 204 = 7344")
  (wrong-if 24 "200 groups of 36 come first: 7,200. Then 4 groups: 144. 200 + 4 = 204.")
  (hint "200 × 36 = 7,200. 7,344 - 7,200 = 144."))
```

```check
(number
  (ask "Find 3,842 ÷ 34.")
  (answer 113) (from "3842 ÷ 34") (true "34 * 113 = 3842")
  (wrong-if 13 "The first step is 100 groups: 3,400. Then 13 groups: 442. 100 + 13 = 113.")
  (hint "100 × 34 = 3,400. 3,842 - 3,400 = 442.")
  (hint "10 × 34 = 340. 442 - 340 = 102. 3 × 34 = 102."))
```

---

```check
(number
  (ask "A ferry carries 1,344 people in trips of 24 people each. How many trips?")
  (answer 56) (from "1344 ÷ 24") (unit "trips") (true "24 * 56 = 1344")
  (wrong-if 32256 "Putting people into equal trips is dividing: 1,344 ÷ 24.")
  (hint "50 × 24 = 1,200."))
```

```check
(number
  (ask "Find 2,346 ÷ 51.")
  (answer 46) (from "2346 ÷ 51") (true "51 * 46 = 2346")
  (wrong-if 40 "40 groups use 2,040, and 306 is left. 306 is 6 more groups of 51.")
  (hint "40 × 51 = 2,040. 2,346 - 2,040 = 306."))
```

So: take away easy groups of the divisor until nothing is left, and add
the partial quotients.
