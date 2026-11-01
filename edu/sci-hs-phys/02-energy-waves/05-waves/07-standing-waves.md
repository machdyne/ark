# Standing waves

```lesson
(objective "Explain a standing wave on a string, and find the wavelengths that fit between its fixed ends.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "standing wave" "node" "antinode")
```

You learn how a string held at both ends can carry a wave that seems
to stand still, and which wavelengths it allows.

Shake a string tied at both ends. Waves run to each end, reflect, and
come back, so two waves of the same frequency travel in opposite
directions and overlap. At just the right frequencies, their
superposition makes a pattern that does not travel: a
**standing wave**. The string swings up and down in loops.

In a standing wave, some points never move at all: these are
**nodes**. Halfway between nodes, the string swings the most: these
are **antinodes**. Nodes are half a wavelength apart.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.10, Superposition and Interference (standing waves)")
```

```check
(choice
  (ask "Where on a standing wave does the string not move at all?")
  (right "At the nodes")
  (wrong "At the antinodes"
    "Antinodes are where the string swings the most. Nodes, between them, stay still.")
  (wrong "Nowhere: every point of a wave moves"
    "In a standing wave the two traveling waves cancel at the nodes at every moment, so those points stay still.")
  (hint "Node points are the still points."))
```

---

## The patterns that fit

The two ends are tied, so they must be nodes. A standing wave fits
only if a whole number $n$ of loops, each half a wavelength long, fits
in the length $L$:

$$ L = n lambda / 2 $$

$$ lambda_n = 2L / n $$

Choose the number of loops. This string is 1.0 m long and its waves
travel at 2.0 m/s.

```figure
(define n (slider 'n 1 5 1 "Loops" 1))
(define k (/ (* n pi) 260))
(define fq n)
(still
  (circle 30 120 4 'ink)
  (circle 290 120 4 'ink)
  (for-range 1 n (lambda (j) (dot (+ 30 (/ (* 260 j) n)) 120 'warm)))
  (text 160 210 (string-append "wavelength = " (fmt (/ 2 n) 2) " m,  f = " (fmt fq 0) " Hz") 'centre 'small 'bold))
(define c (cos (* 2 pi fq (/ (seconds) 4))))
(path (let loop ((i 52) (pts '()))
        (if (< i 0) pts
            (let ((x (+ 30 (* 5 i))))
              (loop (- i 1) (cons x (cons (- 120 (* 50 c (sin (* k (- x 30))))) pts))))))
      'ink 2)
(text 160 30 "dots: nodes" 'centre 'small)
(caption "Slowed to 1/4 speed.")
```

```check
(number
  (ask "On this 1.0 m string, what is the wavelength of the pattern with 4 loops, in meters?")
  (answer 0.5) (unit "m") (from "2 * 1.0 / 4")
  (wrong-if 0.25 "That is the length of one loop, half a wavelength. A whole wavelength is two loops.")
  (wrong-if 4 "That is 4 / 1.0. lambda = 2L / n = 2 / 4.")
  (hint "Each loop is half a wavelength."))
```

---

## The frequencies that fit

The wave speed on the string is set by the string, so each allowed
wavelength has its own frequency, $f = v / lambda$:

$$ f_n = n v / (2L) $$

The string vibrates in a standing wave only at these frequencies. In
the figure, $v = 2.0$ m/s and $L = 1.0$ m, so $f_n = n$ Hz.

```check
(number
  (ask "A string 0.50 m long carries waves at 100 m/s. What is the frequency of the 1-loop pattern, in Hz?")
  (answer 100) (unit "Hz") (from "1 * 100 / (2 * 0.50)")
  (wrong-if 200 "That uses lambda = L. For one loop, the string holds half a wavelength, so lambda = 2L = 1.0 m.")
  (wrong-if 50 "That uses lambda = 4L. One loop is half a wavelength: lambda = 2L.")
  (hint "lambda = 2L = 1.0 m.")
  (hint "f = v / lambda."))
```

---

## Worked example

```example
(example
  (problem "A rope 3.0 m long is tied at both ends and shaken into a pattern of 3 loops. How far apart are the nodes, and what is the wavelength?")
  (step "3 loops share 3.0 m, so each loop is 1.0 m: the nodes are 1.0 m apart.")
  (step "A loop is half a wavelength, so lambda = 2.0 m.")
  (answer "Nodes 1.0 m apart; wavelength 2.0 m"))
```

```example
(example
  (problem "On that rope, waves travel at 4.0 m/s. At what frequency must it be shaken for the 3-loop pattern?")
  (step "f = v / lambda, with lambda = 2.0 m.")
  (step (number (ask "f, in Hz?") (answer 2) (unit "Hz") (from "4.0 / 2.0")
    (wrong-if 8 "That is v times lambda. f = v / lambda.")
    (hint "4.0 / 2.0.")))
  (answer "2.0 Hz"))
```

---

## Practice

```check
(number
  (ask "A 1.2 m string tied at both ends vibrates with 3 loops. What is the wavelength, in meters?")
  (answer 0.8) (unit "m") (from "2 * 1.2 / 3")
  (wrong-if 0.4 "That is one loop, half a wavelength.")
  (wrong-if 3.6 "That is 3 times the length. lambda = 2L / n.")
  (hint "lambda = 2L / n."))
```

```check
(choice
  (ask "A string tied at both ends shows a standing wave with 2 loops. How many nodes does it have, counting the ends?")
  (right "3" (true "2 + 1 = 3"))
  (wrong "2"
    "Each end is a node, and there is one more in the middle, between the two loops.")
  (wrong "4"
    "Two loops need only one node between them, plus the two ends.")
  (hint "Count the ends too, and the points between loops."))
```

So: a standing wave forms when waves reflect back and forth; with both
ends fixed, $lambda_n = 2L / n$, and nodes are half a wavelength apart.
