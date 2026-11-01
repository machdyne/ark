# Half-life

```lesson
(objective "Use half-life to find how much of a sample is left after a time.")
(standards "HS-PS1-8" "HSF-LE.A.1c")
(minutes 25)
(keywords "half-life")
```

You can work out how much of a radioactive sample is left after any
number of half-lives.

Which nucleus in a sample decays next is random: nobody can predict it.
But a large sample decays in a steady pattern. The time it takes for
half of the nuclei to decay is the **half-life**. After one half-life,
half are left; after another, half of that, a quarter; and so on.

Move the time slider. The figure shows 100 nuclei; filled ones have not
yet decayed.

```figure
(define t (slider 't 0 4 0 "Half-lives" 0.5))
(define left (round (* 100 (expt 0.5 t))))
(el-nuclei 24 36 10 10 13 left)
(graph 190 30 115 130 0 4 0 100)
(graph-axes 1 25)
(plot (lambda (x) (* 100 (expt 0.5 x))) 'ink 1.5)
(plot-point t (* 100 (expt 0.5 t)) 'warm)
(text 248 186 "half-lives" 'centre 'tiny)
(text 160 212 (string-append (fmt left 0) " of 100 not yet decayed") 'centre 'body 'bold)
(caption "Filled: not yet decayed. Small rings: decayed.")
```

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(number
  (ask "A sample starts with 100 unstable nuclei. How many are left after 2 half-lives?")
  (answer 25) (from "100 * (1/2)^2")
  (wrong-if 0 "After one half-life, half are left: 50. In the next, half of those 50 decay, not all of them.")
  (wrong-if 50 "That is after 1 half-life. After the second, half of the 50 are left.")
  (hint "Halve 100, then halve again."))
```

---

## The formula

After a time $t$, with half-life $T_(1/2)$, the number left from a
start of $N_0$ is

$$ N = N_0 (1/2)^(t / T_(1/2)) $$

Each half-life multiplies what is left by the same factor, 1/2: the
sample shrinks by the same percent in each equal time.

```check
(number
  (ask "A sample has 800 unstable nuclei. How many are left after 3 half-lives?")
  (answer 100) (from "800 * (1/2)^3")
  (wrong-if 266.67 "That divides by 3. Each half-life halves the number: 800, 400, 200, 100.")
  (wrong-if 400 "That is after 1 half-life. Halve 3 times in all.")
  (hint "800 x (1/2)^3."))
```

---

## Random, yet predictable

For one nucleus, the half-life is the time in which it has an even
chance of decaying. You cannot say when any one nucleus will decay. In
a large sample, though, very close to half will decay in each
half-life, just as many coin tosses come out very close to half heads.

```check
(choice
  (ask "A single nucleus has a half-life of 1 hour. What can you say about when it will decay?")
  (right "It has an even chance of decaying within the next hour, but nobody can say exactly when")
  (wrong "It will decay exactly 1 hour from now"
    "Decay is random. The half-life only tells you the chance: 1 in 2 that it decays within an hour.")
  (wrong "It will decay halfway, in 30 minutes"
    "A nucleus does not decay in halves. It decays all at once, at a random time.")
  (hint "The half-life describes chances for one nucleus."))
```

---

## Real half-lives

Half-lives range from tiny fractions of a second to billions of years:

| Isotope | Half-life |
|---|---|
| radon-222 | about 3.8 days |
| iodine-131 | about 8.0 days |
| carbon-14 | about 5,700 years |
| uranium-238 | about 4.5 billion years |

```sources
(source "US National Nuclear Data Center, Brookhaven National Laboratory, NuDat: half-lives of Rn-222, I-131, C-14, U-238")
```

```check
(number
  (ask "A hospital has 10 g of iodine-131, with a half-life of 8 days. How much is left after 24 days, in grams?")
  (answer 1.25) (within 0.005) (from "10 * (1/2)^(24 / 8)") (unit "g")
  (wrong-if 3.33 "That divides 10 by 3. 24 days is 3 half-lives, and each one halves the amount: 10, 5, 2.5, 1.25.")
  (wrong-if 5 "That is after one half-life, 8 days. 24 days is 3 half-lives.")
  (hint "How many half-lives are 24 days?"))
```

---

## Carbon dating

Living things take in carbon-14 from the air and food, and keep a
steady share of it. After death no new carbon-14 comes in, and what is
there decays with a half-life of about 5,700 years.

```example
(example
  (problem "A piece of wood from an ancient fire has 1/4 of the carbon-14 share of living wood. About how old is it?")
  (step "1/4 = (1/2)^2: 2 half-lives have passed.")
  (step "2 x 5,700 years = 11,400 years.")
  (answer "About 11,400 years old."))
```

```example
(example
  (problem "A bone has 1/8 of the carbon-14 share of a living animal. About how old is it?")
  (step "1/8 = (1/2)^3: 3 half-lives.")
  (step (number (ask "How many years?") (answer 17100) (from "3 * 5700")
          (wrong-if 45600 "That multiplies by 8. 1/8 is 3 halvings, so 3 half-lives.")))
  (answer "About 17,100 years old."))
```

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

---

## Practice

```check
(fraction
  (ask "What fraction of a sample is left after 4 half-lives?")
  (answer 1 16)
  (wrong-if (1 8) "That is after 3 half-lives. After 4: (1/2)^4.")
  (wrong-if (1 4) "That divides by 4. Each half-life halves what is left: (1/2)^4 = 1/16.")
  (hint "(1/2) x (1/2) x (1/2) x (1/2)."))
```

```check
(number
  (ask "A sample's count falls from 1,200 to 300 in 10 hours. What is its half-life, in hours?")
  (answer 5) (from "10 / 2") (unit "hours")
  (wrong-if 2.5 "1,200 to 300 is 1/4, which is 2 halvings, not 4. 10 hours / 2 half-lives.")
  (wrong-if 10 "In 10 hours it fell to a quarter, not a half. That is 2 half-lives.")
  (hint "How many halvings take 1,200 to 300?"))
```

---

In each half-life half of a large sample decays, so after $t$ the
amount left is $N_0 (1/2)^(t / T_(1/2))$, though which nucleus decays
next is random.
