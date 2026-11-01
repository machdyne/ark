# Relative velocity

```lesson
(objective "Find a velocity relative to the ground by adding velocities, for a boat on a river or a plane in the wind.")
(standards "HSN-VM.A.3")
(minutes 25)
(keywords "relative velocity")
```

You can find how fast something really moves over the ground when it travels through moving water or air.

A velocity is always measured from something. A passenger sitting on a train moving at 20 m/s has velocity 0 relative to the train, and 20 m/s relative to the ground. A velocity measured from a chosen object is a **relative velocity**.

To get a velocity relative to the ground, add the velocity relative to the moving water or air and the velocity of the water or air relative to the ground. For a boat (B) on water (W) over the ground (G):

$$ v_(BG) = v_(BW) + v_(WG) $$

```check
(number
  (ask "You walk toward the front of a train at 1.5 m/s. The train moves at 20 m/s. How fast do you move relative to the ground?")
  (answer 21.5) (within 0.001) (unit "m/s") (from "20 + 1.5")
  (wrong-if 1.5 "1.5 m/s is your velocity relative to the train. The train carries you along at 20 m/s as well.")
  (wrong-if 18.5 "You walk the same way the train moves, so the velocities add.")
  (hint "Both velocities point the same way."))
```

---

## Headwinds and tailwinds

A plane flies through the air. If the air itself moves, the plane's velocity over the ground is its velocity through the air plus the wind's.

A plane flying at 240 km/h through the air:

- with a 40 km/h tailwind (wind from behind): 240 + 40 = 280 km/h over the ground;
- into a 40 km/h headwind: 240 + (-40) = 200 km/h.

```check
(number
  (ask "A bird flies at 12 m/s through the air into a 5 m/s headwind. What is its speed over the ground?")
  (answer 7) (unit "m/s") (from "12 + (-5)")
  (wrong-if 17 "A headwind blows against the bird, so its velocity is negative: 12 + (-5).")
  (hint "Into the wind: subtract."))
```

---

## Crossing a river

A boat heads straight across a river 60 m wide. The water carries it downstream at the same time, so it lands downstream of where it aimed. Move the sliders.

```figure
(define vb (slider 'vb 2 5 4 "Boat (m/s)" 0.5))
(define vr (slider 'vr 0 3 3 "River (m/s)" 0.5))
(define t (/ 60 vb))
(define drift (* vr t))
(line 20 60 310 60 'ink 2)
(line 20 180 310 180 'ink 2)
(text 300 52 "far bank" 'right 'small)
(path (list 40 180 (+ 40 (* 2 drift)) 60) 'ink 2)
(circle 40 180 4 'ink)
(circle (+ 40 (* 2 drift)) 60 4 'warm)
(mc-vec 160 214 (* 6 vr) 0 'ink)
(text 20 218 "river flows" 'small)
(rect 160 22 150 20 'paper)
(text 164 36 (string-append "lands " (fmt drift 0) " m downstream") 'small 'bold)
(caption "River 60 m wide, to scale")
```

```check
(number
  (ask "Set the boat to 4 m/s and the river to 3 m/s. How long does the crossing take?")
  (answer 15) (unit "s") (from "60 / 4")
  (wrong-if 12 "That uses 5 m/s, the boat's speed over the ground. Only the part of the velocity across the river, 4 m/s, carries it the 60 m across.")
  (wrong-if 20 "That uses the river's 3 m/s. The river carries the boat downstream, not across.")
  (hint "Across the river, the boat moves at 4 m/s for 60 m."))
```

---

## The velocity over the ground

The boat's velocity relative to the water (across) and the river's velocity (downstream) are at a right angle. So its velocity over the ground has magnitude

$$ v = sqrt(4^2 + 3^2) = 5 $$

in m/s, pointing across and downstream. The time to cross depends only on the velocity across: a faster river makes the boat land farther downstream but does not slow the crossing.

```check
(choice
  (ask "The river flows faster, but the boat still heads straight across at 4 m/s. What happens?")
  (right "It crosses in the same time but lands farther downstream")
  (wrong "It takes longer to cross"
    "The river's velocity points downstream, at a right angle to the crossing. It adds nothing across, so the time stays 60 m / 4 m/s.")
  (wrong "It crosses faster, because its speed over the ground is larger"
    "Its speed over the ground is larger, but the extra part points downstream, not across.")
  (hint "Does the river's velocity have any part across the river?"))
```

---

## A worked example

```example
(example
  (problem "A plane flies north at 250 km/h through the air. A wind blows east at 50 km/h. What is the plane's speed over the ground?")
  (step "The two velocities are at a right angle: north and east.")
  (step "v = sqrt(250^2 + 50^2) = sqrt(62,500 + 2,500) = sqrt(65,000).")
  (step "v = 255 km/h, to the nearest km/h.")
  (answer "About 255 km/h, a little east of north"))
```

Now you finish one.

```check
(number
  (ask "A swimmer swims across a river at 1.2 m/s relative to the water. The river flows at 0.5 m/s. What is her speed relative to the bank?")
  (answer 1.3) (within 0.001) (unit "m/s") (from "sqrt(1.2^2 + 0.5^2)")
  (wrong-if 1.7 "Her velocity and the river's are at a right angle, so they do not simply add.")
  (hint "sqrt(1.2² + 0.5²)."))
```

---

## Practice

```check
(number
  (ask "A river 90 m wide flows at 2 m/s. A boat heads straight across at 3 m/s. How far downstream does it land?")
  (answer 60) (unit "m") (from "2 * (90 / 3)")
  (wrong-if 30 "30 s is the crossing time. In that time the river carries the boat 2 m/s x 30 s.")
  (wrong-if 135 "That uses 90 / 2 for the time. The time comes from the velocity across, 3 m/s.")
  (hint "First find the time: 90 m / 3 m/s.")
  (hint "Then the drift: 2 m/s x 30 s."))
```

```check
(number
  (ask "A plane's speed over the ground is 520 km/h with a tailwind of 60 km/h. What is its speed through the air?")
  (answer 460) (unit "km/h") (from "520 - 60")
  (wrong-if 580 "The tailwind already adds 60 km/h to the ground speed. The speed through the air is 60 km/h less.")
  (hint "Ground speed = air speed + wind."))
```

```check
(choice
  (ask "A passenger on a ship walks toward the back at 2 m/s, while the ship moves forward at 8 m/s. What is the passenger's velocity relative to the water?")
  (right "6 m/s forward")
  (wrong "10 m/s forward"
    "She walks toward the back, against the ship's motion, so her velocity relative to the ship is -2 m/s. 8 + (-2) = 6.")
  (wrong "2 m/s backward"
    "That is her velocity relative to the ship. The ship carries her forward at 8 m/s too.")
  (hint "Forward is +, so walking back is -2 m/s."))
```

---

So a velocity is always relative to something, and a velocity relative to the ground is the sum of the velocity relative to the water or air and the velocity of the water or air itself.
