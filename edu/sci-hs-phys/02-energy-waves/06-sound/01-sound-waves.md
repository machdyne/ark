# Sound waves

```lesson
(objective "Explain sound as a longitudinal wave of compressions and rarefactions that needs a medium.")
(standards "HS-PS4-1")
(minutes 20)
(keywords "sound wave" "compression (of a wave)" "rarefaction")
```

You learn what sound is: a longitudinal wave in air, water or solids.

Every sound starts with something that vibrates: a guitar string, a
loudspeaker's cone, the vocal folds in your throat. As a speaker's cone
moves forward, it pushes the air in front of it closer together; as it
moves back, it leaves the air more spread out. These pushes and pulls
pass on from layer to layer of air. A longitudinal wave of this kind,
carrying sound, is a **sound wave**.

```sources
(source "OpenStax, College Physics 2e (2022), section 17.1, Sound")
```

```check
(choice
  (ask "A loudspeaker plays a steady note. How does the air between it and your ear move?")
  (right "Each layer of air moves back and forth, toward you and away, about its place")
  (wrong "The air flows steadily from the speaker to your ear"
    "Sound is a wave: it carries energy, not air. Each layer of air only moves back and forth a tiny distance.")
  (wrong "The air moves up and down, across the path of the sound"
    "That would be a transverse wave. In sound, the air moves along the direction the sound travels.")
  (hint "Sound is longitudinal."))
```

---

## Compressions and rarefactions

Where the air is squeezed together, its pressure is a little higher
than usual: that region is a **compression**. Where it is spread out,
its pressure is a little lower: that is a **rarefaction**. A sound wave
is a train of compressions and rarefactions moving away from the
source.

```figure
(define t (* 0.5 (seconds)))
(define (d x) (* 9 (sin (* 2 pi (- (/ (- x 40) 80) t)))))
(still
  (graph 40 150 270 60 0 270 -12 12)
  (line (gx 0) (gy 0) (gx 270) (gy 0) 'grey 1)
  (text 44 146 "pressure" 'tiny)
  (wv-wall 20 40 130))
(rect 22 40 (+ 10 (* 9 (sin (* -2 pi t)))) 90 'grey)
(for-range 0 22
  (lambda (i)
    (let ((x (+ 50 (* 12 i))))
      (line (+ x (d x)) 45 (+ x (d x)) 125 'ink 1.2))))
(graph 40 150 270 60 0 270 -12 12)
(path (let loop ((i 27) (pts '()))
        (if (< i 0) pts
            (let ((u (* 10 i)))
              (loop (- i 1) (cons (gx u) (cons (gy (* -9 (cos (* 2 pi (- (/ u 80) t))))) pts))))))
      'ink 1.5)
(caption "Greatly slowed: real sound moves about 343 m/s.")
```

The lines are layers of air, pushed by the speaker cone on the left.
Where they crowd together the pressure graph is high; where they are
spread out it is low.

```check
(choice
  (ask "In a sound wave, what is a rarefaction?")
  (right "A region where the air is spread out and its pressure is lower")
  (wrong "A region where the air is squeezed together"
    "That is a compression. A rarefaction is the opposite: the particles are farther apart than usual.")
  (wrong "A place with no air at all"
    "The air is only a little thinner than usual there. Sound changes the pressure by a tiny amount.")
  (hint "Rare means thin, spread out."))
```

---

## Sound needs a medium

Sound is a mechanical wave, so it travels only through matter: air,
water, wood, steel. In empty space there is nothing to squeeze and
stretch. A ringing bell in a glass jar grows quieter and quieter as the
air is pumped out of the jar, though you can still see the bell's
hammer striking.

```sources
(source "OpenStax, College Physics 2e (2022), section 17.1, Sound, and section 17.2, Speed of Sound, Frequency, and Wavelength")
```

```check
(choice
  (ask "Why can astronauts on the Moon not talk to each other through the open air, without radios?")
  (right "There is almost no air, so there is no medium to carry sound waves")
  (wrong "It is too cold for sound to travel"
    "Cold air carries sound well, only a little more slowly. The problem on the Moon is that there is almost no air at all.")
  (wrong "Sound is too slow to cross the distance"
    "Sound in air would cross a few meters in a hundredth of a second. With no air, it cannot travel at all.")
  (hint "What does a sound wave travel through?"))
```

---

## Wavelength of sound

The distance from one compression to the next is the wavelength. The
speed of sound in air at 20 °C is 343 m/s (about 1,125 ft/s), so
$lambda = v / f$.

```example
(example
  (problem "A tuning fork vibrates at 440 Hz. How far apart are the compressions in the air at 20 °C?")
  (step "Compression to compression is one wavelength.")
  (step "lambda = v / f = 343 / 440 = 0.78 m.")
  (answer "about 0.78 m"))
```

```example
(example
  (problem "A low note of 110 Hz. How far apart are its compressions?")
  (step "lambda = v / f = 343 / 110.")
  (step (number (ask "lambda, in meters, to the nearest tenth?") (answer 3.1) (within 0.05) (unit "m") (from "343 / 110")
    (wrong-if 37730 "That is v times f. lambda = v / f.")
    (hint "343 / 110.")))
  (answer "about 3.1 m"))
```

---

## Practice

```check
(number
  (ask "A compression and the next rarefaction of a sound in air are 0.50 m apart. What is the wavelength, in meters?")
  (answer 1) (unit "m") (from "2 * 0.50")
  (wrong-if 0.5 "A compression and the next rarefaction are half a wavelength apart, like a crest and a trough.")
  (wrong-if 0.25 "The wavelength is longer than the gap between a compression and a rarefaction, not shorter.")
  (hint "Compression to rarefaction is half a cycle."))
```

```check
(choice
  (ask "What vibrates to make the sound of a drum?")
  (right "The drum's skin, which pushes and pulls on the air")
  (wrong "The air inside the drum, all by itself"
    "The air carries the sound, but it starts with the struck skin moving back and forth.")
  (wrong "Nothing: the stick makes the sound when it hits"
    "Hitting the skin starts it vibrating. The vibrating skin squeezes and stretches the air.")
  (hint "Every sound starts with something that vibrates."))
```

So: sound is a longitudinal wave of compressions and rarefactions, and
it needs a medium to travel through.
