# Total internal reflection

```lesson
(objective "Find the critical angle, and explain how optical fibers carry light by total internal reflection.")
(standards "HS-PS4-5" "HSA-CED.A.4")
(minutes 25)
(keywords "total internal reflection" "critical angle" "optical fiber")
```

You learn why light can be trapped inside glass, and how that carries
light along a thin fiber.

When light goes from glass into air, it speeds up and bends away from
the normal. The larger the angle inside the glass, the closer the ray
in the air comes to skimming along the surface. At one angle, the
**critical angle**, the ray in the air would be at 90 degrees. Beyond
it, no light leaves at all: it all reflects back into the glass. That
is **total internal reflection**.

From Snell's law with $theta_2 = 90$ degrees, for light going from
$n_1$ into a smaller $n_2$:

$$ sin(theta_c) = n_2 / n_1 $$

```sources
(source "OpenStax, College Physics 2e (2022), section 25.4, Total Internal Reflection")
```

```check
(choice
  (ask "Can total internal reflection happen when light goes from air into water?")
  (right "No: it needs light going into a material with a smaller index")
  (wrong "Yes, if the angle is large enough"
    "Going from air into water, light bends toward the normal, and there is always an angle in the water for it. Only light going into a smaller index can be trapped.")
  (wrong "Yes, at every angle"
    "Light enters water from air at every angle. Total internal reflection traps light inside the material with the larger index.")
  (hint "When does the ray outside bend toward 90 degrees?"))
```

---

## Find the critical angle

Light travels inside glass ($n = 1.50$) toward the surface with air.
Change its angle from the normal.

```figure
(define a (slider 'a 0 80 30 "Angle (deg)" 2))
(define b (wv-snell 1.5 1 a))
(define d (deg->rad a))
(still
  (rect 10 120 300 100 'sky)
  (line 10 120 310 120 'ink 1.5)
  (line 160 25 160 215 'cool 1)
  (text 16 34 "air, n = 1.00" 'small)
  (text 16 50 "below: glass, n = 1.50" 'small))
(arrow (- 160 (* 95 (sin d))) (+ 120 (* 95 (cos d))) 160 120 'ink 1.5)
(if b (wv-ray-out 160 120 b 95 #f 'ink))
(wv-ray-out 160 120 a 95 #t (if b 'grey 'ink))
(text 300 34 (if b (string-append "out at " (fmt b 0) " deg") "all reflected") 'right 'small 'bold)
(caption "Grey: the weaker reflected ray. Critical angle: 41.8 degrees.")
```

```check
(number
  (ask "What is the critical angle for light going from glass (n = 1.50) into air, to the nearest tenth of a degree?")
  (answer 41.8) (within 0.05) (unit "degrees") (true "abs(sin(41.8 pi / 180) - 1 / 1.50) < 0.001")
  (wrong-if 48.2 "That is measured from the surface. The critical angle, like the others, is measured from the normal.")
  (wrong-if 90 "90 degrees is the angle of the ray in the air at the critical angle, not the angle in the glass.")
  (hint "sin(theta_c) = 1.00 / 1.50 = 0.667.")
  (hint "The angle whose sine is 0.667."))
```

---

## Optical fibers

An **optical fiber** is a thin strand of very clear glass, often
thinner than a hair, with a covering of lower index around a core.
Light sent in at one end strikes the side of the core at more than the
critical angle, so it reflects totally, again and again, and follows
the fiber even round gentle bends. Almost no light leaks out.

```figure
(line 10 104 310 104 'ink 2)
(line 10 136 310 136 'ink 2)
(path '(10 120 124 108 290 125.5) 'ink 2)
(arrow 290 125.5 300 126.5 'ink 2)
(text 160 92 "cladding: lower n" 'centre 'small)
(text 160 132 "core: higher n" 'centre 'small)
(text 160 156 "cladding: lower n" 'centre 'small)
(caption "Ray at 84 degrees to the normal; core drawn wide.")
```

Optical fibers carry telephone and internet traffic over long
distances as pulses of light, and doctors use bundles of them to look inside the
body.

```sources
(source "OpenStax, College Physics 2e (2022), section 25.4, Total Internal Reflection (fiber optics)")
```

```check
(choice
  (ask "Why does light stay inside an optical fiber's core?")
  (right "It hits the core's side beyond the critical angle, so it totally reflects")
  (wrong "The glass absorbs any light that reaches the side"
    "Absorption would lose the light. It stays in because each time it meets the side, all of it reflects back.")
  (wrong "The fiber is coated with a mirror"
    "The covering is clear glass or plastic of lower index, not a mirror. Total internal reflection does the work.")
  (hint "Compare the angle at the side with the critical angle."))
```

---

## Worked example

```example
(example
  (problem "Find the critical angle for light going from water (n = 1.33) into air.")
  (step "sin(theta_c) = 1.00 / 1.33 = 0.752.")
  (step "theta_c = 48.8 degrees.")
  (answer "about 48.8 degrees"))
```

```example
(example
  (problem "Find the critical angle for light going from diamond (n = 2.42) into air.")
  (step "sin(theta_c) = 1.00 / 2.42 = 0.413.")
  (step (number (ask "theta_c, to the nearest tenth of a degree?") (answer 24.4) (within 0.05) (unit "degrees") (true "abs(sin(24.4 pi / 180) - 1 / 2.42) < 0.001")
    (wrong-if 65.6 "That is from the surface. Measure from the normal.")
    (hint "The angle whose sine is 0.413.")))
  (answer "about 24.4 degrees: a small critical angle, which makes cut diamonds sparkle"))
```

---

## Practice

```check
(choice
  (ask "Light in glass (critical angle 41.8 degrees) meets the surface with air at 50 degrees from the normal. What happens?")
  (right "All of it reflects back into the glass" (true "50 > 41.8"))
  (wrong "It leaves the glass, bending away from the normal"
    "50 degrees is beyond the critical angle. No angle in the air fits Snell's law, so all the light reflects.")
  (wrong "It goes straight on into the air"
    "Light only goes straight on along the normal. At 50 degrees it is beyond the critical angle.")
  (hint "Compare 50 degrees with 41.8 degrees."))
```

```check
(number
  (ask "A fiber's core has n = 1.48 and its covering n = 1.46. What is the critical angle at the side of the core, to the nearest degree?")
  (answer 81) (within 0.5) (unit "degrees") (true "abs(sin(81 pi / 180) - 1.46 / 1.48) < 0.005")
  (wrong-if 9 "That is from the surface of the side. Measured from the normal, the critical angle is near 90 degrees.")
  (hint "sin(theta_c) = 1.46 / 1.48."))
```

So: light going into a smaller index is totally reflected beyond the
critical angle, $sin(theta_c) = n_2 / n_1$, which is how optical
fibers guide light.
