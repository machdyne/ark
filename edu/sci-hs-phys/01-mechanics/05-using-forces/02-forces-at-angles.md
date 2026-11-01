# Forces at angles

```lesson
(objective "Find the net force of forces at angles by adding their components.")
(standards "HS-PS2-1" "HSG-SRT.C.8")
(minutes 30)
```

You can add forces that point in any directions, by splitting each into components and adding those.

A force at an angle does two things at once. A rope pulling a sled at 30° above level pulls it forward and lifts it a little. Its components, found with sine and cosine, give each part:

$$ F_x = F cos(theta) $$

$$ F_y = F sin(theta) $$

```figure
(define th (slider 'th 0 60 30 "Rope angle (°)" 5))
(define F 100)
(define fx (* F (cos (deg->rad th))))
(define fy (* F (sin (deg->rad th))))
(line 10 170 310 170 'ink 2)
(rect 70 140 60 30 'paper)
(frame 70 140 60 30 'ink 2)
(mc-vec 100 155 (* 1.2 F) th 'ink "100 N")
(if (> th 0) (angle-mark 100 155 30 0 th))
(arrow 100 155 (+ 100 (* 1.2 fx)) 155 'cool 1.5)
(if (> fy 1) (arrow (+ 100 (* 1.2 fx)) 155 (+ 100 (* 1.2 fx)) (- 155 (* 1.2 fy)) 'cool 1.5))
(rect 196 186 120 34 'paper)
(text 200 200 (string-append "forward: " (fmt fx 1) " N") 'small)
(text 200 216 (string-append "up: " (fmt fy 1) " N") 'small)
(caption "Dashed: the rope's components, to scale")
```

```check
(number
  (ask "The rope pulls with 100 N at 30°. What is the forward component? Round to the nearest tenth.")
  (answer 86.6) (within 0.06) (unit "N") (from "100 * cos(30 * pi / 180)")
  (wrong-if 50 "That is the upward component, 100 sin(30°). Forward is next to the angle: use the cosine.")
  (wrong-if 100 "Only part of the pull is forward, because the rope is tilted up.")
  (hint "F_x = F cos(theta)."))
```

---

## A tilted pull changes the normal force

The rope's upward component helps hold the sled up, so the snow needs to push up less. For a 20 kg sled pulled at 30° with 100 N:

$$ F_N + 50 = 20 * 9.8 $$

so the normal force is 196 - 50 = 146 N, not 196 N.

```check
(number
  (ask "A 15 kg box is pulled with 80 N at 40° above level. What is the normal force from the floor? Round to the nearest newton.")
  (answer 96) (within 0.6) (unit "N") (from "15 * 9.8 - 80 * sin(40 * pi / 180)")
  (wrong-if 147 "That is the box's weight. The rope's upward part, 80 sin(40°) = 51.4 N, holds some of it up.")
  (wrong-if 86 "That subtracts the forward part, 80 cos(40°). The upward part uses the sine.")
  (hint "Upward component: 80 sin(40°) = 51.4 N.")
  (hint "F_N = 147 - 51.4."))
```

---

## Adding forces by components

To find the net force of several forces at angles:

1. Split each force into its x and y components (with signs).
2. Add all the x components, and separately all the y components.
3. Join the two sums with the Pythagorean theorem.

Two dogs pull a sled. One pulls 60 N east. The other pulls 80 N north. The sums are 60 N east and 80 N north, so the net force is $sqrt(60^2 + 80^2) = 100$ N.

```check
(number
  (ask "Forces of 30 N at 0° and 30 N at 90° act on a crate. What is the size of the net force? Round to the nearest tenth.")
  (answer 42.4) (within 0.06) (unit "N") (from "sqrt(30^2 + 30^2)")
  (wrong-if 60 "The forces are at a right angle, so their sizes do not simply add.")
  (hint "x sum 30 N, y sum 30 N."))
```

---

## A worked example

```example
(example
  (problem "Two ropes pull a boat: 200 N at 30° north of east and 200 N at 30° south of east. Find the net force.")
  (step "Rope 1: x = 200 cos(30°) = 173.2 N; y = +200 sin(30°) = +100 N.")
  (step "Rope 2: x = 173.2 N; y = -100 N.")
  (step "Sums: x = 346.4 N; y = 0 N.")
  (answer "346 N east"))
```

Now you finish one.

```check
(number
  (ask "Two ropes pull a crate: 100 N at 60° north of east and 100 N at 60° south of east. What is the net force? Round to the nearest newton.")
  (answer 100) (within 0.6) (unit "N") (from "2 * 100 * cos(60 * pi / 180)")
  (wrong-if 200 "Each rope pulls partly north and partly south; those parts cancel. Only the east parts add: 2 x 100 cos(60°).")
  (wrong-if 173 "That adds the north-south parts. They cancel; add the east parts, each 100 cos(60°) = 50 N.")
  (hint "The y parts cancel.")
  (hint "x: 2 x 100 cos(60°)."))
```

---

## Practice

```check
(number
  (ask "A child pulls a wagon with 40 N at 25° above level. What is the forward component? Round to the nearest tenth.")
  (answer 36.3) (within 0.06) (unit "N") (from "40 * cos(25 * pi / 180)")
  (wrong-if 16.9 "That is the upward part, 40 sin(25°). Forward uses the cosine.")
  (hint "40 cos(25°)."))
```

```check
(choice
  (ask "You pull a heavy box with a rope. Tilting the rope a little upward instead of pulling level does what to the friction on the box?")
  (right "It reduces it, because the upward pull lowers the normal force")
  (wrong "It raises it, because the rope pulls harder"
    "The upward part of the pull lifts some of the box's weight, so the floor pushes up less. Friction, mu F_N, falls with the normal force.")
  (wrong "Nothing: friction depends only on the box's mass"
    "Friction depends on the normal force, which here is less than the weight.")
  (hint "Friction = mu F_N. What happens to F_N?"))
```

```check
(number
  (ask "Three forces act on a ring: 50 N east, 20 N west and 40 N north. What is the size of the net force?")
  (answer 50) (unit "N") (from "sqrt((50 - 20)^2 + 40^2)")
  (wrong-if 110 "Adding all the sizes ignores the directions. x: 50 - 20 = 30 N; y: 40 N.")
  (wrong-if 70 "That adds 30 and 40. They are at a right angle: use the Pythagorean theorem.")
  (hint "x sum: 30 N. y sum: 40 N."))
```

---

So forces at angles add by components: sum the x parts and the y parts separately, then join them with the Pythagorean theorem.
