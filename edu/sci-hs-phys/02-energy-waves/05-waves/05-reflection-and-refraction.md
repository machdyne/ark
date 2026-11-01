# Reflection and refraction

```lesson
(objective "Explain reflection at a boundary, and refraction as a change of speed and wavelength in a new medium at the same frequency.")
(standards "HS-PS4-1")
(minutes 25)
(keywords "reflection (of a wave)" "refraction")
```

You learn what a wave does when it reaches the end of its medium, or
passes into a new one.

When a wave reaches a boundary, where its medium ends or changes, some
or all of it bounces back. That is **reflection**. A pulse sent along a
rope tied to a wall comes back upside down: the wall cannot move, so
it pulls the rope the other way.

```figure
(define (g u) (* 30 (exp (- (* (/ u 22) (/ u 22))))))
(define t (modulo (seconds) 4))
(define s (- (* 120 t) 100))
(still (wv-wall 290 60 180))
(path (let loop ((i 50) (pts '()))
        (if (< i 0) pts
            (let ((x (+ 20 (* 5.4 i))))
              (loop (- i 1) (cons x (cons (- 120 (- (g (- x s)) (g (- 580 x s)))) pts))))))
      'ink 2)
(caption "Real time; the pulse runs 1.2 m/s on a 2.7 m rope.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves, and section 16.10, Superposition and Interference")
```

```check
(choice
  (ask "A pulse on a rope reaches the end, where the rope is tied firmly to a wall. What comes back?")
  (right "A pulse that is upside down")
  (wrong "Nothing: the wall absorbs the pulse"
    "A firm wall cannot move, so it cannot take in the pulse's energy. The pulse is reflected.")
  (wrong "A pulse the same way up"
    "As the pulse pulls the wall up, the wall pulls the rope down, so the reflected pulse is flipped.")
  (hint "Watch the figure."))
```

---

## Into a new medium

At a boundary between two media, such as a light rope tied to a heavy
one, part of the wave reflects and part goes on into the new medium.

The part that goes on keeps its frequency: each crest that reaches the
boundary makes one crest on the other side. But the new medium sets a
new speed, so by $v = f lambda$ the wavelength changes too. Here the
right side is a medium where the wave moves at half the speed.

```figure
(define ph (* 0.5 (seconds)))
(still
  (line 160 40 160 190 'grey 1)
  (text 90 40 "fast medium" 'centre 'small)
  (text 240 40 "slow medium" 'centre 'small))
(wv-wave 20 160 115 28 120 ph 26 'ink 2)
(wv-wave 160 300 115 19 60 (- ph (/ 140 120)) 26 'ink 2)
(text 90 180 "wavelength 1.2 m" 'centre 'small)
(text 240 180 "wavelength 0.6 m" 'centre 'small)
(text 160 205 "Real time, 0.5 Hz on both sides." 'centre 'small)
(caption "The reflected part is not drawn.")
```

```check
(choice
  (ask "A wave passes into a medium where it moves more slowly. What happens to its frequency and its wavelength?")
  (right "The frequency stays the same, and the wavelength gets shorter")
  (wrong "The frequency drops, and the wavelength stays the same"
    "The crests reach the boundary at a fixed rate, and each makes one crest beyond it, so the frequency cannot change. The speed falls, so lambda = v / f gets shorter.")
  (wrong "Both stay the same"
    "If both stayed the same, v = f lambda would stay the same. The speed changed, so the wavelength must change.")
  (hint "Count the crests: does the number per second change at the boundary?"))
```

---

## Bending

When a wave meets the boundary at a slant, one end of each crest enters
the slow medium first and slows down, while the rest is still fast. The
crest swings round, and the wave changes direction. This bending of a
wave as it passes into a medium where its speed changes is
**refraction**.

The lines are crests seen from above, as on water that gets shallower
(waves on water move more slowly where it is shallow). Change the speed
in the lower medium.

```figure
(define r (slider 'r 0.4 1 0.6 "Speed ratio" 0.1))
(define a1 (deg->rad 40))
(define a2 (asin (* r (sin a1))))
(define sp 46)
(line 10 120 310 120 'ink 1.5)
(text 14 32 "deep: fast" 'small)
(text 14 214 "shallow: slower" 'small)
(for-range -3 7
  (lambda (k)
    (let* ((x (+ 70 (* k sp)))
           (l1 (min (/ 100 (sin a1)) (/ (- 310 x) (cos a1))))
           (l2 (min (/ 100 (sin a2)) (/ (- x 10) (cos a2)))))
      (if (and (> x 10) (< x 310))
          (begin
            (if (> l1 0) (line x 120 (+ x (* l1 (cos a1))) (- 120 (* l1 (sin a1))) 'ink 1.5))
            (if (> l2 0) (line x 120 (- x (* l2 (cos a2))) (+ 120 (* l2 (sin a2))) 'cool 1.5)))))))
(wv-dir 150 70 40 (- -90 -40) 'warm 2)
(wv-dir 140 170 40 (+ -90 (rad->deg a2)) 'warm 2)
(caption (string-append "Lower speed / upper speed = " (fmt r 1)))
```

```check
(choice
  (ask "Set the speed ratio to 1.0, then 0.4. What happens?")
  (right "At 1.0 the wave goes straight on; at 0.4 its crests crowd together and it turns more")
  (wrong "It bends the same amount at every speed ratio"
    "Bending comes from the change in speed. With no change, ratio 1.0, there is no bending at all.")
  (wrong "At 0.4 the crests spread farther apart"
    "Slower means a shorter wavelength at the same frequency, so the crests come closer together.")
  (hint "Watch the spacing of the lower crests and the lower arrow."))
```

---

## Practice

```check
(number
  (ask "A 4.0 Hz wave on a light rope moves at 6.0 m/s. It passes into a heavy rope, where it moves at 2.0 m/s. What is its wavelength in the heavy rope, in meters?")
  (answer 0.5) (unit "m") (from "2.0 / 4.0")
  (wrong-if 1.5 "1.5 m is the wavelength in the light rope. In the heavy rope the speed is 2.0 m/s, and the frequency is still 4.0 Hz.")
  (wrong-if 8 "That is f times v. lambda = v / f = 2.0 / 4.0.")
  (hint "The frequency stays 4.0 Hz across the boundary.")
  (hint "lambda = 2.0 / 4.0."))
```

```check
(choice
  (ask "Ocean waves come toward a beach at a slant. As the water gets shallower they slow down. What happens to their direction?")
  (right "They turn to come in more nearly straight at the beach")
  (wrong "They keep their direction, since the frequency does not change"
    "The frequency stays the same, but the speed changes. The end of each crest in shallower water slows first, so the crest swings round.")
  (wrong "They turn to run along the beach"
    "Slowing turns the crests the other way: the part in shallow water lags, swinging the wave to face the shore.")
  (hint "Look at the figure: which way does the slower side turn the wave?"))
```

So: at a boundary a wave can reflect, and passing into a new medium it
keeps its frequency but changes its speed and wavelength, and at a
slant it bends: refraction.
