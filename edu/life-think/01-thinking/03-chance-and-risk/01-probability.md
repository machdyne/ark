# Probability

```lesson
(objective "Give the probability of an event as a fraction, a decimal and a percent.")
(minutes 20)
(keywords "probability" "outcome" "event")
```

You can put a number on how likely something is.

When you roll a fair 6-sided die, it can land on 1, 2, 3, 4, 5 or 6.
Each possible result is an **outcome**. An **event** is one or more
outcomes you care about: "roll a 6", or "roll an even number".

```check
(number
  (ask "How many outcomes make up the event \"roll an even number\" on a 6-sided die?")
  (answer 3) (from "6 / 2")
  (wrong-if 2 "The even numbers on a die are 2, 4 and 6. That is 3 outcomes.")
  (hint "List the even numbers from 1 to 6."))
```

---

## Probability as a fraction

The **probability** of an event is how likely it is, from 0 (it cannot
happen) to 1 (it is certain). When every outcome is equally likely:

probability = (outcomes in the event) ÷ (all the outcomes)

So the probability of rolling a 6 is $1/6$, and of rolling an even
number is $3/6$, which is $1/2$.

```check
(fraction
  (ask "A bag holds 4 red and 6 blue marbles, all the same size. You pick 1 without looking. What is the probability it is red?")
  (answer 4 10) (equivalent)
  (wrong-if (4 6) "6 is the number of blue marbles. Divide by all the marbles: 4 + 6 = 10.")
  (wrong-if (6 10) "That is the probability of blue. Red is 4 of the 10.")
  (hint "How many marbles are there in all?")
  (hint "4 red out of 10 marbles."))
```

---

## Fraction, decimal, percent

A probability can be written 3 ways. $1/4$ is 0.25 is 25%. The news
often says "a 30% chance of rain": that is $30/100$, or 0.3.

```check
(number
  (ask "The chance of rain is 3/4. What is that as a percent?")
  (answer 75) (unit "%") (from "3/4 * 100")
  (wrong-if 34 "3/4 is not 34%. It means 3 out of 4, which is 75 out of 100.")
  (hint "3/4 = 0.75."))
```

---

## Worked example

```example
(example
  (problem "Suppose a class raffle sells 50 tickets and you buy 2. One ticket wins. What is your probability of winning, as a percent?")
  (step "Outcomes in the event: your 2 tickets. All outcomes: 50 tickets.")
  (step "Probability: 2/50 = 1/25 = 0.04.")
  (answer "4%"))
```

```example
(example
  (problem "A spinner has 8 equal parts: 3 are shaded. What is the probability it stops on a shaded part, as a decimal?")
  (step "3 shaded parts out of 8 equal parts: 3/8.")
  (step (number (ask "3/8 as a decimal?") (answer 0.375) (from "3/8")
    (wrong-if 0.38 "Round only if asked: 3/8 is exactly 0.375.")))
  (answer "0.375"))
```

---

## Practice

```check
(fraction
  (ask "A fair coin is tossed once. What is the probability of heads?")
  (answer 1 2) (equivalent)
  (hint "2 outcomes, equally likely."))
```

---

```check
(choice
  (ask "Which probability is impossible?")
  (right "1.5")
  (wrong "0"
    "0 is a real probability: it means the event cannot happen, like rolling a 7 on a 6-sided die.")
  (wrong "1"
    "1 is the probability of something certain. Probabilities go from 0 to 1, so 1 is allowed.")
  (hint "Probabilities run from 0 to 1."))
```

---

```check
(number
  (ask "A drawer has 2 black socks and 8 white socks. You take 1 without looking. What is the probability, as a percent, that it is black?")
  (answer 20) (unit "%") (from "2/10 * 100")
  (wrong-if 25 "2 out of 8 divides by the white socks only. There are 10 socks in all: 2/10 = 20%.")
  (hint "2 out of how many socks?"))
```

So: probability is the outcomes you want over all the equally likely
outcomes, from 0 to 1.
