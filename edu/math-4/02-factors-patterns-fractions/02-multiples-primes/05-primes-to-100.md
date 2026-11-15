# Primes to 100

```lesson
(objective "Find all the prime numbers up to 100 by crossing out the multiples of 2, 3, 5 and 7 on a hundred chart.")
(standards "4.OA.B.4")
(minutes 25)
```

You can find every prime number up to 100 on a hundred chart.

Start by crossing out 1: it is neither prime nor composite. Then ring 2,
the first prime. Cross out the other multiples of 2: 4, 6, 8 ... They
all have 2 as a factor, so they are composite.

Move through the stages in the figure.

```figure
(m4p2-sieve (choice 'stage '("Start" "2s") "Stage"))
```

```check
(choice
  (ask "Why do you ring 2 but cross out 4, 6 and 8?")
  (right "2 is prime, and 4, 6 and 8 have 2 as a factor")
  (wrong "Even numbers are never prime"
    "2 is even and prime: its only factors are 1 and 2. The other even numbers have 2 as a factor too, so they are composite.")
  (wrong "4, 6 and 8 are too big to be prime"
    "Big numbers can be prime: 97 is. 4, 6 and 8 are crossed out because 2 is a factor of each.")
  (hint "What are the factors of 2? Of 4?"))
```

---

## Multiples of 3

Next, 3 is not crossed out, so it is prime. Ring it. Then cross out the
other multiples of 3. Some, like 6 and 12, are crossed out already.

```figure
(m4p2-sieve (+ 1 (choice 'stage '("2s" "3s") "Stage")))
```

```check
(number
  (ask "In the 3s stage, which is the first new number you cross out?")
  (answer 9) (from "3 * 3")
  (wrong-if 6 "6 is a multiple of 2, so it was crossed out in the 2s stage.")
  (wrong-if 3 "3 itself is prime. You ring it, not cross it out.")
  (hint "Choose 2s, then 3s, in the figure. Which new number is crossed out first?"))
```

---

## Multiples of 5 and 7

4 is crossed out, so 5 is the next prime. Ring 5 and cross out its
other multiples. Then do the same with 7.

```figure
(m4p2-sieve (+ 2 (choice 'stage '("3s" "5s" "7s") "Stage")))
```

```check
(number
  (ask "In the 7s stage, which is the first new number you cross out?")
  (answer 49) (from "7 * 7")
  (wrong-if 14 "14 is a multiple of 2. It was crossed out in the 2s stage.")
  (wrong-if 35 "35 is a multiple of 5. It was crossed out in the 5s stage.")
  (hint "7 × 2, 7 × 3, 7 × 4, 7 × 5 and 7 × 6 are all crossed out already. Try 7 × 7."))
```

---

## What is left is prime

After the 7s stage, every number not crossed out is prime. Ring them
all. There are 25 prime numbers up to 100.

Why stop at 7? The next prime is 11. Its other multiples up to 100
are 11 × 2 up to 11 × 9. Each has a factor from 2 to 9. Every number
from 2 to 9 is a multiple of 2, 3, 5 or 7. So these are crossed out
already. The same is true for 13 and every greater prime.

```figure
(m4p2-sieve 4)
```

```check
(choice
  (ask "Why is 77 crossed out before you get to 11?")
  (right "77 = 7 × 11, so it was crossed out as a multiple of 7" (true "77 = 7 * 11"))
  (wrong "77 is odd, so it was crossed out with the 2s"
    "The 2s stage crosses out even numbers. 77 is odd. It goes in the 7s stage: 77 = 7 × 11.")
  (wrong "77 is prime, so it is not crossed out"
    "77 = 7 × 11, so it has the factors 1, 7, 11 and 77. It is composite.")
  (hint "Choose 7s in the figure. Find 77."))
```

---

## Worked example

```example
(example
  (problem "Is 91 prime?")
  (step "91 is odd, so it is not crossed out in the 2s.")
  (step "91 ÷ 3 = 30 R 1, and 91 does not end in 0 or 5.")
  (step "91 ÷ 7 = 13. So it is crossed out in the 7s stage.")
  (answer "91 = 7 × 13, so 91 is composite."))
```

```example
(example
  (problem "Is 97 prime?")
  (step "97 is odd. It does not end in 0 or 5.")
  (step "97 ÷ 3 = 32 R 1, and 97 ÷ 7 = 13 R 6.")
  (step (choice (ask "So is 97 crossed out on the chart?")
    (right "No: none of 2, 3, 5 and 7 divides it, so it is prime")
    (wrong "Yes: it is a big number"
      "Size does not matter. 97 is not a multiple of 2, 3, 5 or 7, so it stays. It is prime.")))
  (answer "97 is prime."))
```

---

## Practice

```check
(number
  (ask "How many prime numbers are there from 1 to 20?")
  (answer 8)
  (wrong-if 9 "Did you count 1? 1 is neither prime nor composite. The primes are 2, 3, 5, 7, 11, 13, 17, 19.")
  (wrong-if 7 "Did you leave out 2? It is the only even prime. The primes are 2, 3, 5, 7, 11, 13, 17, 19.")
  (hint "Cross out 1 and the multiples of 2, 3, 5 and 7, but not those numbers themselves.")
  (hint "Count what is left from 2 to 19."))
```

```check
(choice
  (ask "Which number is prime?")
  (right "89")
  (wrong "87" (true "87 = 3 * 29")
    "87 ÷ 3 = 29, so 3 is a factor. It is crossed out in the 3s stage.")
  (wrong "91" (true "91 = 7 * 13")
    "91 = 7 × 13. It is crossed out in the 7s stage.")
  (wrong "93" (true "93 = 3 * 31")
    "93 ÷ 3 = 31, so 3 is a factor. It is crossed out in the 3s stage.")
  (hint "Test each with 3 and 7."))
```

---

```check
(number
  (ask "What is the greatest prime number less than 100?")
  (answer 97)
  (wrong-if 99 "99 = 9 × 11, and 3 is a factor. It is crossed out in the 3s stage.")
  (wrong-if 98 "98 is even, so 2 is a factor. It is composite.")
  (hint "Start at 99 and go down. Test each with 2, 3, 5 and 7."))
```

```check
(choice (several)
  (ask "Which are prime numbers? Choose all.")
  (right "41")
  (right "43")
  (right "47")
  (wrong "45" (true "45 = 5 * 9")
    "45 ends in 5, so 5 is a factor. It is composite.")
  (wrong "49" (true "49 = 7 * 7")
    "49 = 7 × 7. It is crossed out in the 7s stage.")
  (hint "Test each with 2, 3, 5 and 7."))
```

So: cross out 1 and the other multiples of 2, 3, 5 and 7. The numbers
left are the 25 primes up to 100.
