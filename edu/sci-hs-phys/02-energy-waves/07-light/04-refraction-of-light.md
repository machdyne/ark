# Refraction of light

```lesson
(objective "Use the index of refraction and Snell's law to find how much light bends, and explain dispersion in a prism.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 30)
(keywords "index of refraction" "Snell's law" "dispersion")
```

You learn how much light bends when it passes into glass or water, and
why a prism makes a rainbow.

Light is slower in water and glass than in empty space. How much slower
is given by the material's **index of refraction**:

$$ n = c / v $$

where $v$ is the speed of light in the material. $n$ has no unit, and
it is never less than 1.

| Material | n |
|---|---|
| empty space | 1 exactly |
| air | 1.0003, about 1.00 |
| water | 1.33 |
| crown glass | 1.52 |
| diamond | 2.42 |

```sources
(source "OpenStax, College Physics 2e (2022), section 25.3, The Law of Refraction, table 25.1")
```

```check
(number
  (ask "How fast does light travel in water (n = 1.33), in meters per second? Give the answer in units of 10^8 m/s, to the nearest hundredth.")
  (answer 2.26) (within 0.005) (unit "* 10^8 m/s") (from "3.00 / 1.33")
  (wrong-if 3.99 "That is c times n. Light is slower in water, so divide: v = c / n.")
  (hint "v = c / n = 3.00 * 10^8 / 1.33."))
```

---

## Snell's law

When a ray passes at a slant from one material into another where its
speed changes, it bends: refraction. Going into a material with a
larger $n$, it bends toward the normal; going into a smaller $n$, away
from it. The rule is **Snell's law**:

$$ n_1 sin(theta_1) = n_2 sin(theta_2) $$

Both angles are measured from the normal: $theta_1$ in the first
material, $theta_2$ in the second.

```check
(number
  (ask "Light in air strikes water (n = 1.33) at 40 degrees from the normal. What is the angle in the water, to the nearest degree?")
  (answer 29) (within 0.5) (unit "degrees") (true "abs(sin(29 pi / 180) - sin(40 pi / 180) / 1.33) < 0.005")
  (wrong-if 59 "That bends away from the normal. Going into water, a larger n, light bends toward the normal: the angle gets smaller.")
  (wrong-if 40 "Light slows down entering water, so it bends. Only along the normal does it go straight on.")
  (hint "sin(theta_2) = sin(40) / 1.33.")
  (hint "sin(40) is about 0.643; 0.643 / 1.33 = 0.483."))
```

---

## Try it

Change the angle and the material below the air. The dashed line is
the normal.

```figure
(define a (slider 'a 0 80 40 "Angle (deg)" 5))
(define k (choice 'mat '("water" "glass" "diamond") "Below"))
(define n2 (if (= k 0) 1.33 (if (= k 1) 1.52 2.42)))
(define b (wv-snell 1 n2 a))
(still
  (rect 10 120 300 100 'sky)
  (line 10 120 310 120 'ink 1.5)
  (line 160 25 160 215 'cool 1)
  (text 16 34 "air, n = 1.00" 'small)
  (text 304 34 (string-append "below: n = " (fmt n2 2)) 'right 'small))
(wv-ray-in 160 120 a 95 'ink)
(wv-ray-out 160 120 b 95 #t 'ink)
(wv-ray-out 160 120 a 60 #f 'grey)
(if (> a 0) (angle-mark 160 120 30 90 (+ 90 a) (fmt a 0)))
(if (> b 0) (angle-mark 160 120 30 270 (+ 270 b) (fmt b 1)))
(caption "Grey: the weaker reflected ray.")
```

```check
(choice
  (ask "Keep the angle at 40 degrees and change the material from water to diamond. What happens to the ray below the surface?")
  (right "It bends more, closer to the normal, because diamond's index is larger")
  (wrong "It bends less, because diamond is harder"
    "Hardness does not set the bending. Diamond's larger index means light is slower there, so it bends more toward the normal.")
  (wrong "It goes straight on, because diamond is clear"
    "Clear materials still refract light. Only a ray along the normal goes straight on.")
  (hint "Larger n_2 makes sin(theta_2) = sin(theta_1) / n_2 smaller."))
```

---

## Dispersion

The index of refraction of glass is a little different for each color:
larger for violet than for red. So violet light bends a little more
than red. The spreading of light into its colors because $n$ depends on
the wavelength is **dispersion**.

White light is a mix of all the colors. In a glass prism, each color
bends by a different amount, twice, so white light comes out spread
into a band of colors from red to violet. Raindrops do the same in a
rainbow.

```sources
(source "OpenStax, College Physics 2e (2022), section 25.5, Dispersion: The Rainbow and Prisms")
```

```check
(choice
  (ask "White light passes through a prism. Which color is bent the most?")
  (right "Violet, because glass has its largest index for violet")
  (wrong "Red, because red light has the longest wavelength"
    "Red has the longest wavelength, and glass has its smallest index for it. Red bends least.")
  (wrong "All colors bend the same, since they travel at c"
    "In empty space they all travel at c. In glass, their speeds differ a little, so they bend by different amounts.")
  (hint "Larger n, more bending."))
```

---

## Worked example

```example
(example
  (problem "Light passes from air into crown glass (n = 1.52) at 60 degrees from the normal. What is the angle in the glass?")
  (step "Snell's law: 1.00 sin(60) = 1.52 sin(theta_2).")
  (step "sin(theta_2) = 0.866 / 1.52 = 0.570.")
  (step "theta_2 = 34.7 degrees.")
  (answer "about 35 degrees"))
```

```example
(example
  (problem "Light passes from water (n = 1.33) into air at 30 degrees from the normal. What is the angle in the air?")
  (step "Snell's law: 1.33 sin(30) = 1.00 sin(theta_2), so sin(theta_2) = 1.33 * 0.5 = 0.665.")
  (step (number (ask "theta_2, to the nearest degree?") (answer 42) (within 0.5) (unit "degrees") (true "abs(sin(42 pi / 180) - 1.33 * 0.5) < 0.01")
    (wrong-if 22 "Light going from water into air speeds up and bends away from the normal: the angle grows.")
    (hint "The angle whose sine is 0.665.")))
  (answer "about 42 degrees: it bends away from the normal"))
```

---

## Practice

```check
(number
  (ask "Light travels at 1.24 * 10^8 m/s in a gem. What is the gem's index of refraction, to the nearest hundredth?")
  (answer 2.42) (within 0.005) (from "3.00 / 1.24")
  (wrong-if 0.41 "That is v / c. n = c / v is never less than 1.")
  (hint "n = c / v."))
```

```check
(choice
  (ask "A straw in a glass of water looks bent at the surface. Why?")
  (right "Light from the straw bends as it leaves the water into the air")
  (wrong "The water really bends the straw"
    "The straw is straight. Light from the part under water changes direction at the surface, so that part seems to be elsewhere.")
  (wrong "Light reflects off the water's surface"
    "Some light does reflect, but the bent look comes from light passing out of the water and changing direction.")
  (hint "What happens to light crossing from water to air at a slant?"))
```

So: $n = c / v$; at a boundary $n_1 sin(theta_1) = n_2 sin(theta_2)$;
and because $n$ differs a little with color, a prism disperses white
light into colors.
