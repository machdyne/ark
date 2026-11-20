# Rounding to a whole or a tenth

```lesson
(objective "Round a decimal to the nearest whole number or the nearest tenth on a number line, such as 6.73 to 7 and to 6.7.")
(standards "5.NBT.A.4")
(minutes 25)
```

You can round a decimal to the nearest whole number or the nearest
tenth.

Rounding to the nearest whole number: 6.73 is between 6 and 7. The
halfway point is 6.5. 6.73 is past halfway, so it is nearer to 7.

6.73 rounded to the nearest whole number is 7.

```figure
(define c (choice 'c '("nearest whole" "nearest tenth") "Round to"))
(if (= c 0)
  (begin (m5p1-nl 20 300 100 6 7 0.1 0.5 1)
    (label 160 76 "halfway" 'tiny))
  (begin (m5p1-nl 20 300 100 6.7 6.8 0.01 0.05 2)
    (label 160 76 "halfway" 'tiny)))
(nl-mark 6.73 'warm "6.73")
(label 160 170 (if (= c 0) "6.73 is nearer to 7" "6.73 is nearer to 6.7") 'body 'bold)
```

```check
(number
  (ask "Round 3.28 to the nearest whole number.")
  (answer 3)
  (true "3.28 - 3 < 4 - 3.28")
  (wrong-if 4 "3.28 is between 3 and 4, but it is not past 3.5. It is nearer to 3.")
  (wrong-if 3.3 "3.3 is the nearest tenth. The question asks for a whole number.")
  (hint "Is 3.28 more or less than 3.5?"))
```

---

## To the nearest tenth

To round 6.73 to the nearest tenth, find the two tenths it is between:
6.7 and 6.8. The halfway point is 6.75.

6.73 is less than 6.75, so it is nearer to 6.7.

```check
(text
  (ask "Round 4.86 to the nearest tenth.")
  (accept "4.9") (accept "4.90")
  (true "4.9 - 4.86 < 4.86 - 4.8")
  (wrong-if "4.8" "4.86 is past the halfway point 4.85, so it is nearer to 4.9.")
  (wrong-if "5" "5 is the nearest whole number. The question asks for the nearest tenth.")
  (hint "4.86 is between 4.8 and 4.9.")
  (hint "Is it past 4.85?"))
```

---

## Exactly halfway

A number exactly halfway, like 2.5 or 2.45, is as near to one as the
other. The usual rule is to round it up: 2.5 rounds to 3, and 2.45
rounds to 2.5 at the nearest tenth.

This is a rule people agree on, not a fact about numbers. Other rules
exist, but this course uses this one.

```check
(text
  (ask "Round 0.35 to the nearest tenth.")
  (accept "0.4") (accept ".4") (accept "0.40") (accept ".40")
  (true "0.35 = (0.3 + 0.4) ÷ 2")
  (wrong-if "0.3" "0.35 is exactly halfway. The usual rule rounds a halfway number up, to 0.4.")
  (hint "0.35 is exactly halfway between 0.3 and 0.4."))
```

---

## Worked example

```example
(example
  (problem "Round 12.48 to the nearest whole number and to the nearest tenth.")
  (step "Whole: between 12 and 13. 12.48 < 12.5, so 12.")
  (step "Tenth: between 12.4 and 12.5. 12.48 > 12.45, so 12.5.")
  (answer "12 and 12.5"))
```

```example
(example
  (problem "Round 9.96 to the nearest tenth.")
  (step "9.96 is between 9.9 and 10.0.")
  (step "It is past 9.95.")
  (step (text (ask "So it rounds to ...") (accept "10.0") (accept "10") (true "10 - 9.96 < 9.96 - 9.9")
    (wrong-if "9.10" "The tenth after 9.9 is 10.0, not 9.10. 9 tenths and 1 more tenth make 1 whole.")))
  (answer "10.0, which is 10"))
```

---

## Practice

```check
(number
  (ask "Round 15.5 to the nearest whole number.")
  (answer 16)
  (true "15.5 = (15 + 16) ÷ 2")
  (wrong-if 15 "15.5 is exactly halfway. The usual rule rounds it up.")
  (hint "15.5 is halfway between 15 and 16."))
```

```check
(text
  (ask "Round 0.62 to the nearest tenth.")
  (accept "0.6") (accept ".6") (accept "0.60") (accept ".60")
  (true "0.62 - 0.6 < 0.7 - 0.62")
  (wrong-if "0.7" "0.62 is below the halfway point 0.65, so it is nearer to 0.6.")
  (wrong-if "1" "1 is the nearest whole number. The question asks for the nearest tenth.")
  (hint "Between 0.6 and 0.7, where is 0.65?"))
```

---

```check
(choice
  (ask "Which number rounds to 8 as the nearest whole number?")
  (right "7.6" (true "8 - 7.6 < 7.6 - 7"))
  (wrong "7.4" (false "8 - 7.4 < 7.4 - 7")
    "7.4 is below 7.5, so it rounds to 7.")
  (wrong "8.7" (false "8.7 - 8 < 9 - 8.7")
    "8.7 is past 8.5, so it rounds to 9.")
  (hint "Numbers from 7.5 up to just under 8.5 round to 8."))
```

```check
(text
  (ask "Round 2.04 to the nearest tenth.")
  (accept "2.0") (accept "2") (accept "2.00")
  (true "2.04 - 2 < 2.1 - 2.04")
  (wrong-if "2.1" "2.04 is between 2.0 and 2.1, but it is below 2.05. It is nearer to 2.0.")
  (hint "2.04 is between 2.0 and 2.1."))
```

So: find the two numbers it is between, check the halfway point, and
choose the nearer one.
