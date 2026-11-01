# Uniform circular motion

```lesson
(objective "Describe motion in a circle at a steady speed, and find its period, frequency and speed.")
(standards "HSA-CED.A.4")
(minutes 25)
(keywords "uniform circular motion" "period (of motion)" "frequency" "hertz")
```

You can describe anything that goes round and round at a steady speed by how long one turn takes and how fast it goes.

An object that moves around a circle at a steady speed is in **uniform circular motion**: a point on a turning wheel, a rider on a carousel, a stone whirled on a string.

The time for one full turn is the **period**, $T$, in seconds. Move the slider and watch the dot go around.

```figure
(define T (slider 'T 1 6 4 "Period T (s)" 0.5))
(still
  (ring 120 120 80 'ink 1.5)
  (circle 120 120 3 'ink)
  (line 120 120 200 120 'grey 1)
  (label 160 112 "r = 2 m")
  (caption "Real time: radius 2 m"))
(define ang (* 360 (/ (mc-mod (seconds) T) T)))
(mc-round 120 120 80 ang 0 0 'warm)
(text 214 60 (string-append "T = " (fmt T 1) " s") 'small 'bold)
(text 214 84 (string-append "f = " (fmt (/ 1 T) 2) " Hz") 'small)
(text 214 108 (string-append "v = " (fmt (/ (* 2 pi 2) T) 2) " m/s") 'small)
```

```check
(choice
  (ask "Set the period to 2 s. How long does the dot take to go once around?")
  (right "2 s")
  (wrong "0.5 s"
    "0.5 is the number of turns per second. The period is the time for one turn: 2 s.")
  (wrong "It depends on the radius"
    "The period is just the time for one turn. A bigger circle at the same period means a faster speed, not a different period.")
  (hint "The period is the time for one full turn."))
```

---

## Frequency

The **frequency**, $f$, is the number of turns each second. It is the period turned upside down:

$$ f = 1 / T $$

Its unit is turns per second, called the **hertz** (Hz): 1 Hz is one turn per second. A wheel with a period of 0.25 s turns at $f = 1 / 0.25 = 4$ Hz.

Frequencies are also given in revolutions per minute (rpm): divide rpm by 60 to get hertz.

```check
(number
  (ask "A fan blade turns once every 0.05 s. What is its frequency?")
  (answer 20) (unit "Hz") (from "1 / 0.05")
  (wrong-if 0.05 "0.05 s is the period, the time for one turn. The frequency is how many turns fit in one second: 1 / 0.05.")
  (hint "f = 1 / T."))
```

```check
(number
  (ask "A washing machine drum spins at 1,200 rpm. What is its frequency in hertz?")
  (answer 20) (unit "Hz") (from "1200 / 60")
  (wrong-if 72000 "That multiplies by 60. There are 60 seconds in a minute, so there are fewer turns per second than per minute.")
  (hint "Divide by 60 seconds per minute."))
```

---

## Speed around the circle

In one period, the object goes once around: a distance equal to the circle's circumference, $2 pi r$. So its speed is

$$ v = (2 pi r) / T $$

A rider 5 m from the center of a carousel that turns once every 10 s moves at $v = (2 pi * 5)/10$, about 3.1 m/s.

```check
(number
  (ask "A point on a wheel of radius 0.3 m goes around once every 0.5 s. What is its speed? Round to the nearest hundredth.")
  (answer 3.77) (within 0.006) (unit "m/s") (from "2 * pi * 0.3 / 0.5")
  (wrong-if 1.88 "That uses pi r, half the circumference. One turn is 2 pi r.")
  (wrong-if 0.6 "That is r / T. The distance in one turn is the circumference, 2 pi r.")
  (hint "v = 2 pi r / T."))
```

---

## A worked example

```example
(example
  (problem "A ferris wheel of radius 20 m turns once every 40 s. Find its frequency and a rider's speed.")
  (step "Frequency: f = 1 / T = 1 / 40 = 0.025 Hz.")
  (step "Distance per turn: 2 pi r = 2 x 3.14 x 20 = 125.7 m.")
  (step "Speed: v = 125.7 m / 40 s = 3.1 m/s.")
  (answer "f = 0.025 Hz; v = 3.1 m/s, about 7 mph"))
```

Now you finish one.

```check
(number
  (ask "A child on a merry-go-round sits 2 m from the center. It turns at 0.25 Hz. What is the child's speed? Round to the nearest hundredth.")
  (answer 3.14) (within 0.006) (unit "m/s") (from "2 * pi * 2 * 0.25")
  (wrong-if 50.27 "That divides by 0.25, treating it as the period. 0.25 Hz is the frequency, so T = 1 / 0.25 = 4 s.")
  (hint "First T = 1 / f = 4 s.")
  (hint "v = 2 pi x 2 / 4."))
```

---

## Practice

```check
(number
  (ask "A wheel turns 30 times in 6 s. What is its period?")
  (answer 0.2) (within 0.001) (unit "s") (from "6 / 30")
  (wrong-if 5 "5 is the frequency in Hz, 30 / 6. The period is the time for one turn: 6 / 30.")
  (hint "Time divided by the number of turns."))
```

```check
(choice
  (ask "Two children ride a carousel, one near the edge and one near the center. Which is true?")
  (right "They have the same period, but the child near the edge moves faster")
  (wrong "They have the same speed"
    "Both go around once in the same time, but the outer child covers a larger circle, so goes faster.")
  (wrong "The child near the center has the shorter period"
    "The carousel turns as one piece, so every rider takes the same time for a turn.")
  (hint "Who covers more distance in one turn?"))
```

```check
(choice
  (ask "In uniform circular motion, which stays the same?")
  (right "The speed")
  (wrong "The velocity"
    "Velocity includes direction, and the direction keeps changing around the circle. Only the speed stays the same.")
  (wrong "Both the speed and the velocity"
    "The speed is steady, but the direction of motion turns all the time, so the velocity changes.")
  (hint "Does the direction of motion change?"))
```

---

So uniform circular motion is motion around a circle at a steady speed, described by its period T, its frequency f = 1/T in hertz, and its speed v = 2 pi r / T.
