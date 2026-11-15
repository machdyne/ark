# Rounding big numbers

```lesson
(objective "Round a number up to 1,000,000 to the nearest 10, 100 or 1,000 on a number line.")
(standards "4.NBT.A.3")
(minutes 20)
```

You can round a big number to the nearest 10, 100 or 1,000 with a number line.

To round 4,628 to the nearest thousand, find the thousands on each side:
4,000 and 5,000. 4,628 is closer to 5,000.

Move the slider to round other numbers.

```figure
(define v (slider 'v 4000 5000 4628 "Number" 4))
(define r (if (>= v 4500) 5000 4000))
(m4p1-nl 30 290 120 4000 5000 100 500)
(nl-mark v 'ink (m4p1-num v))
(arrow (nl-x v) 150 (nl-x r) 150 'ink 1.5)
(label 160 190 (string-append (m4p1-num v) " rounds to " (m4p1-num r)) 'body 'bold)
```

```check
(number
  (ask "Round 7,340 to the nearest thousand.")
  (answer 7000)
  (wrong-if 8000 "7,340 is between 7,000 and 8,000. It is 340 from 7,000 and 660 from 8,000, so it is closer to 7,000.")
  (wrong-if 7300 "7,300 is the nearest hundred. The nearest thousand is 7,000 or 8,000.")
  (hint "Which 2 thousands is 7,340 between?")
  (hint "Is 7,340 past the halfway point, 7,500?"))
```

---

## Halfway

6,500 is exactly halfway between 6,000 and 7,000. Neither thousand is
closer.

The usual rule is to round a halfway number up. So 6,500 rounds to
7,000. This rule is a choice people agree on, not a fact about numbers.

```check
(number
  (ask "Round 2,500 to the nearest thousand, by the usual rule.")
  (answer 3000)
  (wrong-if 2000 "2,500 is halfway between 2,000 and 3,000. The usual rule rounds a halfway number up.")
  (hint "2,500 is halfway. Which way does the usual rule go?"))
```

---

## To the nearest hundred

38,472 is between 38,400 and 38,500. The halfway point is 38,450.
38,472 is past it, so it rounds up to 38,500.

```figure
(m4p1-nl 30 290 120 38400 38500 10 50)
(nl-mark 38472 'ink "38,472")
(line (nl-x 38450) 100 (nl-x 38450) 140 'ink 1)
(label (nl-x 38450) 165 "halfway" 'small)
(arrow (nl-x 38472) 150 (nl-x 38500) 150 'ink 1.5)
(label 160 200 "38,472 rounds to 38,500" 'body 'bold)
```

```check
(number
  (ask "Round 52,738 to the nearest hundred.")
  (answer 52700)
  (wrong-if 52800 "52,738 is between 52,700 and 52,800. The halfway point is 52,750, and 52,738 is before it.")
  (wrong-if 53000 "53,000 is the nearest thousand. The nearest hundred is 52,700 or 52,800.")
  (wrong-if 52740 "52,740 is the nearest ten. The nearest hundred ends in 00.")
  (hint "Which 2 hundreds is 52,738 between?")
  (hint "The halfway point is 52,750."))
```

---

## To the nearest ten

126,384 is between 126,380 and 126,390. It is 4 away from 126,380 and 6
away from 126,390. So it rounds to 126,380.

Only the last places change. The digits on the left stay as they are.

```check
(number
  (ask "Round 405,167 to the nearest ten.")
  (answer 405170)
  (wrong-if 405160 "405,167 is between 405,160 and 405,170. It is 7 from 405,160 and 3 from 405,170, so it is closer to 405,170.")
  (wrong-if 405200 "405,200 is the nearest hundred. The nearest ten ends in one 0: 405,160 or 405,170.")
  (hint "Which 2 tens is 405,167 between?"))
```

---

## Worked example

```example
(example
  (problem "Round 61,850 to the nearest thousand.")
  (step "61,850 is between 61,000 and 62,000.")
  (step "The halfway point is 61,500. 61,850 is past it.")
  (step "So it is closer to 62,000.")
  (answer "61,850 rounds to 62,000."))
```

```example
(example
  (problem "Round 9,962 to the nearest hundred.")
  (step "9,962 is between 9,900 and 10,000.")
  (step "The halfway point is 9,950. 9,962 is past it.")
  (step (number (ask "So what is 9,962 rounded to the nearest hundred?") (answer 10000)
    (wrong-if 9900 "9,962 is past the halfway point, 9,950. It is closer to the next hundred, 10,000.")))
  (answer "9,962 rounds to 10,000."))
```

---

## Practice

```check
(number
  (ask "Round 3,149 to the nearest thousand.")
  (answer 3000)
  (wrong-if 4000 "3,149 is far from the halfway point, 3,500. It is closer to 3,000.")
  (wrong-if 3100 "3,100 is the nearest hundred. The nearest thousand ends in 000.")
  (hint "Is 3,149 past 3,500?"))
```

```check
(number
  (ask "Round 870,450 to the nearest hundred, by the usual rule.")
  (answer 870500)
  (wrong-if 870400 "870,450 is halfway between 870,400 and 870,500. The usual rule rounds up.")
  (hint "870,450 is exactly halfway between 2 hundreds."))
```

---

```check
(number
  (ask "Round 15,995 to the nearest ten.")
  (answer 16000)
  (wrong-if 15990 "15,995 is halfway between 15,990 and 16,000. The usual rule rounds up, to 16,000.")
  (wrong-if 15900 "15,900 is not a ten next to 15,995. 15,995 is between the tens 15,990 and 16,000.")
  (hint "Which 2 tens is 15,995 between?")
  (hint "The ten after 15,990 is 16,000."))
```

```check
(number
  (ask "A town has 24,618 people. About how many is that, to the nearest thousand?")
  (answer 25000) (unit "people")
  (wrong-if 24000 "24,618 is past the halfway point, 24,500. It is closer to 25,000.")
  (wrong-if 24600 "24,600 is the nearest hundred. The nearest thousand ends in 000.")
  (hint "24,618 is between 24,000 and 25,000."))
```

So: round to the closer number, and round a halfway number up.
