# Halfway numbers

```lesson
(objective "Round a number that is halfway between two tens or hundreds by the usual rule of rounding up.")
(standards "3.NBT.A.1")
(minutes 15)
```

You can round a number that sits exactly in the middle.

35 is between 30 and 40. It is 5 away from 30 and 5 away from 40. It
is halfway, so neither ten is closer.

```figure
(number-line 30 290 110 30 40 1 10)
(nl-mark 35 'ink "35")
(arrow (nl-x 35) 140 (nl-x 40) 140 'ink 1.5)
(label 160 180 "Halfway: round up to 40." 'body)
```

The usual rule is to round a halfway number up. So 35 rounds to 40.
This rule is a choice, not a fact about numbers. When everyone uses it,
everyone gets the same answer.

```check
(number
  (ask "Round 65 to the nearest ten, by the usual rule.")
  (answer 70)
  (wrong-if 60 "65 is halfway between 60 and 70. The usual rule rounds a halfway number up, to 70.")
  (hint "65 is halfway. Which way does the usual rule go?"))
```

---

## A rule for the ones digit

When you round to the nearest ten, look at the ones digit:

- 0, 1, 2, 3 or 4: round down to the ten below.
- 5, 6, 7, 8 or 9: round up to the ten above.

The 5 goes up because of the usual rule.

```check
(number
  (ask "Round 125 to the nearest ten.")
  (answer 130)
  (wrong-if 120 "125 is halfway between 120 and 130. The usual rule rounds up, to 130.")
  (wrong-if 100 "100 is the nearest hundred. To the nearest ten, 125 is between 120 and 130.")
  (hint "The ones digit is 5."))
```

---

## Halfway between hundreds

450 is halfway between 400 and 500. By the usual rule, it rounds up to
500.

To round to the nearest hundred, look at the tens digit:

- 0 to 4: round down.
- 5 to 9: round up.

```check
(number
  (ask "Round 750 to the nearest hundred.")
  (answer 800)
  (wrong-if 700 "750 is halfway between 700 and 800. The usual rule rounds up, to 800.")
  (hint "The tens digit is 5."))
```

---

## Worked example

```example
(example
  (problem "Round 250 to the nearest hundred.")
  (step "250 is between 200 and 300.")
  (step "It is 50 away from each one: it is halfway.")
  (step "By the usual rule, round up.")
  (answer "250 rounds to 300."))
```

```example
(example
  (problem "Round 455 to the nearest hundred.")
  (step "455 is between 400 and 500.")
  (step "The tens digit is 5. 455 is past the halfway point, 450.")
  (step (number (ask "What is 455 rounded to the nearest hundred?") (answer 500)
    (wrong-if 400 "455 is 55 away from 400 and 45 away from 500. It is closer to 500.")))
  (answer "455 rounds to 500."))
```

---

## Practice

```check
(number
  (ask "Round 15 to the nearest ten.")
  (answer 20)
  (wrong-if 10 "15 is halfway between 10 and 20. The usual rule rounds up, to 20.")
  (hint "15 is halfway. Round up."))
```

```check
(number
  (ask "Round 650 to the nearest hundred.")
  (answer 700)
  (wrong-if 600 "650 is halfway between 600 and 700. The usual rule rounds up.")
  (hint "The tens digit is 5."))
```

---

```check
(number
  (ask "Round 349 to the nearest hundred.")
  (answer 300)
  (wrong-if 400 "349 is less than 350, the halfway point. It is closer to 300.")
  (hint "Look at the tens digit, 4. Do not look past it."))
```

```check
(number
  (ask "Round 95 to the nearest ten.")
  (answer 100)
  (wrong-if 90 "95 is halfway between 90 and 100. The usual rule rounds up, to 100.")
  (hint "The ten after 90 is 100."))
```

So: a halfway number has no closer ten or hundred, and the usual rule rounds it up.
