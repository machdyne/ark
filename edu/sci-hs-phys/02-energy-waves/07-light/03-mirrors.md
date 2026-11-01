# Mirrors

```lesson
(objective "Use the law of reflection to trace rays from a plane mirror and find where the image is.")
(standards "HS-PS4-5")
(minutes 25)
(keywords "ray (of light)" "normal (to a surface)" "angle of incidence" "law of reflection" "image (in optics)")
```

You learn the rule light follows at a mirror, and why your reflection
seems to stand behind the glass.

To follow where light goes, draw a **ray**: a straight line with an
arrow showing the direction the light travels. Where a ray meets a
surface, draw the **normal**: a line at right angles to the surface at
that point.

The angle between the arriving ray and the normal is the
**angle of incidence**. The **law of reflection** says the reflected
ray leaves at the same angle to the normal, on the other side of it:

$$ theta_r = theta_i $$

Both angles are measured from the normal, not from the surface.

```sources
(source "OpenStax, College Physics 2e (2022), section 25.1, The Ray Aspect of Light, and section 25.2, The Law of Reflection")
```

```check
(number
  (ask "A ray hits a flat mirror at 35 degrees from the normal. At what angle from the normal does it reflect, in degrees?")
  (answer 35) (unit "degrees")
  (wrong-if 55 "55 degrees is the angle from the mirror's surface. Measured from the normal, the reflected ray makes the same angle as the arriving one.")
  (wrong-if 145 "The ray does not go on through the mirror. It bounces back at 35 degrees on the other side of the normal.")
  (hint "Law of reflection: the two angles from the normal are equal."))
```

---

## Tracing rays from a mirror

A point of light, O, shines on a flat mirror. Move where the ray meets
the mirror. The dashed line is the normal there.

```figure
(define py (slider 'p 40 200 150 "Where it hits" 10))
(define ox 110)
(define oy 90)
(define dx (- 200 ox))
(define dy (- py oy))
(define a (rad->deg (atan (abs dy) dx)))
(define s (min (/ 180 dx) (if (> dy 0) (/ (- 205 py) dy) (if (< dy 0) (/ (- py 15) (- dy)) 10))))
(still
  (rect 200 25 6 185 'grey)
  (line 200 25 200 210 'ink 2)
  (text 210 20 "mirror" 'small)
  (circle ox oy 5 'warm)
  (text (- ox 12) (+ oy 4) "O" 'right 'small))
(line 130 py 270 py 'cool 1)
(arrow ox oy 200 py 'ink 1.5)
(arrow 200 py (- 200 (* s dx)) (+ py (* s dy)) 'ink 1.5)
(line 200 py (+ 200 dx) (- py dy) 'grey 1)
(circle (+ 200 dx) oy 4 'grey)
(text (+ 200 dx) (- oy 10) "image" 'centre 'small)
(text 160 230 (string-append "angle in = angle out = " (fmt a 0) " degrees") 'centre 'small 'bold)
```

```check
(choice
  (ask "Move the slider to different points. What do the dotted lines behind the mirror have in common?")
  (right "They all meet at one point behind the mirror, as far behind it as O is in front")
  (wrong "They spread out and never meet"
    "Try several positions: every reflected ray, traced back behind the mirror, passes through the same point.")
  (wrong "They meet on the mirror's surface"
    "They meet behind the mirror, at the same distance behind it as O is in front.")
  (hint "Watch the grey dot behind the mirror as you move the slider."))
```

---

## The image

All the reflected rays seem to come from one point behind the mirror.
Your eye traces the light back along straight lines, so you see the
point of light there. A place from which light seems to come, or to
which it is brought together, after a mirror, is an
**image**.

For a flat (plane) mirror, the image is as far behind the mirror as
the object is in front, and the same size. No light really reaches the
place behind the glass: the rays only seem to come from there.

```check
(number
  (ask "You stand 2.0 m in front of a flat mirror. How far are you from your image, in meters?")
  (answer 4) (unit "m") (from "2 * 2.0")
  (wrong-if 2 "That is the distance from you to the mirror. The image is 2.0 m behind the mirror, so 4.0 m from you.")
  (hint "The image is as far behind the mirror as you are in front."))
```

---

## Worked example

```example
(example
  (problem "A ray strikes a mirror at 20 degrees from the mirror's surface. What is the angle of reflection?")
  (step "Angles are measured from the normal, which is at 90 degrees to the surface.")
  (step "Angle of incidence: 90 - 20 = 70 degrees.")
  (step "Law of reflection: the angle of reflection is also 70 degrees from the normal.")
  (answer "70 degrees from the normal"))
```

```example
(example
  (problem "A cat sits 1.5 m in front of a mirror, and you stand right behind the cat, 1.0 m farther back. How far from you is the cat's image?")
  (step "The image of the cat is 1.5 m behind the mirror. You are 1.5 + 1.0 = 2.5 m in front of it.")
  (step (number (ask "Distance from you to the image, in meters?") (answer 4) (unit "m") (from "2.5 + 1.5")
    (wrong-if 3 "That is twice the cat's distance, from the cat to its image. You stand 1.0 m behind the cat.")
    (hint "2.5 m to the mirror, then 1.5 m behind it.")))
  (answer "4.0 m"))
```

---

## Practice

```check
(choice
  (ask "A ray hits a mirror straight on, along the normal. Where does it go?")
  (right "Straight back the way it came")
  (wrong "Along the mirror's surface"
    "Its angle of incidence is 0 degrees, so its angle of reflection is 0 degrees too: back along the normal.")
  (wrong "Through the mirror"
    "A mirror reflects the light. At 0 degrees from the normal, the reflected ray goes straight back.")
  (hint "The angle of incidence is 0."))
```

```check
(number
  (ask "Two flat mirrors meet at a right angle. A ray reflects off the first at 30 degrees from its normal. At what angle from the second mirror's normal does it arrive there, in degrees?")
  (answer 60) (unit "degrees") (from "90 - 30")
  (wrong-if 30 "The two normals are at right angles to each other. A ray at 30 degrees from one is at 90 - 30 from the other.")
  (hint "The two normals are at 90 degrees to each other.")
  (hint "90 - 30."))
```

So: angles of reflection equal angles of incidence, both from the
normal, and a flat mirror forms an image as far behind it as the object
is in front.
