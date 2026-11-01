# Friction

```lesson
(objective "Compute static and kinetic friction with a coefficient of friction.")
(standards "HS-PS2-1" "HSA-CED.A.4")
(minutes 30)
(keywords "friction" "static friction" "kinetic friction" "coefficient of friction")
```

You can predict whether a push will start a box sliding, and how hard the floor drags on it once it slides.

**Friction** is a force from a surface that acts along the surface and opposes sliding. It comes from the two surfaces catching and sticking on each other where they touch.

There are two kinds:

- **static friction** acts while the surfaces do not slide. It is as large as it needs to be to stop sliding, up to a limit.
- **kinetic friction** acts while the surfaces slide. It points against the sliding.

```sources
(source "OpenStax, College Physics (2012), section 5.1: Friction")
```

```check
(choice
  (ask "You push gently on a heavy desk and it does not move. What does static friction do?")
  (right "It pushes back exactly as hard as you push, so the desk stays put")
  (wrong "Nothing: there is no friction until the desk moves"
    "If there were no force against your push, the desk would speed up. Static friction balances your push while nothing slides.")
  (wrong "It pushes back with its largest possible force"
    "Static friction only grows as large as needed. A gentle push needs only a gentle friction to balance it.")
  (hint "The desk is in equilibrium."))
```

---

## The coefficient of friction

How large friction can be depends on how hard the surfaces press together, the normal force, and on the two surfaces. A number for each pair of surfaces, the **coefficient of friction** $mu$ (the Greek letter mu), tells how grippy they are. The largest static friction and the kinetic friction are

$$ f_(max) = mu_s F_N $$

$$ f_k = mu_k F_N $$

$mu$ has no unit. For most surfaces $mu_k$ is less than $mu_s$: it is easier to keep a box sliding than to start it.

```check
(number
  (ask "A 20 kg box rests on a level floor, so F_N = 196 N. The floor's mu_s is 0.5. What is the largest static friction?")
  (answer 98) (unit "N") (from "0.5 * 196")
  (wrong-if 10 "That uses the mass, 20 kg. Friction depends on the normal force, 196 N.")
  (wrong-if 392 "That divides by 0.5. The largest static friction is mu_s times F_N.")
  (hint "f_max = mu_s F_N."))
```

---

## Push harder and harder

Push the same 20 kg box ($mu_s = 0.5$, $mu_k = 0.3$) harder and harder. Static friction matches the push until the push passes 98 N. Then the box slides, and kinetic friction, 0.3 x 196 = 58.8 N, takes over.

```figure
(define P (slider 'P 0 150 60 "Push (N)" 5))
(define f (if (<= P 98) P 58.8))
(graph 50 30 250 160 0 150 0 120)
(graph-axes 25 20 "push (N)" "friction (N)")
(path (list (gx 0) (gy 0) (gx 98) (gy 98)) 'ink 2)
(path (list (gx 98) (gy 58.8) (gx 150) (gy 58.8)) 'ink 2)
(line (gx 98) (gy 98) (gx 98) (gy 58.8) 'cool 1.5)
(plot-point P f 'warm)
(text 70 40 (if (<= P 98) "at rest: static" "sliding: kinetic") 'small 'bold)
(caption (string-append "friction " (fmt f 1) " N; net force " (fmt (- P f) 1) " N"))
```

```check
(number
  (ask "Push with 120 N. The box slides. What is its acceleration? Round to the nearest tenth.")
  (answer 3.1) (within 0.06) (unit "m/s²") (from "(120 - 58.8) / 20")
  (wrong-if 6 "That is 120 / 20, as if there were no friction. Subtract the kinetic friction, 58.8 N, first.")
  (wrong-if 1.1 "That uses the largest static friction, 98 N. Once the box slides, kinetic friction acts: 58.8 N.")
  (hint "Net force = 120 - 58.8.")
  (hint "a = net force / 20 kg."))
```

---

## Friction does not always oppose motion

Friction opposes sliding between the two surfaces. When you walk, your foot pushes back on the ground, and static friction from the ground pushes your foot forward. That forward friction is what moves you. On ice, with little friction, walking is hard.

```check
(choice
  (ask "A car speeds up on a dry road. What force from the road pushes the car forward?")
  (right "Static friction on the tires")
  (wrong "Kinetic friction on the tires"
    "When the tires grip and do not skid, the rubber does not slide on the road. That is static friction.")
  (wrong "The normal force"
    "The normal force from a level road points straight up. The forward push comes from friction along the road.")
  (hint "Do the tires slide on the road when they grip?"))
```

---

## A worked example

```example
(example
  (problem "A 50 kg crate slides across a level floor with mu_k = 0.25. How large is the kinetic friction, and what push keeps it sliding at a steady speed?")
  (step "Normal force: F_N = m g = 50 x 9.8 = 490 N.")
  (step "Kinetic friction: f_k = mu_k F_N = 0.25 x 490 = 122.5 N.")
  (step "Steady speed means equilibrium, so the push must balance friction.")
  (answer "Friction 122.5 N, so a push of 122.5 N"))
```

Now you finish one.

```check
(number
  (ask "A 50 kg crate on that floor (mu_k = 0.25) is pushed with 200 N while sliding. What is its acceleration? Round to the nearest hundredth.")
  (answer 1.55) (within 0.006) (unit "m/s²") (from "(200 - 0.25 * 50 * 9.8) / 50")
  (wrong-if 4 "That leaves out friction. The net force is 200 - 122.5 N.")
  (hint "Net force = 200 - 122.5.")
  (hint "a = 77.5 / 50."))
```

---

## Practice

```check
(number
  (ask "A 30 kg sled on snow has mu_k = 0.1. What is the kinetic friction on it? Round to the nearest tenth.")
  (answer 29.4) (within 0.06) (unit "N") (from "0.1 * 30 * 9.8")
  (wrong-if 3 "That multiplies mu_k by the mass. Use the normal force, m g = 294 N.")
  (hint "f_k = mu_k m g."))
```

```check
(choice
  (ask "A box needs 80 N to start sliding. Once it slides, which push keeps it moving at a steady speed?")
  (right "Less than 80 N, because kinetic friction is usually smaller than the largest static friction")
  (wrong "More than 80 N"
    "Getting a box started is the hard part. Once it slides, kinetic friction is usually smaller.")
  (wrong "Exactly 80 N"
    "80 N matches the largest static friction. Kinetic friction, which acts while it slides, is usually smaller.")
  (hint "Compare mu_k and mu_s."))
```

```check
(number
  (ask "A 10 kg box on a level floor starts to slide when pushed with 39.2 N. What is mu_s?")
  (answer 0.4) (within 0.001) (from "39.2 / (10 * 9.8)")
  (wrong-if 3.92 "That divides by the mass. mu_s = f / F_N, and F_N = 98 N.")
  (hint "mu_s = f_max / F_N.")
  (hint "39.2 / 98."))
```

---

So friction acts along a surface against sliding: static friction up to $mu_s F_N$ before sliding, and kinetic friction $mu_k F_N$ during it.
