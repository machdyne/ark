# Place value

```lesson
(objective "Read and write whole numbers using the value of each digit's place.")
(minutes 15)
(keywords "digit" "place value")
```

Every whole number is built from just ten symbols, and where each one
stands tells you what it is worth.

The ten symbols 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9 are the **digits**.
The number 4072 has four digits: 4, 0, 7 and 2.

```check
(number
  (ask "How many digits does the number 30500 have?")
  (answer 5)
  (wrong-if 3 "Count the zeros too. 3, 0, 5, 0, 0 is five digits; a zero is a digit like any other.")
  (wrong-if 2 "3 and 5 are not the only digits. Each 0 is a digit too: 3, 0, 5, 0, 0.")
  (hint "Count every symbol, zeros included."))
```

---

## Each place is worth ten times the next

The value of a digit depends on its place. This is called **place
value**. From the right, the places are ones, tens, hundreds and
thousands. Each place is worth 10 times the place to its right.

| thousands | hundreds | tens | ones |
|---|---|---|---|
| 4 | 0 | 7 | 2 |

So 4072 is 4 thousands, 0 hundreds, 7 tens and 2 ones:

$$ 4072 = 4000 + 70 + 2 $$

```check
(choice
  (ask "In 4072, what is the 7 worth?")
  (right "70" (true "7 * 10 = 70"))
  (wrong "7" "The 7 is in the tens place, second from the right. So it stands for 7 tens, which is 70.")
  (wrong "700" "Count the places from the right: ones, then tens. The 7 is in the tens place, not the hundreds.")
  (hint "Count the places from the right: ones, tens, hundreds.")
  (hint "The 7 is second from the right."))
```

---

## Zero holds a place

A 0 says "none of this place", but it still matters. It keeps the
other digits in their places. 4072 and 472 are very different
amounts: without the 0, the 4 slides from thousands to hundreds.

```check
(choice
  (ask "A pay slip should say 1050 dollars, but it says 150. How much is missing?")
  (right "900 dollars" (true "1050 - 150 = 900"))
  (wrong "0 dollars" "The digits look almost the same, but they are in different places. 1050 is one thousand and fifty; 150 is one hundred and fifty.")
  (wrong "1000 dollars" (false "1050 - 150 = 1000") "Take 150 from 1050 carefully: 1050 - 150 = 900. The missing 0 moved the 1 from the thousands to the hundreds.")
  (hint "Work out 1050 - 150."))
```

---

## Writing a number from its parts

```example
(example
  (problem "Write the number with 6 thousands, 3 hundreds, 0 tens and 8 ones.")
  (step "Thousands: 6. Hundreds: 3. Tens: 0. Ones: 8.")
  (step "Write the digits in order, keeping the 0 for the empty tens place.")
  (answer "6308"))
```

```example
(example
  (problem "Write the number with 2 thousands, 0 hundreds, 5 tens and 0 ones.")
  (step "Thousands: 2. Hundreds: 0. Tens: 5. Ones: 0.")
  (step (number (ask "So the number is?") (answer 2050) (from "2000 + 50")
    (wrong-if 25 "The zeros keep the 2 in the thousands and the 5 in the tens. Write all four places: 2, 0, 5, 0.")))
  (answer "2050"))
```

---

## Practice

```check
(number
  (ask "Write the number that is 9 thousands, 4 tens and 1 one.")
  (answer 9041) (from "9000 + 40 + 1")
  (wrong-if 941 "There are no hundreds, so the hundreds place needs a 0. Otherwise the 9 is read as 9 hundreds.")
  (wrong-if 9410 "The 1 is ones, so it goes at the right end. 9 thousands, 0 hundreds, 4 tens, 1 one is 9041.")
  (hint "Write 4 places: thousands, hundreds, tens, ones.")
  (hint "There are no hundreds, so put 0 there."))
```

```check
(choice
  (ask "Which number is larger: 3099 or 3910?")
  (right "3910" (true "3910 > 3099"))
  (wrong "3099" (false "3099 > 3910") "Both have 3 thousands, so look at the next place. 3910 has 9 hundreds and 3099 has 0 hundreds, so 3910 is larger. The 9s further right are worth less.")
  (hint "Compare from the left. Both start with 3 thousands; which has more hundreds?"))
```

```check
(number
  (ask "In 5836, what is the 8 worth?")
  (answer 800) (from "8 * 100")
  (wrong-if 8 "The 8 is in the hundreds place, third from the right, so it is worth 8 hundreds.")
  (wrong-if 80 "Count from the right: 6 ones, 3 tens, 8 hundreds. So the 8 is worth 800.")
  (hint "Which place is the 8 in, counting from the right?"))
```

A digit's value is its place: ones, tens, hundreds, thousands, each 10
times the one to its right.
