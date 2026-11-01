# Vertical circles

```lesson
(objective "Find the forces at the top and bottom of a vertical circle, such as a loop or a swing.")
(standards "HS-PS2-1")
(minutes 25)
```

You can find how hard a seat or track pushes on a rider at the top and bottom of a loop, and the slowest speed that keeps a rider on the track at the top.

In a vertical circle, such as a swing or a roller coaster loop, gravity also acts, and the speed changes as the rider goes up and down. But at the very top and the very bottom, all the forces are vertical, and the net force toward the center must still be $m v^2 / r$, with $v$ the speed at that moment.

```check
(choice
  (ask "At the bottom of a loop, which way is the center of the circle from the rider?")
  (right "Straight up")
  (wrong "Straight down"
    "At the bottom of a circle, the center is above the rider. The net force there must point up.")
  (hint "Picture the loop and where the rider is."))
```

---

## At the bottom: heavier

At the bottom, the track pushes up with $F_N$ and gravity pulls down with $m g$. The net force, up toward the center, is $m v^2/r$:

$$ F_N - m g = m v^2 / r $$

$$ F_N = m g + m v^2 / r $$

The track pushes harder than your weight: you feel heavier, as at the bottom of a swing.

```figure
(define top (choice 'top '("bottom" "top") "Where"))
(define v (slider 'v 0 20 12 "Speed (m/s)" 1))
(define need (/ (* 60 v v) 10))
(define N (if (= top 0) (+ 588 need) (- need 588)))
(ring 110 112 72 'ink 2)
(circle 110 112 3 'ink)
(define y (if (= top 0) 184 40))
(circle 110 y 8 'warm)
(ring 110 y 8 'ink 1)
(mc-vec 104 y (* 0.035 588) 270 'ink "mg")
(if (> N 0) (mc-vec 118 y (* 0.035 N) (if (= top 0) 90 270) 'ink "F_N"))
(text 205 60 (string-append "need " (fmt need 0) " N") 'small)
(text 205 80 "toward center" 'small)
(text 205 110 (if (< N 0) "N < 0: it would" (string-append "track: " (fmt N 0) " N")) 'small 'bold)
(text 205 128 (if (< N 0) "leave the track" "") 'small 'bold)
(caption "60 kg rider, r = 10 m; arrows to scale")
```

```check
(number
  (ask "A 60 kg rider passes the bottom of a 10 m loop at 12 m/s. How hard does the track push on her?")
  (answer 1452) (unit "N") (from "60 * 9.8 + 60 * 12^2 / 10")
  (wrong-if 864 "That is only m v^2 / r. The track must also hold up her weight: add 588 N.")
  (wrong-if 588 "That is just her weight. At the bottom of a curve the track pushes harder, to turn her upward.")
  (hint "F_N = m g + m v^2 / r."))
```

---

## At the top: lighter

At the top of a loop, upside down, the track is above the rider and pushes down on her. Gravity also pulls down. Both point toward the center:

$$ F_N + m g = m v^2 / r $$

$$ F_N = m v^2 / r - m g $$

Choose "top" in the figure and lower the speed. Below a certain speed, $F_N$ would have to be negative: the track cannot pull, so the rider would leave the track.

```check
(number
  (ask "At the top of the same 10 m loop, the 60 kg rider moves at 12 m/s. How hard does the track push on her?")
  (answer 276) (unit "N") (from "60 * 12^2 / 10 - 60 * 9.8")
  (wrong-if 1452 "That is the bottom. At the top, gravity already points toward the center, so the track pushes less.")
  (hint "F_N = m v^2 / r - m g."))
```

---

## The slowest speed at the top

The slowest speed that keeps the rider on the track is when $F_N = 0$, so gravity alone supplies the centripetal force:

$$ m g = m v^2 / r $$

$$ v_(min) = sqrt(g r) $$

For a 10 m loop, $v_(min) = sqrt(98)$, about 9.9 m/s. A bucket of water swung over your head stays full for the same reason, if it moves at least $sqrt(g r)$ at the top.

```check
(number
  (ask "A bucket is swung in a vertical circle of radius 0.9 m. What is the slowest speed at the top that keeps the water in? Round to the nearest tenth.")
  (answer 3) (within 0.06) (unit "m/s") (from "sqrt(9.8 * 0.9)")
  (wrong-if 8.8 "That is g r, which equals v squared. Take the square root.")
  (hint "v_min = sqrt(g r)."))
```

---

## A worked example

```example
(example
  (problem "A 30 kg child swings on a swing with ropes 2.5 m long. At the bottom she moves at 4 m/s. Find the total tension in the ropes.")
  (step "At the bottom the center is above her: T - m g = m v^2 / r.")
  (step "m g = 30 x 9.8 = 294 N; m v^2 / r = 30 x 16 / 2.5 = 192 N.")
  (step "T = 294 + 192 = 486 N.")
  (answer "486 N, more than her weight of 294 N"))
```

Now you finish one.

```check
(number
  (ask "The same 30 kg child on the 2.5 m swing moves at 2 m/s at the bottom. What is the total tension?")
  (answer 342) (unit "N") (from "30 * 9.8 + 30 * 2^2 / 2.5")
  (wrong-if 48 "That is only m v^2 / r. The ropes also hold up her weight, 294 N.")
  (hint "T = m g + m v^2 / r."))
```

---

## Practice

```check
(choice
  (ask "Where in a loop does a rider feel heaviest?")
  (right "At the bottom")
  (wrong "At the top"
    "At the top, gravity helps turn the rider, so the track pushes less. At the bottom the track must hold her up and turn her upward.")
  (wrong "The same everywhere, because her weight does not change"
    "Her true weight is the same, but the push from the track, her apparent weight, changes around the loop.")
  (hint "Compare F_N at the top and the bottom."))
```

```check
(number
  (ask "A roller coaster loop has radius 8 m. What is the slowest safe speed at the top? Round to the nearest tenth.")
  (answer 8.9) (within 0.06) (unit "m/s") (from "sqrt(9.8 * 8)")
  (wrong-if 78.4 "That is v squared. Take the square root.")
  (hint "v_min = sqrt(g r)."))
```

```check
(choice
  (ask "At the top of a loop at exactly v = sqrt(g r), what force keeps the rider moving in the circle?")
  (right "Gravity alone, because the track's push is 0")
  (wrong "A centrifugal force balancing gravity"
    "No outward force exists. At this speed, gravity alone is exactly the centripetal force needed.")
  (wrong "The track pulling up on the rider"
    "A track can only push, not pull. At this speed it does not push at all.")
  (hint "F_N = 0 at this speed."))
```

---

So at the top and bottom of a vertical circle, the forces add to $m v^2 / r$ toward the center: the push is $m g + m v^2/r$ at the bottom and $m v^2/r - m g$ at the top, which needs a speed of at least $sqrt(g r)$.
