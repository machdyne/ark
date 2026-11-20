# Exponents

```lesson
(objective "Write a power of ten with an exponent and read it, such as 10^3 = 10 x 10 x 10 = 1,000, \"10 to the 3rd power\".")
(standards "5.NBT.A.2")
(minutes 20)
(keywords "exponent")
```

You can write a power of ten in a short way, with an exponent.

Writing 10 × 10 × 10 × 10 × 10 is slow. Here is a shorter way:

$$ 10^5 = 10 * 10 * 10 * 10 * 10 $$

The small raised 5 is an **exponent**. It tells how many 10s are
multiplied. You read $10^5$ as "10 to the 5th power".

```figure
(define n (slider 'n 1 6 3 "Exponent" 1))
(math 160 60 (string-append "10^" (fmt n 0)) 30)
(label 160 120 (string-append (fmt n 0) (if (= n 1) " factor of 10" " factors of 10")) 'body)
(label 160 160 (string-append "= " (m5p1-num (expt 10 n))) 'big 'bold)
(caption "The exponent counts the 10s")
```

```check
(number
  (ask "What is the value of 10 to the 3rd power?")
  (answer 1000) (from "10^3")
  (wrong-if 30 "30 is 10 × 3. The exponent 3 means three 10s multiplied: 10 × 10 × 10.")
  (wrong-if 13 "The 3 is not added. It counts the 10s that are multiplied.")
  (hint "Write it out: 10 × 10 × 10.")
  (hint "10 × 10 = 100, and 100 × 10 = ?"))
```

---

## Writing with an exponent

To write a power of ten with an exponent, count the 10s.

10 × 10 × 10 × 10 has four 10s, so it is $10^4$. Its value is 10,000.

$$ 10^4 = 10000 $$

```check
(number
  (ask "100 = 10 × 10. 100 = 10 to what power? Type the exponent.")
  (answer 2)
  (true "10^2 = 100")
  (wrong-if 100 "100 is the value. The exponent is the small number: how many 10s are multiplied.")
  (wrong-if 3 "100 has 3 digits, but only two 10s: 10 × 10.")
  (hint "How many 10s are in 10 × 10?"))
```

---

## Exponent and zeros

For a power of ten alone, the exponent is the number of zeros after the
1. $10^6$ is a 1 with 6 zeros: 1,000,000.

Take care: this works for 10s alone. Other numbers can have more
zeros, as you see in the next lesson.

```check
(number
  (ask "What is 10 to the 6th power?")
  (answer 1000000) (from "10^6")
  (wrong-if 60 "60 is 10 × 6. The exponent 6 means six 10s multiplied.")
  (wrong-if 100000 "That is a 1 with 5 zeros, 10 to the 5th power. 10 to the 6th power has 6 zeros.")
  (hint "Write a 1, then one zero for each 10.")
  (hint "6 zeros."))
```

---

## 10 to the 1st power

$10^1$ is just one 10: $10^1 = 10$. The exponent 1 means there is only
one 10, with nothing to multiply it by.

```check
(choice
  (ask "Which is equal to 10 to the 1st power?")
  (right "10" (true "10^1 = 10"))
  (wrong "1" (false "10^1 = 1")
    "The exponent counts the 10s. One 10 is 10, not 1.")
  (wrong "11" (false "10^1 = 11")
    "The exponent is not added to the 10. It counts how many 10s there are: one.")
  (hint "How many 10s does the exponent 1 count?"))
```

---

## Worked example

```example
(example
  (problem "Write 10,000 with an exponent.")
  (step "10,000 = 10 × 10 × 10 × 10.")
  (step "That is four 10s.")
  (answer "10,000 = 10 to the 4th power, written $10^4$."))
```

```example
(example
  (problem "Find the value of $10^5$.")
  (step "The exponent 5 means five 10s multiplied.")
  (step "That is a 1 followed by 5 zeros.")
  (step (number (ask "So what is 10^5?") (answer 100000) (from "10^5")
    (wrong-if 50 "$10^5$ is not 10 × 5. It is 10 × 10 × 10 × 10 × 10.")))
  (answer "$10^5 = 100000$"))
```

---

## Practice

```check
(number
  (ask "1,000 = 10 to what power? Type the exponent.")
  (answer 3)
  (true "10^3 = 1000")
  (wrong-if 4 "1,000 has 4 digits, but the 1 is not a 10. Three zeros: three 10s.")
  (hint "1,000 = 10 × 10 × 10."))
```

```check
(number
  (ask "What is the value of" (math "10^2") "?")
  (answer 100) (from "10^2")
  (wrong-if 20 "$10^2$ means 10 × 10, not 10 × 2.")
  (wrong-if 12 "The exponent is not added. It counts the 10s: 10 × 10.")
  (hint "Two 10s multiplied."))
```

---

```check
(choice
  (ask "How do you read" (math "10^4") "?")
  (right "10 to the 4th power" (true "10^4 = 10000"))
  (wrong "10 times 4" (false "10^4 = 10 * 4")
    "10 times 4 is 40. The raised 4 is an exponent: four 10s multiplied.")
  (wrong "14" (false "10^4 = 14")
    "The 4 is raised because it is an exponent. It is not the ones digit of 14.")
  (hint "Say \"10 to the ...\""))
```

```check
(number
  (ask "Write 10 × 10 × 10 × 10 × 10 × 10 with an exponent. Type the exponent.")
  (answer 6)
  (true "10 * 10 * 10 * 10 * 10 * 10 = 10^6")
  (wrong-if 60 "60 is 10 × 6. Count the 10s: the count is the exponent.")
  (hint "Count the 10s."))
```

So: an exponent counts the 10s that are multiplied, and $10^3$ is read
"10 to the 3rd power".
