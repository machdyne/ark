# Slopes

```lesson
(objective "Find the acceleration of an object on a slope, with and without friction.")
(standards "HS-PS2-1" "HSG-SRT.C.8")
(minutes 30)
(keywords "inclined plane")
```

You can predict how fast a block speeds up on a ramp, and whether it slides at all.

A flat surface tilted at an angle $theta$ to the level is an **inclined plane**, or ramp. On it, the easiest way to handle gravity is to split the weight into two components:

- along the slope, pulling the block down it: $m g sin(theta)$;
- perpendicular to the slope, pressing the block into it: $m g cos(theta)$.

```figure
(define th (slider 'th 10 60 30 "Slope (°)" 5))
(define c (mc-slope 40 190 (* 180 (cos (deg->rad th))) th 0.55 26 'paper))
(define bx (car c))
(define by (cadr c))
(mc-vec bx by 50 270 'ink "mg")
(mc-vec bx by (* 50 (cos (deg->rad th))) (+ th 90) 'ink "F_N")
(arrow bx by (+ bx (* -50 (sin (deg->rad th)) (cos (deg->rad th)))) (+ by (* 50 (sin (deg->rad th)) (sin (deg->rad th)))) 'cool 1.5)
(text 10 20 (string-append "a = g sin " (fmt th 0) "° = " (fmt (* 9.8 (sin (deg->rad th))) 2) " m/s²") 'small 'bold)
(caption "No friction; dashed: the weight's part along the slope")
```

```check
(choice
  (ask "Make the slope steeper. What happens to the part of the weight along the slope?")
  (right "It grows, so the block speeds up faster")
  (wrong "It shrinks"
    "sin(theta) grows as theta grows, so a steeper slope pulls the block down it harder.")
  (wrong "It stays the same, because the weight is the same"
    "The weight is the same, but more of it points along a steeper slope.")
  (hint "Watch the dashed arrow."))
```

---

## No friction

The normal force balances the part of the weight pressing into the slope, $F_N = m g cos(theta)$. With no friction, the only force left along the slope is $m g sin(theta)$, so by Newton's second law

$$ a = g sin(theta) $$

The mass cancels: on a smooth ramp, heavy and light blocks speed up the same.

```check
(number
  (ask "A block slides down a smooth ramp at 30°. What is its acceleration?")
  (answer 4.9) (within 0.001) (unit "m/s²") (from "9.8 * sin(30 * pi / 180)")
  (wrong-if 8.49 "That is g cos(30°). The part of gravity along the slope uses the sine.")
  (wrong-if 9.8 "Only part of gravity points along the slope: g sin(theta).")
  (hint "a = g sin(theta)."))
```

---

## With friction

When the block slides, kinetic friction acts up the slope, against the sliding: $f_k = mu_k F_N = mu_k m g cos(theta)$. The net force down the slope is the difference, so

$$ a = g (sin(theta) - mu_k cos(theta)) $$

```check
(number
  (ask "A box slides down a 30° ramp with mu_k = 0.2. What is its acceleration? Round to the nearest hundredth.")
  (answer 3.20) (within 0.006) (unit "m/s²") (from "9.8 * (sin(30 * pi / 180) - 0.2 * cos(30 * pi / 180))")
  (wrong-if 4.9 "That leaves out friction. Kinetic friction up the slope takes away mu_k g cos(theta) = 1.70 m/s².")
  (wrong-if 2.94 "That uses mu_k g instead of mu_k g cos(theta). Friction depends on the normal force, m g cos(theta).")
  (hint "g sin(30°) = 4.90; mu_k g cos(30°) = 1.70.")
  (hint "4.90 - 1.70."))
```

---

## Will it slide?

A block at rest stays put while static friction can hold it: while $m g sin(theta)$ is no more than $mu_s m g cos(theta)$. Dividing by $m g cos(theta)$, it stays put while

$$ tan(theta) <= mu_s $$

```check
(choice
  (ask "A book rests on a board with mu_s = 0.5. You tilt the board to 20°, where tan(20°) is 0.36. What happens?")
  (right "The book stays at rest")
  (wrong "The book slides, because the board is tilted"
    "Tilting is not enough. Static friction can hold the book while tan(theta), 0.36, is no more than mu_s, 0.5.")
  (hint "Compare tan(theta) with mu_s."))
```

---

## A worked example

```example
(example
  (problem "A 5 kg crate is on a 40° ramp with mu_s = 0.6 and mu_k = 0.5. Does it slide? If so, find its acceleration.")
  (step "tan(40°) = 0.84, more than mu_s = 0.6, so it slides.")
  (step "g sin(40°) = 9.8 x 0.643 = 6.30 m/s².")
  (step "mu_k g cos(40°) = 0.5 x 9.8 x 0.766 = 3.75 m/s².")
  (step "a = 6.30 - 3.75 = 2.55 m/s², down the slope.")
  (answer "It slides, with a = 2.55 m/s² (the 5 kg cancels)"))
```

Now you finish one.

```check
(number
  (ask "A sled slides down a 20° snowy hill with mu_k = 0.1. What is its acceleration? Round to the nearest hundredth.")
  (answer 2.43) (within 0.006) (unit "m/s²") (from "9.8 * (sin(20 * pi / 180) - 0.1 * cos(20 * pi / 180))")
  (wrong-if 3.35 "That leaves out friction: g sin(20°). Take away mu_k g cos(20°) = 0.92 m/s².")
  (hint "g sin(20°) = 3.35; 0.1 g cos(20°) = 0.92."))
```

---

## Practice

```check
(number
  (ask "A 10 kg box rests on a 25° ramp. What is the normal force on it? Round to the nearest newton.")
  (answer 89) (within 0.6) (unit "N") (from "10 * 9.8 * cos(25 * pi / 180)")
  (wrong-if 98 "That is the full weight. The ramp only has to balance the part pressing into it: m g cos(theta).")
  (wrong-if 41 "That is m g sin(25°), the part along the slope.")
  (hint "F_N = m g cos(theta)."))
```

```check
(choice
  (ask "On a smooth ramp, a 1 kg block and a 4 kg block slide down from rest together. Which reaches the bottom first?")
  (right "They arrive together")
  (wrong "The 4 kg block"
    "The heavier block has 4 times the pull along the slope, but 4 times the mass to move. a = g sin(theta) for both.")
  (wrong "The 1 kg block"
    "Being light does not help either. Both have a = g sin(theta).")
  (hint "Does the mass appear in a = g sin(theta)?"))
```

```check
(number
  (ask "A block starts to slide when a board is tilted to 35°. What is mu_s? Round to the nearest hundredth.")
  (answer 0.70) (within 0.006) (from "tan(35 * pi / 180)")
  (wrong-if 0.57 "That is sin(35°). At the point of slipping, mu_s = tan(theta).")
  (hint "At the point of slipping, tan(theta) = mu_s."))
```

---

So on an inclined plane the weight splits into $m g sin(theta)$ along the slope and $m g cos(theta)$ into it, giving $a = g (sin(theta) - mu_k cos(theta))$ when it slides.
