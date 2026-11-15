# Rays and angles

```lesson
(objective "Draw a ray, and draw and name an angle as two rays with a common endpoint, its vertex.")
(standards "4.G.A.1")
(minutes 20)
(keywords "ray (in geometry)" "angle" "vertex (of an angle)")
```

You can draw a ray, and then put 2 rays together.

A **ray** is part of a line with 1 endpoint. It goes on without end in 1 direction. You draw it with a dot at one end and an arrow at the other.

```figure
(dot 50 130)
(arrow 50 130 290 80 'ink 2)
(label 50 155 "A" 'body 'bold)
(dot 170 105)
(label 170 95 "B" 'body 'bold)
(caption "Ray AB: it starts at A and goes through B")
```

You name a ray with its endpoint first: ray AB.

```check
(number
  (ask "How many endpoints does a ray have?")
  (answer 1) (from "1")
  (wrong-if 2 "2 endpoints make a line segment. A ray stops at one end and goes on at the other.")
  (wrong-if 0 "No endpoints is a line. A ray starts at 1 endpoint.")
  (hint "Look at the ends: a dot and an arrow."))
```

---

## An angle

An **angle** is 2 rays with the same endpoint.

That shared endpoint is the **vertex** of the angle. The rays are the sides of the angle.

```figure
(m4p4-angle 80 170 200 0 50 #f)
(label 70 190 "B" 'body 'bold)
(dot 250 170)
(label 250 190 "C" 'body 'bold)
(dot 170 62.8)
(label 156 60 "A" 'body 'bold)
(caption "Angle ABC: vertex B")
```

```check
(choice
  (ask "Where is the vertex of an angle?")
  (right "where the 2 rays start")
  (wrong "at the end of an arrow" "The arrows go on without end. The vertex is the shared endpoint, where the rays start.")
  (wrong "in the middle of a ray" "The vertex is the endpoint the 2 rays share.")
  (hint "The rays have the same endpoint."))
```

---

## Naming an angle

Name an angle with 3 letters: a point on one ray, the vertex, a point on the other ray. The vertex is always in the middle.

Angle ABC and angle CBA are the same angle. You can also call it angle B.

```check
(choice
  (ask "An angle has vertex T, with point S on one ray and point U on the other. Which is a right name?")
  (right "angle STU")
  (wrong "angle TSU" "The vertex goes in the middle. T is the vertex: angle STU.")
  (wrong "angle SUT" "The vertex goes in the middle. T is the vertex: angle STU.")
  (hint "Which letter is the vertex?"))
```

---

## Open wider

Move the slider. The rays turn apart. The angle grows as the rays open wider, not as they get longer.

```figure
(define a (slider 'a 10 170 50 "Open" 10))
(m4p4-angle 160 180 120 0 a #f)
```

```check
(choice
  (ask "Two angles have rays of different lengths. Does a longer ray make a bigger angle?")
  (right "No: the size is how wide the rays open.")
  (wrong "Yes: longer rays make a bigger angle." "Rays go on without end, so their drawn length does not matter. Only how far apart they turn matters.")
  (hint "Rays never end."))
```

---

## A worked example

```example
(example
  (problem "Draw angle XYZ.")
  (step "Y is in the middle, so Y is the vertex. Draw a dot for Y.")
  (step "Draw a ray from Y through a point X.")
  (step (choice (ask "Then?")
          (right "Draw a ray from Y through a point Z.")
          (wrong "Draw a ray from X through Z." "Both rays start at the vertex, Y.")))
  (answer "Angle XYZ: 2 rays from Y, through X and Z."))
```

---

## Practice

```check
(number
  (ask "How many rays make an angle?")
  (answer 2) (from "2")
  (wrong-if 1 "1 ray is only one side. An angle has 2 rays from the vertex.")
  (hint "An angle has 2 sides."))
```

```check
(choice
  (ask "A corner of a square is a right angle. What is the vertex?")
  (right "the corner point")
  (wrong "the middle of the square" "The vertex is where the 2 sides meet: the corner.")
  (wrong "a side of the square" "A side is like a ray of the angle. The vertex is where 2 sides meet.")
  (hint "Where do the sides meet?"))
```

An angle is 2 rays from one endpoint, its vertex.
