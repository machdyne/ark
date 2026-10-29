# Estimating liquid volume

```lesson
(objective "Estimate a liquid volume in liters from containers whose volume you know.")
(standards "3.MD.A.2")
(minutes 20)
```

You can estimate a liquid volume by comparing it with containers you know.

Some containers are good to know:

- many water bottles hold 1 liter;
- a big soda bottle often holds 2 liters.

```check
(number
  (ask "How many full 1 L bottles does it take to fill a 2 L bottle?")
  (answer 2) (from "2 / 1")
  (wrong-if 1 "1 bottle of 1 L fills only half of a 2 L bottle. You need 1 more.")
  (hint "Each bottle holds 1 L. How many make 2 L?"))
```

---

## Fill it with bottles you know

To estimate, think: how many bottles you know would fill it?

A pot fills with about 4 bottles of 1 L. So the pot holds about 4 L.

```figure
(for-range 0 4 (lambda (i) (ms-jug (+ 20 (* 72 i)) 120 36 60 1 1)))
(caption "4 bottles of 1 L: about 4 L")
```

```check
(number
  (ask "A bucket fills with 5 bottles of 2 L each. About how many liters does it hold?")
  (answer 10) (unit "L") (from "5 * 2")
  (wrong-if 5 "5 is how many bottles. Each bottle is 2 L, so count by 2s 5 times.")
  (wrong-if 7 "5 + 2 adds the count and the size. Count by 2s: 2, 4, 6, 8, 10.")
  (hint "Each bottle holds 2 L.")
  (hint "Count by 2s 5 times."))
```

---

## Less than 1 liter

Some containers hold much less than 1 liter. It takes several cups of water to fill a 1 L bottle. So a cup holds less than 1 L.

```check
(choice
  (ask "Which holds less than 1 liter?")
  (right "A spoon")
  (wrong "A bathtub"
    "A bathtub holds water for a whole person to sit in. That is many, many liters.")
  (wrong "A bucket for washing a car"
    "A bucket holds several big bottles of water. That is more than 1 liter.")
  (hint "Which is much smaller than a 1 L bottle?"))
```

---

## Does the estimate make sense?

A swimming pool holds a huge amount of water. A spoon holds much less than 1 L. Pick numbers that fit the container.

```check
(choice
  (ask "Which is the best estimate for the water in a full kitchen pot?")
  (right "About 5 L")
  (wrong "About 500 L"
    "500 L would fill 250 big soda bottles. A pot is much smaller than that.")
  (wrong "About 1/2 of a spoon"
    "A full pot holds far more than a spoon. It holds a few big bottles of water.")
  (hint "Think: how many 1 L bottles fill a pot? A few, or hundreds?"))
```

---

## A worked example

```figure
(for-range 0 3 (lambda (i) (ms-jug (+ 30 (* 95 i)) 60 50 120 2 2)))
(caption "3 bottles of 2 L")
```

```example
(example
  (problem "A watering can is filled with 3 big bottles of 2 L. About how many liters does it hold?")
  (step "Each bottle holds 2 L.")
  (step "3 bottles of 2 L: count by 2s 3 times. 2, 4, 6.")
  (answer "The watering can holds about 6 L."))
```

---

## Now you finish one

A fish bowl fills with 3 bottles of 1 L.

```check
(number
  (ask "About how many liters does the fish bowl hold?")
  (answer 3) (unit "L") (from "3 * 1")
  (wrong-if 1 "1 L is 1 bottle. The bowl takes 3 bottles.")
  (hint "Each bottle holds 1 L."))
```

---

## Practice

```check
(number
  (ask "A cooler fills with 4 big bottles of 2 L. About how many liters does it hold?")
  (answer 8) (unit "L") (from "4 * 2")
  (wrong-if 6 "4 + 2 adds the count and the size. Count by 2s 4 times: 2, 4, 6, 8.")
  (wrong-if 4 "4 is how many bottles. Each one holds 2 L.")
  (hint "Count by 2s 4 times."))
```

```check
(choice
  (ask "Which is measured best in liters, not in parts of a cup?")
  (right "The water in a fish tank")
  (wrong "The water in a drop from a tap"
    "A drop is far less than 1 liter. Liters are for bigger amounts.")
  (wrong "The milk on a spoon"
    "A spoon holds much less than 1 liter. Liters are for bigger amounts.")
  (hint "Which holds more than a 1 L bottle?"))
```

---

```check
(choice
  (ask "A jar fills a 1 L bottle and a little more. What is a good estimate?")
  (right "A little more than 1 L")
  (wrong "About 10 L"
    "10 L would fill 10 bottles of 1 L. The jar fills just 1 and a little more.")
  (wrong "Less than 1 L"
    "The jar fills the whole 1 L bottle, with some left over. So it is more than 1 L.")
  (hint "It fills 1 bottle and some more."))
```

Now you can estimate a liquid volume by thinking how many bottles you know would fill it.
