# Relative and absolute risk

```lesson
(objective "Turn a relative risk into an absolute one, and see which a headline uses.")
(minutes 20)
(keywords "risk" "absolute risk" "relative risk")
```

You can see how big a risk really is, whatever a headline says.

A **risk** is the probability that something bad happens. The
**absolute risk** is that probability itself: "2 in 100 people" or 2%.

Suppose, in a made-up example, 2 in every 100 people who go on a
certain boat trip get seasick. The grid shows 100 people; shaded ones
get seasick. Tick the box for a rougher boat.

```figure
(define rough (toggle 'rough "Rougher boat"))
(define n (if rough 3 2))
(th-people 80 14 n 'bad)
(text 160 196 (string-append (number->string n) " in 100 get seasick") 'centre 'body)
(caption "Each square is 1 person. Numbers are made up.")
```

```check
(number
  (ask "On the rougher boat, what is the absolute risk of seasickness, as a percent?")
  (answer 3) (unit "%") (from "3/100 * 100")
  (wrong-if 50 "50% is how much the risk went up, compared with before. The absolute risk is 3 in 100: 3%.")
  (hint "Count the shaded squares with the box ticked."))
```

---

## Relative risk

The **relative risk** compares 2 risks: how many times bigger one is
than the other. News often gives it as a percent change: 1.5 times as
big is a rise of 50%.

From 2 in 100 to 3 in 100 is a rise of 1 in 100. That 1 is half of 2,
so a headline can say: "Rough boats raise seasickness by 50%!"

Both are true. But "50%" sounds huge, and "1 more person in 100" does
not.

```sources
(source "Gigerenzer, G. (2002), Calculated Risks: How to Know When Numbers Deceive You")
```

```check
(number
  (ask "A risk goes from 4 in 1000 to 8 in 1000. By what percent did the risk go up (the relative change)?")
  (answer 100) (unit "%") (from "(8 - 4) / 4 * 100")
  (wrong-if 4 "4 is how many more people in 1000. Relative change compares the rise, 4, with the start, 4: that doubles it, a 100% rise.")
  (hint "The risk doubled.")
  (hint "Doubling is a rise of 100%."))
```

---

## Always ask: out of how many?

When you hear "risk doubles" or "50% higher", ask for the absolute
risk: how many people in 100 (or 1000) before, and how many after?
Doubling a tiny risk still leaves a small one.

```check
(choice
  (ask "A headline says a made-up snack \"doubles the risk\" of a rare rash. What do you most need to know?")
  (right "How many people in 1000 get the rash, with and without the snack")
  (wrong "Who makes the snack"
    "That can matter for trust, but it does not tell you how big the risk is. You need the absolute numbers.")
  (wrong "Nothing more: doubling is always serious"
    "Doubling 1 in a million gives 2 in a million: still tiny. The size of the start matters.")
  (hint "Doubled from what?"))
```

---

## Worked example

```example
(example
  (problem "Suppose, with made-up numbers, a habit raises a risk from 10 in 1000 to 15 in 1000. Give the absolute and the relative change.")
  (step "Absolute: 15 - 10 = 5 more people in 1000.")
  (step "Relative: 5 is half of 10, so a 50% rise.")
  (answer "5 more in 1000 (absolute); 50% higher (relative)."))
```

```example
(example
  (problem "Suppose a risk falls from 6 in 100 to 3 in 100. What is the relative change?")
  (step "The fall is 6 - 3 = 3 in 100.")
  (step (number (ask "3 is what percent of the starting 6?") (answer 50) (unit "%") (from "3/6 * 100")
    (wrong-if 3 "3 is the absolute fall. Relative compares it with the start: 3/6 = 50%.")))
  (answer "A 50% fall in relative terms; 3 fewer in 100 in absolute terms."))
```

---

## Practice

```check
(number
  (ask "Suppose a risk rises from 1 in 1000 to 3 in 1000. How many more people in 1000 is that?")
  (answer 2) (from "3 - 1")
  (wrong-if 200 "200% is the relative rise. The question asks how many more people: 3 - 1 = 2 in 1000.")
  (hint "Subtract."))
```

---

```check
(choice
  (ask "Which statement gives an absolute risk?")
  (right "\"5 in 100 users had a side effect.\"")
  (wrong "\"Users were 40% more likely to have a side effect.\""
    "This compares 2 risks without saying how big either is. It is a relative risk.")
  (wrong "\"The risk was cut in half.\""
    "Half of what? This is relative: it gives no starting size.")
  (hint "Which one tells you how many people?"))
```

So: a relative risk says how much a risk changed; the absolute risk
says how many people it affects. Ask for both.
