# Base rates

```lesson
(objective "Use a base rate and a frequency tree to judge what a positive test means.")
(minutes 25)
(keywords "base rate" "false positive" "natural frequency")
```

You can work out what a "positive" test result really tells you.

The **base rate** is how common something is in the whole group before
you learn anything else. Suppose, in a made-up factory, 10 of every
1000 phones have a fault. The base rate of faults is 10 in 1000, or 1%.

```check
(number
  (ask "Suppose 5 of every 500 bikes in a made-up shop have a flat tire. What is the base rate, as a percent?")
  (answer 1) (unit "%") (from "5/500 * 100")
  (wrong-if 5 "5 is the count, not the rate. 5 out of 500 is 1 out of 100: 1%.")
  (hint "5 out of 500 is how many out of 100?"))
```

---

## Tests make mistakes

The factory tests every phone. The test flags 9 of the 10 faulty
phones. It also flags 50 of the 990 good phones by mistake. A result
that says "yes" when the true answer is "no" is a **false positive**.

The tree shows this with counts of phones, not percents. Counts like
these, "9 out of 59", are called **natural frequencies**, and they are
easier to reason with.

```figure
(line 160 36 80 78 'ink 1)
(line 160 36 240 78 'ink 1)
(line 80 102 40 148 'ink 1)
(line 80 102 120 148 'ink 1)
(line 240 102 200 148 'ink 1)
(line 240 102 280 148 'ink 1)
(th-node 160 24 96 "1000 phones")
(th-node 80 90 80 "10 faulty")
(th-node 240 90 80 "990 good")
(th-node 40 160 76 "9 flagged")
(th-node 120 160 76 "1 missed")
(th-node 200 160 76 "50 flagged")
(th-node 280 160 76 "940 pass")
(text 160 200 "flagged: 9 + 50 = 59 phones" 'centre 'small)
(caption "Made-up numbers.")
```

```sources
(source "Gigerenzer, G. (2002), Calculated Risks: How to Know When Numbers Deceive You")
```

```check
(number
  (ask "How many phones does the test flag in all?")
  (answer 59) (from "9 + 50")
  (wrong-if 9 "9 is only the faulty phones that were flagged. The 50 good phones flagged by mistake count too.")
  (hint "Add the 2 flagged boxes."))
```

---

## What does a flag mean?

Of the 59 flagged phones, only 9 are really faulty. So a flagged phone
is faulty with probability $9/59$: about 15%. Most flagged phones are
fine!

This surprises people, because the test catches 9 of 10 faults. But
faults are rare, and the good phones are so many that even a few
mistakes among them outnumber the real faults. Ignoring the base rate
is a common error.

```sources
(source "Kahneman, D. (2011), Thinking, Fast and Slow")
(source "Gigerenzer, G. (2002), Calculated Risks: How to Know When Numbers Deceive You")
```

```check
(choice
  (ask "A phone is flagged. Which is closest to the probability that it really is faulty?")
  (right "About 15%")
  (wrong "About 90%"
    "90% is how many faulty phones the test catches. But most flagged phones are good phones flagged by mistake: 9 of 59.")
  (wrong "About 1%"
    "1% is the base rate before the test. A flag does raise the chance, from 1% to 9 out of 59.")
  (hint "9 really faulty, out of 59 flagged."))
```

---

## Worked example

```example
(example
  (problem "Suppose, in a made-up school, 20 of 1000 students have a rare allergy. A quick test flags 18 of those 20, and 98 of the other 980. A student is flagged. What is the chance they have the allergy?")
  (step "Flagged with the allergy: 18. Flagged without: 98.")
  (step "Flagged in all: 18 + 98 = 116.")
  (step "Chance: 18/116, about 16%.")
  (answer "About 16%: most flagged students do not have the allergy."))
```

```example
(example
  (problem "Suppose 50 of 1000 apples are bruised. A machine flags 45 of the 50 bruised apples and 95 of the 950 good ones. How many apples are flagged in all?")
  (step "Flagged bruised: 45. Flagged good: 95.")
  (step (number (ask "Flagged in all?") (answer 140) (from "45 + 95")
    (wrong-if 45 "Count the good apples flagged by mistake too: 45 + 95.")))
  (answer "140 flagged, of which only 45 are bruised: about 32%."))
```

---

## Practice

```check
(number
  (ask "Suppose 10 of 1000 people have a made-up condition. A test flags all 10, and also 90 of the 990 others. How many of the flagged people have the condition, out of each 100 flagged?")
  (answer 10) (from "10 / (10 + 90) * 100")
  (wrong-if 100 "The test catches everyone with the condition, but it also flags 90 people without it. Only 10 of the 100 flagged have it.")
  (hint "Flagged in all: 10 + 90.")
  (hint "10 out of 100 flagged."))
```

---

```check
(choice
  (ask "Why does a rare condition give many false positives compared with true ones?")
  (right "There are so many people without it that even a small error rate flags many of them")
  (wrong "Tests for rare conditions are always badly made"
    "The test can be good. The number of people without the condition is so large that small mistakes add up.")
  (wrong "People with rare conditions are hard to find"
    "The test may find nearly all of them. The trouble is the many others it flags.")
  (hint "Compare the size of the 2 groups."))
```

So: start from the base rate, draw the tree in counts, and ask "out of
all the positives, how many are real?"
