# Electric current

```lesson
(objective "Compute current as charge passing per second, in amperes, and tell the conventional direction from the electrons' direction.")
(standards "HSN-Q.A.1" "HSA-CED.A.4")
(minutes 20)
(keywords "electric current" "ampere" "conventional current")
```

You can work out how much charge flows each second, and say which way
the current points.

When charge flows along a wire, the **electric current** is how much
charge passes a point each second:

$$ I = q / t $$

$q$ is the charge in coulombs and $t$ the time in seconds. Current is
measured in **amperes** (A): 1 ampere is 1 coulomb per second.

```figure
(still
  (frame 20 90 280 40 'ink 1.5)
  (line 160 82 160 138 'ink 1)
  (text 160 76 "count here" 'centre 'small)
  (arrow 130 165 60 165 'ink 1.5) (text 95 180 "electrons" 'centre 'small)
  (arrow 190 165 260 165 'ink 2.5) (text 225 180 "current" 'centre 'small 'bold))
(define t (seconds))
(for-range 0 14
  (lambda (i)
    (let* ((u (- (+ (* i 20) (* 7 (modulo (* i 3) 5))) (* 18 t)))
           (x (+ 26 (- u (* 268 (floor (/ u 268)))))))
      (dot x (+ 100 (* 5 (modulo (* i 7) 5))) 'ink))))
(caption "Electrons drift left, drawn far faster than they really move.")
```

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
(source "Bureau International des Poids et Mesures, The International System of Units (SI Brochure), 9th edition (2019): the ampere")
```

```check
(number
  (ask "6 C of charge pass a point in a wire in 3 s. What is the current, in amperes?")
  (answer 2) (from "6 / 3") (unit "A")
  (wrong-if 18 "That multiplies. Current is charge per second: divide the coulombs by the seconds.")
  (wrong-if 0.5 "That divides the time by the charge. I = q / t: the charge goes on top.")
  (hint "I = q / t."))
```

---

## How much charge

Turn the formula around to find the charge that a current carries in a
time:

$$ q = I t $$

```check
(number
  (ask "A current of 0.5 A flows for 1 minute. How much charge passes, in coulombs?")
  (answer 30) (from "0.5 * 60") (unit "C")
  (wrong-if 0.5 "That uses 1 for the time. The time must be in seconds: 1 minute is 60 s.")
  (wrong-if 120 "That divides 60 by 0.5. The charge is q = I t: multiply.")
  (hint "Change 1 minute to seconds first.")
  (hint "q = 0.5 x 60."))
```

---

## How many electrons

One coulomb is the charge of a great many electrons:
$1 / (1.60 * 10^-19)$, which is about $6.25 * 10^18$. So a current of
1 A carries about $6.25 * 10^18$ electrons past each point every second.

```check
(choice
  (ask "About how many electrons pass a point each second in a wire carrying 2 A?")
  (right "About 1.25 x 10^19")
  (wrong "About 2"
    "2 A is 2 coulombs a second, not 2 electrons. Each coulomb is about 6.25 x 10^18 electrons.")
  (wrong "About 3.2 x 10^-19"
    "That is the charge of 2 electrons. You need the number of electrons in 2 C: 2 / (1.60 x 10^-19).")
  (hint "Each coulomb is about 6.25 x 10^18 electrons. How many coulombs pass each second?"))
```

---

## Which way?

Long before electrons were known, scientists chose to give a current
the direction a positive charge would flow: from the + end of a battery
to the - end. That direction is **conventional current**, and every
drawing in this course shows current that way.

In a metal wire, the charges that really move are electrons, which are
negative. They drift the opposite way, from - to +. Both describe the
same flow of charge.

```check
(choice
  (ask "In a wire, electrons drift to the left. Which way does the conventional current point?")
  (right "To the right")
  (wrong "To the left"
    "Conventional current is the direction positive charge would move. Electrons are negative, so the current points opposite to their drift.")
  (wrong "There is no current, since electrons are negative"
    "Moving negative charge is a current too. Its conventional direction is opposite to the electrons' motion.")
  (hint "Conventional current is the way a + charge would go."))
```

---

## Slow drift, fast effect

The electrons drift very slowly, usually well under a millimeter per
second. Yet a lamp lights the moment it is switched on. The wire is
already full of free electrons, and when the push starts they all start
moving at nearly the same time, like water in a full hose.

```sources
(source "OpenStax, Physics (2020), chapter 19, Electrical Circuits")
```

```check
(choice
  (ask "Why does a lamp at the end of a long wire light almost at once, although electrons drift slowly?")
  (right "Electrons all along the wire start moving at nearly the same time")
  (wrong "The electrons rush from the switch to the lamp very fast"
    "The electrons themselves drift at well under a millimeter per second. The ones already in the lamp start moving almost at once.")
  (wrong "The lamp stores electrons until the switch closes"
    "The lamp does not store electrons. The wire is full of free electrons everywhere, and they all start moving together.")
  (hint "Think of a hose already full of water."))
```

---

## A phone charger

```example
(example
  (problem "A charger supplies 2 A for 1 hour. How much charge does it deliver?")
  (step "Change the time to seconds: 1 hour = 60 x 60 = 3,600 s.")
  (step "q = I t = 2 x 3,600.")
  (answer "7,200 C."))
```

```example
(example
  (problem "A current of 1.5 A flows for 10 minutes. How much charge flows?")
  (step "Change the time to seconds: 10 x 60 = 600 s.")
  (step (number (ask "q = I t. How many coulombs?") (answer 900) (from "1.5 * 600")
          (wrong-if 15 "That uses 10 for the time. Use seconds: 600 s.")))
  (answer "900 C."))
```

---

## Practice

```check
(number
  (ask "A charge of 240 C flows through a heater in 20 s. What is the current, in amperes?")
  (answer 12) (from "240 / 20") (unit "A")
  (wrong-if 4800 "That multiplies. Current is charge per second: 240 / 20.")
  (hint "I = q / t."))
```

```check
(number
  (ask "A current of 0.2 A flows for 5 minutes. How much charge passes, in coulombs?")
  (answer 60) (from "0.2 * 5 * 60") (unit "C")
  (wrong-if 1 "That uses 5 for the time. 5 minutes is 300 s.")
  (hint "5 minutes = 300 s. Then q = I t."))
```

---

Current is charge per second, $I = q / t$, in amperes, and conventional
current points from + to -, opposite to the electrons' drift in a wire.
