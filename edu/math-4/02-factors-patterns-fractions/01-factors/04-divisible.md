# Divisible

```lesson
(objective "Tell whether a number is divisible by a one-digit number, using the last digit for 2, 5 and 10 and dividing for the others.")
(standards "4.OA.B.4")
(minutes 25)
(keywords "divisible")
```

You can tell whether one number divides another with no remainder.

A number is **divisible** by another number when it divides by it with
no remainder. 24 is divisible by 6, because 24 ÷ 6 = 4. 25 is not
divisible by 6, because 25 ÷ 6 = 4 R 1.

So "24 is divisible by 6" means the same as "6 is a factor of 24".

```check
(choice
  (ask "Which number is divisible by 4?")
  (right "28" (true "28 / 4 = 7"))
  (wrong "14" (true "14 = 4 * 3 + 2")
    "14 ÷ 4 = 3 R 2. There is a remainder, so 14 is not divisible by 4.")
  (wrong "42" (true "42 = 4 * 10 + 2")
    "42 has a 4 in it, but that does not matter. 42 ÷ 4 = 10 R 2, so there is a remainder.")
  (hint "Count by 4s: 4, 8, 12 ... Which number do you say?"))
```

---

## Divisible by 2

A number is divisible by 2 when its last digit is 0, 2, 4, 6 or 8.
These are the even numbers.

Why only the last digit? Every ten is 5 twos, so the tens always share
into 2 equal groups. Only the ones can leave 1 over.

```check
(choice (several)
  (ask "Which numbers are divisible by 2? Choose all.")
  (right "58" (true "58 / 2 = 29"))
  (right "90" (true "90 / 2 = 45"))
  (wrong "85" (true "85 = 2 * 42 + 1")
    "85 has an 8, but in the tens place. Its last digit is 5, which is odd. So 85 is not divisible by 2.")
  (wrong "27" (true "27 = 2 * 13 + 1")
    "27 has a 2, but its last digit is 7. 7 is odd, so 27 is not divisible by 2.")
  (hint "Look only at the last digit. Is it 0, 2, 4, 6 or 8?"))
```

---

## Divisible by 5 and by 10

Every ten is 2 fives, so again only the ones matter:

- divisible by 5: the last digit is 0 or 5;
- divisible by 10: the last digit is 0.

Choose a number to ring what is divisible by it.

```figure
(define c (choice 'by '("2" "5" "10") "Divisible by"))
(define d (list-ref '(2 5 10) c))
(m4p2-hundred 50 6 22 (lambda (n) (if (= 0 (modulo n d)) 'ring #f)))
```

```check
(choice
  (ask "Which is true of 75?")
  (right "It is divisible by 5, not by 10" (true "75 / 5 = 15"))
  (wrong "It is divisible by 10" (true "75 = 10 * 7 + 5")
    "75 ends in 5, not 0. 75 ÷ 10 = 7 R 5, so it is not divisible by 10.")
  (wrong "It is divisible by 2" (true "75 = 2 * 37 + 1")
    "75 ends in 5, which is odd. So it is not divisible by 2.")
  (hint "Look at the last digit: 0, 5, or something else?"))
```

---

## Other numbers: divide

For 3, 4, 6, 7, 8 and 9, the last digit does not tell you. 12 ends in
2 and is divisible by 3. 22 ends in 2 too, but 22 ÷ 3 = 7 R 1.

So divide, and look at the remainder. 54 ÷ 6 = 9, so 54 is divisible
by 6.

```check
(choice
  (ask "Is 91 divisible by 7?")
  (right "Yes: 91 ÷ 7 = 13" (true "91 / 7 = 13"))
  (wrong "No: it ends in 1"
    "The last digit tells you about 2, 5 and 10 only. For 7, divide: 7 × 13 = 91, with no remainder.")
  (wrong "No: 91 is not in the 7s facts"
    "91 is past 7 × 10 = 70. Keep going: 70 + 21 = 91, so 7 × 13 = 91.")
  (hint "7 × 10 = 70. How many more 7s make 91?"))
```

---

## Worked example

```example
(example
  (problem "Is 72 divisible by 2? By 5? By 9?")
  (step "72 ends in 2, so it is divisible by 2.")
  (step "72 does not end in 0 or 5, so it is not divisible by 5.")
  (step "For 9, divide: 72 ÷ 9 = 8, with no remainder.")
  (answer "72 is divisible by 2 and by 9, but not by 5."))
```

```example
(example
  (problem "Is 65 divisible by 2? By 5? By 10?")
  (step "65 ends in 5, which is odd. So it is not divisible by 2.")
  (step "It ends in 5, so it is divisible by 5: 65 ÷ 5 = 13.")
  (step (choice (ask "Is 65 divisible by 10?")
    (right "No: it does not end in 0")
    (wrong "Yes: it is divisible by 5"
      "Divisible by 5 does not mean divisible by 10. 65 ÷ 10 = 6 R 5.")))
  (answer "65 is divisible by 5 only."))
```

---

## Practice

```check
(choice (several)
  (ask "Which numbers are divisible by 10? Choose all.")
  (right "40" (true "40 / 10 = 4"))
  (right "100" (true "100 / 10 = 10"))
  (wrong "15" (true "15 = 10 * 1 + 5")
    "15 is divisible by 5, but it ends in 5, not 0. So it is not divisible by 10.")
  (wrong "101" (true "101 = 10 * 10 + 1")
    "101 has 0s in it, but its last digit is 1. 101 ÷ 10 = 10 R 1.")
  (hint "Divisible by 10: the last digit is 0."))
```

```check
(choice
  (ask "Is 52 divisible by 4?")
  (right "Yes: 52 ÷ 4 = 13" (true "52 / 4 = 13"))
  (wrong "No: 52 is not in the 4s facts"
    "52 is past 4 × 10 = 40. 40 + 12 = 52, and 12 is 3 fours. So 4 × 13 = 52.")
  (wrong "No: it does not end in 4 or 8"
    "The last digit does not tell you about 4. 12 ends in 2, and 12 is divisible by 4. Divide to check.")
  (hint "4 × 10 = 40. How many more 4s make 52?"))
```

---

```check
(number
  (ask "What is the remainder when you divide 47 by 6?")
  (answer 5) (from "47 - 6 * 7")
  (wrong-if 7 "7 is the quotient: 6 × 7 = 42. The remainder is what is left: 47 - 42.")
  (wrong-if 1 "6 × 8 = 48 is more than 47. Use 6 × 7 = 42, then 47 - 42.")
  (hint "Which multiple of 6 is just below 47?"))
```

```check
(choice
  (ask "Lea says: 36 ends in 6, so it is divisible by 6. Is her reason right?")
  (right "No: the answer is yes, but the reason is wrong" (true "36 / 6 = 6"))
  (wrong "Yes: a number ending in 6 is divisible by 6"
    "16 ends in 6, but 16 ÷ 6 = 2 R 4. The last digit tells you about 2, 5 and 10 only.")
  (wrong "No: 36 is not divisible by 6"
    "36 ÷ 6 = 6, with no remainder. So 36 is divisible by 6, just not for her reason.")
  (hint "Try 16. It ends in 6. Is it divisible by 6?"))
```

So: a number is divisible by another when there is no remainder. For 2,
5 and 10, look at the last digit. For the others, divide.
