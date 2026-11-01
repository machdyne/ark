# Weightlessness in orbit

```lesson
(objective "Explain why astronauts in orbit seem weightless although gravity still pulls on them.")
(standards "HS-PS2-4")
(minutes 20)
(keywords "apparent weightlessness")
```

You can explain why astronauts float in the space station, even though Earth's gravity there is almost as strong as on the ground.

The International Space Station orbits about 400 km above Earth's surface, 6,770 km from Earth's center. By the inverse-square law, gravity there is $(6370/6770)^2$, about 0.89, of its value at the surface: about 8.7 m/s².

```sources
(source "NASA, International Space Station facts and figures: altitude about 400 km")
```

```check
(number
  (ask "A 70 kg astronaut is on the space station, where g is about 8.7 N/kg. How hard does Earth pull on her? Round to the nearest newton.")
  (answer 609) (within 0.6) (unit "N") (from "70 * 8.7")
  (wrong-if 0 "Gravity does not stop in space. At 400 km up it is still about 89% as strong as on the ground.")
  (wrong-if 686 "That is her weight on the ground, with g = 9.8. At the station's height g is about 8.7 N/kg.")
  (hint "W = m g, with g = 8.7 N/kg."))
```

---

## Falling together

Astronauts float because they and their station are both in free fall: both fall around Earth together, with the same acceleration, $g$ at that height. Nothing in the station needs to push on them to keep them moving with it.

Remember the falling elevator: a scale falling with you does not push on you, so it reads 0. In orbit, the same is true all the time. This is **apparent weightlessness**: an apparent weight of 0, while gravity still pulls.

```figure
(still
  (mc-planet 160 122 80 "Earth")
  (ring 160 122 85 'grey 1)
  (text 10 16 "Both pulled toward Earth's center" 'small)
  (caption "Sped up about 900 times; orbit height to scale"))
(define a (* 60 (seconds)))
(define d (deg->rad a))
(define x (+ 160 (* 85 (cos d))))
(define y (- 122 (* 85 (sin d))))
(rect (- x 7) (- y 7) 14 14 'paper)
(frame (- x 7) (- y 7) 14 14 'ink 1.5)
(circle x y 2.5 'ink)
(mc-vec x y 30 (+ a 180) 'ink)
```

```check
(choice
  (ask "Why does an astronaut float inside the space station?")
  (right "She and the station fall around Earth together, so the floor does not push on her")
  (wrong "There is no gravity in space"
    "Gravity at the station is about 89% as strong as on the ground. It is what keeps the station in orbit.")
  (wrong "The station is above the air, and the air is what holds things down"
    "The air does not hold things down; gravity does. Gravity reaches far above the air.")
  (hint "What does a scale read in a falling elevator?"))
```

---

## Gravity is doing a job

Without gravity, the station would not stay in orbit: by Newton's first law it would move off in a straight line. Gravity is exactly the centripetal force that bends its path, and the astronauts' paths, into a circle around Earth.

```check
(choice
  (ask "If Earth's gravity at the station's height suddenly vanished, what would happen to the station and the astronauts?")
  (right "They would all move off together in a straight line, still floating")
  (wrong "They would fall to Earth"
    "With no gravity, nothing would pull them toward Earth. They would keep their velocity in a straight line.")
  (wrong "The astronauts would fall to the floor"
    "With no force at all, nothing would push them toward the floor. They would keep floating while everything moved in a straight line.")
  (hint "Newton's first law: no net force, no change in velocity."))
```

---

## A worked example

```example
(example
  (problem "An astronaut stands on a scale on the space station. What does it read, and what is her real weight? Her mass is 60 kg, and g there is 8.7 N/kg.")
  (step "Scale and astronaut both fall with acceleration g, so F_N = m (g + a) with a = -g.")
  (step "The scale reads F_N = 0.")
  (step "Gravity still pulls: W = 60 x 8.7 = 522 N.")
  (answer "The scale reads 0; Earth pulls on her with 522 N"))
```

Now you finish one.

```check
(number
  (ask "A 2 kg tool floats in the station, where g is about 8.7 N/kg. What is the gravitational force on it? Round to the nearest tenth.")
  (answer 17.4) (within 0.06) (unit "N") (from "2 * 8.7")
  (wrong-if 0 "The tool floats only because it falls along with the station. Earth still pulls on it with m g.")
  (hint "W = m g."))
```

---

## Practice

```check
(choice
  (ask "Could you feel weightless on Earth?")
  (right "Yes, for a moment, in free fall, as at the top of a drop ride or in an airplane flying the arc of a thrown ball")
  (wrong "No: weightlessness needs space"
    "Apparent weightlessness happens whenever you and your surroundings fall freely together. Planes flying such arcs give astronauts training this way for about 20 to 25 seconds at a time.")
  (hint "When does a scale read 0?"))
```

```sources
(source "NASA, Reduced Gravity Research Program: parabolic flights give about 20 to 25 seconds of weightlessness on each arc")
```

```check
(number
  (ask "A satellite orbits where g is 1/4 of its value at Earth's surface. How far is it from Earth's center, in Earth radii?")
  (answer 2) (unit "Earth radii") (from "sqrt(4)")
  (wrong-if 4 "g falls as 1 over the distance squared. 1/4 of the field needs twice the distance, not 4 times.")
  (hint "1 / r² = 1/4."))
```

```check
(choice
  (ask "Which word best describes the space station's motion?")
  (right "Falling: it falls toward Earth all the time, and keeps missing it")
  (wrong "Floating: it rests on nothing, so nothing acts on it"
    "Earth's gravity acts on it all the time. With no force it would fly off in a straight line.")
  (wrong "Hovering: its engines hold it up"
    "No engine holds the station up. Gravity and its speed keep it in orbit; small rocket burns only correct its path now and then.")
  (hint "What does gravity do to it?"))
```

---

So astronauts in orbit feel weightless not because gravity is gone, but because they and their station fall freely around Earth together: apparent weightlessness.
