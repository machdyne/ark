# Reading and writing decimals

```lesson
(objective "Read and write decimals to thousandths in standard form and word form, such as 2.045 = 2 and 45 thousandths.")
(standards "5.NBT.A.3a")
(minutes 20)
```

You can read and write decimals to thousandths in standard form and
word form.

To read a decimal:

1. Read the whole number part.
2. Say "and" for the decimal point.
3. Read the digits after the decimal point as one number, then the
   name of the last place.

$$ 2.045 $$

2.045 ends in the thousandths place. You read it "2 and 45 thousandths".
In word form: two and forty-five thousandths.

```check
(choice
  (ask "How do you read 6.318?")
  (right "6 and 318 thousandths" (true "6.318 = 6 + 318/1000"))
  (wrong "6 and 318 hundredths" (false "6.318 = 6 + 318/100")
    "Name the last place. The 8 is the 3rd digit after the decimal point: thousandths.")
  (wrong "6318 thousandths and 6" (false "6.318 = 6318/1000 + 6")
    "Read the whole number first, then \"and\", then the part after the decimal point.")
  (hint "What place is the last digit in?"))
```

---

## Zeros after the decimal point

A 0 right after the decimal point still holds a place. 2.045 has 0
tenths. So the digits after the decimal point read as 45, and the last
place is still thousandths.

Some people also read 2.045 as "2 point 0 4 5". That names the digits,
not the value. In this course, read it by its last place.

```check
(choice
  (ask "How do you read 0.007?")
  (right "7 thousandths" (true "0.007 = 7/1000"))
  (wrong "7 tenths" (false "0.007 = 7/10")
    "The 7 is the 3rd digit after the decimal point. The zeros hold the tenths and hundredths places.")
  (wrong "7 hundredths" (false "0.007 = 7/100")
    "Count all 3 places after the decimal point, the zeros too. The 7 is in the thousandths.")
  (hint "Count the places after the decimal point, zeros too."))
```

---

## From words to standard form

Standard form is the number written with digits. To write
"14 and 6 thousandths":

- the whole number is 14;
- 6 thousandths ends in the 3rd place: 0.006.

$$ 14 + 0.006 = 14.006 $$

```check
(text
  (ask "Write 3 and 52 thousandths in standard form.")
  (accept "3.052")
  (true "3 + 52/1000 = 3.052")
  (wrong-if "3.52" "3.52 is 3 and 52 hundredths. Thousandths end in the 3rd place: 3.052.")
  (wrong-if "3.0052" "That ends in the 4th place. 52 thousandths ends in the 3rd: 3.052.")
  (wrong-if "352" "The \"and\" is the decimal point: 3, then the decimal point, then 052.")
  (hint "52 thousandths: the 2 must be in the 3rd place.")
  (hint "3 . _ 5 2"))
```

---

## Worked example

```example
(example
  (problem "Write 40.209 in word form.")
  (step "The whole number is 40: forty.")
  (step "The decimal point is \"and\".")
  (step "209 ends in the thousandths: two hundred nine thousandths.")
  (answer "forty and two hundred nine thousandths"))
```

```example
(example
  (problem "Write seven and thirty thousandths in standard form.")
  (step "The whole number is 7.")
  (step "30 thousandths ends in the 3rd place: 0.030.")
  (step (text (ask "So the number is ...") (accept "7.030") (accept "7.03") (true "7 + 30/1000 = 7.03")
    (wrong-if "7.30" "7.30 is 7 and 30 hundredths. 30 thousandths is 0.030.")))
  (answer "7.030, which is the same as 7.03"))
```

---

## Practice

```check
(text
  (ask "Write 125 thousandths in standard form.")
  (accept "0.125") (accept ".125")
  (true "125/1000 = 0.125")
  (wrong-if "125000" "125,000 is a whole number. 125 thousandths is less than 1.")
  (wrong-if "1.25" "1.25 is more than 1. 125 thousandths fills the 3 places after the decimal point: 0.125.")
  (hint "There is no whole number part."))
```

```check
(choice
  (ask "Which is 9.09 in word form?")
  (right "nine and nine hundredths" (true "9.09 = 9 + 9/100"))
  (wrong "nine and nine tenths" (false "9.09 = 9 + 9/10")
    "The last 9 is the 2nd digit after the decimal point: hundredths.")
  (wrong "nine and nine thousandths" (false "9.09 = 9 + 9/1000")
    "9.09 has only 2 places after the decimal point. It ends in hundredths.")
  (hint "How many places does 9.09 have after the decimal point?"))
```

---

```check
(text
  (ask "Write twenty and four hundred one thousandths in standard form.")
  (accept "20.401")
  (true "20 + 401/1000 = 20.401")
  (wrong-if "20.41" "That is 20 and 41 hundredths. 401 thousandths needs 3 places: 401.")
  (wrong-if "2.401" "Twenty is 20, so there are 2 digits before the decimal point.")
  (hint "Twenty, then the decimal point, then 401."))
```

```check
(choice
  (ask "Which is read \"5 and 5 thousandths\"?")
  (right "5.005" (true "5.005 = 5 + 5/1000"))
  (wrong "5.5" (false "5.5 = 5 + 5/1000")
    "5.5 is 5 and 5 tenths. Thousandths need 3 places after the decimal point.")
  (wrong "5.05" (false "5.05 = 5 + 5/1000")
    "5.05 is 5 and 5 hundredths. Thousandths are the 3rd place.")
  (wrong "5,005" (false "5005 = 5 + 5/1000")
    "5,005 is five thousand five. A comma is not a decimal point.")
  (hint "The last 5 must be in the 3rd place after the decimal point."))
```

So: read the whole number, say "and" for the decimal point, then read
the rest and name its last place.
