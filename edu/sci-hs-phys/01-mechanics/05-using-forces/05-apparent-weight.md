# Apparent weight

```lesson
(objective "Explain what a scale reads in an elevator that speeds up or slows down.")
(standards "HS-PS2-1")
(minutes 25)
(keywords "apparent weight")
```

You can predict what a bathroom scale reads in a moving elevator, and why you feel heavier or lighter.

A scale does not measure gravity's pull directly. It measures how hard it must push up on you: the normal force. That reading is your **apparent weight**. When you stand still on solid ground, it equals your true weight, $m g$.

In an elevator that speeds up or slows down, the two differ. Take up as +. The forces on you are the scale's push $F_N$ up and your weight $m g$ down, so

$$ F_N - m g = m a $$

$$ F_N = m (g + a) $$

```check
(choice
  (ask "What does a bathroom scale actually measure?")
  (right "How hard it pushes up on you")
  (wrong "Your mass, directly"
    "The scale feels a force, the push between you and it. It then shows that force, or turns it into kilograms using g.")
  (wrong "Gravity's pull on you, whatever is happening"
    "It reads the normal force, which equals gravity's pull only when your vertical velocity is not changing.")
  (hint "What force does the scale exert?"))
```

---

## In the elevator

A 60 kg student stands on a scale in an elevator. Move the slider to choose the elevator's acceleration, up as +.

```figure
(define a (slider 'a -9.8 4 0 "a, up + (m/s²)" 0.2))
(define N (* 60 (+ 9.8 a)))
(frame 40 30 120 190 'ink 2)
(line 100 10 100 30 'ink 1.5)
(rect 70 196 60 10 'ink)
(rect 88 120 24 76 'grey)
(circle 100 108 12 'grey)
(mc-fbd 240 120 0.06 (list (list 270 588 "mg 588 N") (list 90 N "")))
(text 300 22 (string-append "scale: " (fmt N 0) " N") 'right 'small 'bold)
(text 300 40 (string-append "shows " (fmt (/ N 9.8) 1) " kg") 'right 'small)
(caption (cond ((> a 0.05) "Speeding up going up, or slowing going down")
               ((< a -9.75) "Falling freely: the scale reads 0")
               ((< a -0.05) "Speeding up going down, or slowing going up")
               (else "At rest or at a steady velocity")))
```

```check
(number
  (ask "The elevator speeds up upward at 2 m/s². What does the scale read for the 60 kg student?")
  (answer 708) (unit "N") (from "60 * (9.8 + 2)")
  (wrong-if 588 "That is her true weight. The scale must also push hard enough to speed her up: 60 x 2 = 120 N more.")
  (wrong-if 120 "That is only m a. The scale also holds up her weight.")
  (hint "F_N = m (g + a)."))
```

---

## Direction of the acceleration, not of the motion

What matters is the direction of the acceleration, not of the velocity:

- Speeding up going up, or slowing down going down: $a$ is up, and you feel heavier.
- Speeding up going down, or slowing down going up: $a$ is down, and you feel lighter.
- At rest, or moving at a steady velocity either way: $a = 0$, and the scale reads $m g$.

```check
(choice
  (ask "An elevator moves down and slows to a stop at a floor. How does the scale reading compare with your true weight?")
  (right "Larger, because the acceleration points up")
  (wrong "Smaller, because the elevator moves down"
    "Slowing a downward motion means an upward acceleration. Then F_N = m (g + a) is more than m g.")
  (wrong "The same, because the elevator is still moving"
    "The reading equals m g only when there is no acceleration. Slowing down is an acceleration.")
  (hint "Which way does the acceleration point when a downward motion slows?"))
```

---

## Falling freely

If the elevator fell freely, with $a = -g$, then $F_N = m (g - g) = 0$. The scale would read 0, though gravity still pulls on you with $m g$. Set the slider to -9.8 to see it.

```check
(number
  (ask "In a falling elevator with a = -9.8 m/s², what does the scale read for the 60 kg student?")
  (answer 0) (unit "N") (from "60 * (9.8 - 9.8)")
  (wrong-if 588 "The scale falls with her, so it does not push on her at all: F_N = m (g - g) = 0.")
  (hint "F_N = m (g + a) with a = -g."))
```

---

## A worked example

```example
(example
  (problem "A 50 kg student rides an elevator that slows while going up, with an acceleration of 1.5 m/s² downward. What does the scale read?")
  (step "Up as +: a = -1.5 m/s².")
  (step "F_N = m (g + a) = 50 x (9.8 - 1.5).")
  (step "F_N = 50 x 8.3 = 415 N.")
  (answer "415 N, less than her true weight of 490 N"))
```

Now you finish one.

```check
(number
  (ask "A 70 kg passenger is in an elevator speeding up downward at 1.0 m/s². What does the scale read?")
  (answer 616) (unit "N") (from "70 * (9.8 - 1.0)")
  (wrong-if 756 "That uses +1.0. Speeding up downward is a downward acceleration, so a = -1.0 m/s².")
  (wrong-if 686 "That is the true weight. With a downward acceleration, the scale reads less.")
  (hint "a = -1.0 m/s²."))
```

---

## Practice

```check
(number
  (ask "A scale reads 900 N for an 80 kg man in an elevator. What is the elevator's acceleration, with up as +? Round to the nearest hundredth.")
  (answer 1.45) (within 0.006) (unit "m/s²") (from "900 / 80 - 9.8")
  (wrong-if 11.25 "That is F_N / m, which equals g + a. Subtract g to find a.")
  (hint "g + a = F_N / m.")
  (hint "a = 11.25 - 9.8."))
```

```check
(choice
  (ask "An elevator moves up at a steady 3 m/s. What does the scale read?")
  (right "Your true weight, m g")
  (wrong "More than m g, because it moves up"
    "A steady velocity means no acceleration, so the scale only has to balance your weight.")
  (wrong "Less than m g"
    "Only a downward acceleration makes the reading less. A steady velocity has none.")
  (hint "Is there an acceleration?"))
```

```check
(choice
  (ask "On a theme park ride, you feel almost weightless at the top of a drop. What is really happening?")
  (right "You and your seat are falling together, so the seat barely pushes on you, while gravity still pulls")
  (wrong "Gravity switches off near the top of the ride"
    "Gravity pulls on you the whole ride, about m g. Your apparent weight is low because the seat falls with you and pushes little.")
  (hint "What does the apparent weight measure?"))
```

---

So your apparent weight is the normal force from what holds you up, $F_N = m (g + a)$: more than $m g$ when you accelerate up, less when you accelerate down, and 0 in free fall.
