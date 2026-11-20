# Dividing problems

```lesson
(objective "Solve word problems that divide by a two-digit number, and decide what the remainder means in each one.")
(standards "5.NBT.B.6")
(minutes 30)
```

You can solve dividing problems and decide what the remainder means.

1,250 students go on a trip. Each bus holds 48 students.

1,250 ÷ 48 = 26 R 2: 26 full buses, and 2 students left over.

The 2 students still need a ride, so the school needs **27** buses.
Here the remainder makes you add 1 to the quotient.

```figure
(frac-bar-at 20 60 260 40 26 26 'cool)
(rect 290 97 10 3 'warm)
(frame 290 60 10 40 'ink 1)
(label 150 50 "26 full buses of 48" 'small 'bold)
(label 295 120 "2" 'small 'bold)
(label 160 160 "26 × 48 + 2 = 1,250" 'body)
(label 160 190 "The last 2 students need bus 27" 'body 'bold)
```

```check
(number
  (ask "1,000 people go to a show. Each van holds 36 people. How many vans are needed to carry everyone?")
  (answer 28) (unit "vans")
  (true "1000 = 36 * 27 + 28")
  (wrong-if 27 "27 vans carry 972 people, and 28 people are left. They need one more van.")
  (wrong-if 36000 "Putting people into vans makes groups: divide 1,000 ÷ 36.")
  (hint "1,000 ÷ 36 = 27 R 28.")
  (hint "Do the 28 people left need a van?"))
```

---

## Only full groups count

Sometimes only full groups matter. A factory has 2,500 eggs and packs
them in cartons of 24. How many full cartons can it fill?

2,500 ÷ 24 = 104 R 4. The 4 eggs left do not fill a carton, so the
answer is 104 cartons. Here you drop the remainder.

```check
(number
  (ask "A baker has 875 cookies. A box holds 15. How many boxes can she fill?")
  (answer 58) (unit "boxes")
  (true "875 = 15 * 58 + 5")
  (wrong-if 59 "58 boxes use 870 cookies. 5 are left, which does not fill a box.")
  (hint "875 ÷ 15 = 58 R 5."))
```

---

## The remainder is the answer

Sometimes the question asks what is left. 1,724 stickers are shared
equally among 32 students, as many as possible each. How many are left
over?

1,724 ÷ 32 = 53 R 28. Each student gets 53, and **28** stickers are
left over.

```check
(number
  (ask "960 marbles are put in bags of 45. How many marbles are left over?")
  (answer 15) (from "960 - 45 * 21") (unit "marbles")
  (true "960 = 45 * 21 + 15")
  (wrong-if 21 "21 is the number of full bags. The question asks for the marbles left over.")
  (hint "960 ÷ 45 = 21 R 15."))
```

---

## Worked example

```example
(example
  (problem "A ribbon is 3,600 inches long. It is cut into pieces 75 inches long. How many pieces?")
  (step "3,600 ÷ 75: estimate 3,600 ÷ 80 = 45.")
  (step "75 × 48 = 3,600, so there is no remainder.")
  (answer "48 pieces"))
```

```example
(example
  (problem "1,250 chairs are set in rows of 48. How many chairs are in the last row, which is not full?")
  (step "1,250 ÷ 48 = 26 R 2.")
  (step (number (ask "How many chairs are in the last row?") (answer 2) (from "1250 - 48 * 26") (unit "chairs")
    (wrong-if 26 "26 is the number of full rows. The last row has the chairs left over.")))
  (answer "2 chairs"))
```

---

## Practice

```check
(choice
  (ask "A class needs 1,000 cups. Cups come in packs of 36. Which answer fits?")
  (right "28 packs, since 27 packs are not enough" (true "36 * 27 < 1000"))
  (wrong "27 packs" (false "36 * 27 >= 1000")
    "27 packs hold 972 cups, 28 short. Buy one more pack.")
  (wrong "27 R 28 packs" "You cannot buy part of a pack with a remainder. Decide: 27 is too few, so 28.")
  (hint "1,000 ÷ 36 = 27 R 28."))
```

```check
(number
  (ask "A farmer has 1,724 apples and packs them in crates of 32. How many crates does she fill?")
  (answer 53) (unit "crates")
  (true "1724 = 32 * 53 + 28")
  (wrong-if 54 "The 54th crate would have only 28 apples, so it is not full.")
  (hint "1,724 ÷ 32 = 53 R 28."))
```

---

```check
(number
  (ask "A school shares 2,500 pencils equally among 24 classes, as many as possible each. How many pencils are left over?")
  (answer 4) (from "2500 - 24 * 104") (unit "pencils")
  (true "2500 = 24 * 104 + 4")
  (wrong-if 104 "104 is how many each class gets. The question asks for the pencils left over.")
  (hint "2,500 ÷ 24 = 104 R 4."))
```

```check
(choice
  (ask "875 people ride a ride with 15 seats a trip. How many trips are needed for everyone?")
  (right "59" (true "875 = 15 * 58 + 5"))
  (wrong "58" "58 trips carry 870 people. 5 people still need a trip.")
  (wrong "5" "5 is the remainder, the people left after 58 trips. They need 1 more trip: 59.")
  (hint "875 ÷ 15 = 58 R 5."))
```

So: divide, then read the problem again to decide whether to add 1,
drop the remainder, or give the remainder as the answer.
