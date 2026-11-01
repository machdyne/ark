# Vectors and scalars

```lesson
(objective "Tell vectors from scalars, and draw a vector as an arrow with a magnitude and a direction.")
(standards "HSN-VM.A.1")
(minutes 20)
(keywords "vector" "scalar" "magnitude (of a vector)")
```

You can tell which quantities need a direction, and draw them as arrows to scale.

Some quantities are just a size. A mass of 3 kg, a time of 20 s, a distance of 50 m and a speed of 8 m/s each need only a number and a unit. Such a quantity is a **scalar**.

Others need a direction too. A displacement of 50 m north is not the same as 50 m east. A quantity with a size and a direction is a **vector**. Displacement, velocity and acceleration are vectors.

```check
(choice
  (several)
  (ask "Which of these are vectors? Choose all that are.")
  (right "A velocity of 12 m/s west")
  (right "A displacement of 3 km up the river")
  (wrong "A time of 4 minutes"
    "Time has no direction: 4 minutes is just a size. It is a scalar.")
  (wrong "A speed of 60 mph"
    "Speed is only how fast, with no direction. It is a scalar; velocity is the vector.")
  (wrong "A mass of 70 kg"
    "Mass is how much matter there is, with no direction. It is a scalar.")
  (hint "Does the quantity point somewhere?"))
```

---

## Drawing a vector

A vector is drawn as an arrow. Its length, to a chosen scale, is the vector's **magnitude**: its size, never negative. Its direction is where the arrow points, often given as an angle counter-clockwise from east (the + x direction).

```figure
(define m (slider 'm 1 6 4 "Magnitude (m)" 0.5))
(define d (slider 'd 0 180 30 "Angle (°)" 15))
(grid 20 20 14 10 20 'grey)
(circle 160 180 3 'ink)
(mc-vec 160 180 (* 20 m) d 'ink)
(if (> d 0) (angle-mark 160 180 22 0 d))
(line 160 180 300 180 'ink 1)
(text 290 172 "E" 'small)
(rect 26 24 110 16 'paper)
(text 30 36 (string-append (fmt m 1) " m at " (fmt d 0) "°") 'small 'bold)
(caption "1 grid square = 1 m")
```

```check
(number
  (ask "Set the magnitude to 3 m and the angle to 90°. How many grid squares long is the arrow?")
  (answer 3) (from "3 / 1")
  (wrong-if 90 "90 is the angle, which sets the direction. The length gives the magnitude: 3 m at 1 square per meter.")
  (hint "Each grid square is 1 m."))
```

---

## Same magnitude, different vectors

Two vectors are equal only when they have the same magnitude and the same direction. An arrow can be moved anywhere on the page and still be the same vector, if its length and direction stay the same.

On a line, a + or - sign was enough for the direction. In a plane, you need an angle or a compass direction.

```check
(choice
  (ask "Car A drives at 20 m/s north. Car B drives at 20 m/s east. Which is true?")
  (right "They have the same speed but different velocities")
  (wrong "They have the same velocity"
    "Velocity is a vector, so its direction counts. North and east are different directions, so the velocities differ.")
  (wrong "They have different speeds"
    "Speed is the magnitude only: 20 m/s for both. Only the directions differ.")
  (hint "Which of speed and velocity includes the direction?"))
```

---

## Magnitude from an arrow

To read a vector from a drawing, measure the arrow's length and multiply by the scale.

```figure
(grid 20 20 14 10 20 'grey)
(mc-vec 60 180 160 0 'ink "A")
(mc-vec 60 140 100 90 'ink "B")
(caption "1 grid square = 5 m/s")
```

Arrow A is 8 squares long, so it stands for 8 x 5 = 40 m/s east.

```check
(number
  (ask "Arrow B is 5 squares long and points north. What velocity does it stand for, in m/s? Give the magnitude.")
  (answer 25) (unit "m/s") (from "5 * 5")
  (wrong-if 5 "5 is the number of squares. Each square stands for 5 m/s, so multiply.")
  (hint "Squares times the scale."))
```

---

## A worked example

```example
(example
  (problem "Draw a displacement of 300 m at 60°, with a scale of 1 square = 50 m.")
  (step "Length: 300 m / 50 m per square = 6 squares.")
  (step "Direction: start along east, turn 60° counter-clockwise.")
  (step "Draw an arrow 6 squares long in that direction, with its head at the far end.")
  (answer "An arrow 6 squares long, 60° above east"))
```

Now you finish one.

```check
(number
  (ask "With a scale of 1 cm = 20 km, how long an arrow shows a displacement of 140 km?")
  (answer 7) (unit "cm") (from "140 / 20")
  (wrong-if 2800 "That multiplies. Each centimeter stands for 20 km, so divide 140 by 20.")
  (hint "How many 20 km pieces make 140 km?"))
```

---

## Practice

```check
(choice
  (ask "A wind blows at 15 m/s from the west. Is that a scalar or a vector?")
  (right "A vector: it has a magnitude, 15 m/s, and a direction")
  (wrong "A scalar: it is a speed"
    "\"From the west\" gives a direction, so this is a velocity, a vector.")
  (hint "Is a direction given?"))
```

```check
(choice
  (ask "Can the magnitude of a velocity be negative?")
  (right "No: a magnitude is a size, never negative")
  (wrong "Yes, when the object moves in the - direction"
    "The minus sign gives the direction. The magnitude, the speed, is the size alone: -5 m/s has magnitude 5 m/s.")
  (hint "A magnitude is an arrow's length."))
```

```check
(number
  (ask "An arrow 4.5 squares long stands for an acceleration. The scale is 1 square = 2 m/s². What is the magnitude?")
  (answer 9) (unit "m/s²") (from "4.5 * 2")
  (wrong-if 2.25 "That divides. Each square stands for 2 m/s², so multiply the number of squares by 2.")
  (hint "Squares times the scale."))
```

---

So a scalar is a size alone, while a vector has a magnitude and a direction and is drawn as an arrow whose length, to scale, is its magnitude.
