# Components

```lesson
(objective "Split a vector into perpendicular components with sine and cosine, and put components back together.")
(standards "HSG-SRT.C.8")
(minutes 30)
(keywords "component (of a vector)" "sine (of an angle)" "cosine (of an angle)")
```

You can split any vector into an east part and a north part, and join such parts back into one vector.

Any vector in a plane is the resultant of two vectors at right angles: one along x (east) and one along y (north). These two are its **components**. A displacement of 5 m at about 53° is the same trip as 3 m east followed by 4 m north.

```figure
(define m (slider 'm 1 7 5 "Magnitude" 0.5))
(define d (slider 'd 0 90 37 "Angle (°)" 1))
(define ax (* m (cos (deg->rad d))))
(define ay (* m (sin (deg->rad d))))
(grid 20 20 14 10 20 'grey)
(if (> ax 0.1) (arrow 60 200 (+ 60 (* 20 ax)) 200 'cool 1.5))
(if (> ay 0.1) (arrow (+ 60 (* 20 ax)) 200 (+ 60 (* 20 ax)) (- 200 (* 20 ay)) 'cool 1.5))
(mc-vec 60 200 (* 20 m) d 'ink)
(if (> d 3) (angle-mark 60 200 26 0 d))
(rect 186 26 110 34 'paper)
(text 190 40 (string-append "x part: " (fmt ax 2)) 'small)
(text 190 56 (string-append "y part: " (fmt ay 2)) 'small)
(caption "1 square = 1 unit; dashed: the components")
```

```check
(choice
  (ask "Set the angle to 0°. What are the components?")
  (right "The x component is the whole vector, and the y component is 0")
  (wrong "Both components are half the vector"
    "At 0° the vector points straight along x. Nothing of it points north, so the y component is 0 and the x component is all of it.")
  (wrong "Both are 0"
    "The vector still has its length. Pointing east, all of it is in the x direction.")
  (hint "Where does the arrow point at 0°?"))
```

---

## Sine and cosine

The vector and its components make a right triangle, with the vector as the long side, the hypotenuse. For an angle $theta$ in a right triangle:

- the **cosine** of $theta$ is the side next to the angle divided by the hypotenuse;
- the **sine** of $theta$ is the side opposite the angle divided by the hypotenuse.

They depend only on the angle, not on the triangle's size. A calculator gives them, set to degrees. Some values: cos 60° and sin 30° are both 0.5.

```sources
(source "OpenStax, Algebra and Trigonometry 2e (2021), section 7.2: right triangle trigonometry")
```

```check
(number
  (ask "A right triangle has a hypotenuse of 10 cm. The side opposite angle theta is 6 cm. What is the sine of theta?")
  (answer 0.6) (from "6 / 10")
  (wrong-if 1.67 "That is hypotenuse over opposite. The sine is opposite divided by hypotenuse, so it is never more than 1.")
  (wrong-if 0.8 "0.8 is the cosine here, the side next to the angle (8 cm) over the hypotenuse.")
  (hint "Sine = opposite / hypotenuse."))
```

---

## Finding components

The x component is next to the angle and the y component is opposite it. So, for a vector of magnitude $A$ at angle $theta$ from the x axis:

$$ A_x = A cos(theta) $$

$$ A_y = A sin(theta) $$

A velocity of 20 m/s at 30° has an x component of 20 x cos 30° = 17.3 m/s and a y component of 20 x sin 30° = 10 m/s.

```check
(number
  (ask "A displacement is 8 m at 60° from east. What is its x (east) component? Round to the nearest tenth.")
  (answer 4) (within 0.06) (unit "m") (from "8 * cos(60 * pi / 180)")
  (wrong-if 6.9 "That is 8 sin(60°), the north component. The east component is next to the angle: use the cosine.")
  (wrong-if 8 "Only part of the vector points east. Multiply 8 by cos(60°) = 0.5.")
  (hint "A_x = A cos(theta).")
  (hint "cos(60°) = 0.5."))
```

```check
(number
  (ask "And its y (north) component? Round to the nearest tenth.")
  (answer 6.9) (within 0.06) (unit "m") (from "8 * sin(60 * pi / 180)")
  (wrong-if 4 "That is the east component, 8 cos(60°). The north side is opposite the angle: use the sine.")
  (hint "A_y = A sin(theta).")
  (hint "sin(60°) is about 0.866."))
```

---

## Putting components back together

Given the components, the magnitude comes from the Pythagorean theorem, and the angle from its tangent, which is the opposite side divided by the side next to the angle:

$$ A = sqrt(A_x^2 + A_y^2) $$

$$ tan(theta) = A_y / A_x $$

Components of 3 m and 4 m give $A = 5$ m, and $tan(theta) = 4/3$, so $theta$ is about 53°, using the inverse tangent key on a calculator.

```check
(number
  (ask "A velocity has components 5 m/s east and 12 m/s north. What is its magnitude?")
  (answer 13) (unit "m/s") (from "sqrt(5^2 + 12^2)")
  (wrong-if 17 "The components are at a right angle, so they do not simply add. Use the Pythagorean theorem.")
  (hint "sqrt(25 + 144)."))
```

---

## A worked example

```example
(example
  (problem "A ball is kicked at 15 m/s, 40° above the ground. Find the horizontal and vertical components of its velocity.")
  (step "Horizontal is next to the angle: v_x = 15 cos(40°) = 15 x 0.766 = 11.5 m/s.")
  (step "Vertical is opposite the angle: v_y = 15 sin(40°) = 15 x 0.643 = 9.6 m/s.")
  (step "Check: sqrt(11.5² + 9.6²) = 15.0 m/s, the speed we started with.")
  (answer "11.5 m/s across and 9.6 m/s up"))
```

Now you finish one.

```check
(number
  (ask "A ball is thrown at 10 m/s, 25° above the ground. What is the vertical component of its velocity? Round to the nearest tenth.")
  (answer 4.2) (within 0.06) (unit "m/s") (from "10 * sin(25 * pi / 180)")
  (wrong-if 9.1 "That is the horizontal component, 10 cos(25°). Vertical is opposite the angle: use the sine.")
  (hint "v_y = v sin(theta)."))
```

---

## Practice

```check
(number
  (ask "A plane flies 200 km at 45° north of east. How far north does it get? Round to the nearest kilometer.")
  (answer 141) (within 0.6) (unit "km") (from "200 * sin(45 * pi / 180)")
  (wrong-if 100 "That is half of 200. At 45° the factor is sin(45°), about 0.707, not 0.5.")
  (hint "North is opposite the angle from east.")
  (hint "200 x sin(45°)."))
```

```check
(choice
  (ask "A vector's angle grows from 10° to 80°, with the same magnitude. What happens to its components?")
  (right "The x component shrinks and the y component grows")
  (wrong "Both grow"
    "The magnitude stays the same, so as one component grows, the other must shrink. Turning toward north moves length from x to y.")
  (wrong "The x component grows and the y component shrinks"
    "Turning toward 90° points the vector more north, so its y part grows. Use the sliders to see.")
  (hint "At 90° the vector points straight north."))
```

```check
(number
  (ask "A displacement has components -6 m (west) and 8 m (north). What is its magnitude?")
  (answer 10) (unit "m") (from "sqrt((-6)^2 + 8^2)")
  (wrong-if 2 "That adds -6 and 8. The components are at a right angle: use the Pythagorean theorem. Squaring removes the minus sign.")
  (hint "sqrt(36 + 64)."))
```

---

So a vector's components are $A cos(theta)$ along x and $A sin(theta)$ along y, and the Pythagorean theorem puts them back into one vector.
