# Musical notes

```lesson
(objective "Find the fundamental frequency and harmonics of a string from its standing waves.")
(standards "HS-PS4-1" "HSA-CED.A.4")
(minutes 25)
(keywords "fundamental frequency" "harmonic")
```

You learn which frequencies a guitar string plays, and why a note has
more than one.

A guitar string is held at both ends, so it vibrates in standing
waves: 1 loop, 2 loops, 3 loops and so on, with $lambda_n = 2L / n$.
The waves on the string travel at a speed $v$ set by its tension and
its mass, so the allowed frequencies are

$$ f_n = n v / (2L) $$

The lowest, with one loop, is the **fundamental frequency**,
$f_1 = v / (2L)$. It sets the note you hear. The frequencies $f_n =
n f_1$ are the string's **harmonics**: $f_1$ is the first harmonic,
$2 f_1$ the second, and so on.

```sources
(source "OpenStax, College Physics 2e (2022), section 16.10, Superposition and Interference, and section 17.5, Sound Interference and Resonance: Standing Waves in Air Columns")
```

```check
(number
  (ask "A string 0.50 m long carries waves at 200 m/s. What is its fundamental frequency, in Hz?")
  (answer 200) (unit "Hz") (from "200 / (2 * 0.50)")
  (wrong-if 400 "That uses lambda = L. The fundamental has one loop, half a wavelength, so lambda = 2L = 1.0 m.")
  (wrong-if 100 "That uses lambda = 4L. For one loop, lambda = 2L.")
  (hint "f_1 = v / (2L)."))
```

---

## The harmonics of a guitar string

This string is 0.65 m long, tuned so its fundamental is 110 Hz, the A
two octaves below the A of 440 Hz. Choose a harmonic.

```figure
(define n (slider 'n 1 6 1 "Harmonic" 1))
(define k (/ (* n pi) 260))
(still
  (circle 30 110 4 'ink)
  (circle 290 110 4 'ink)
  (text 160 200 (string-append "harmonic " (fmt n 0) ": " (fmt (* 110 n) 0) " Hz, wavelength " (fmt (/ 1.3 n) 2) " m") 'centre 'small 'bold))
(define c (cos (* 2 pi (/ (* 110 n) 400) (seconds))))
(path (let loop ((i 52) (pts '()))
        (if (< i 0) pts
            (let ((x (+ 30 (* 5 i))))
              (loop (- i 1) (cons x (cons (- 110 (* 45 c (sin (* k (- x 30))))) pts))))))
      'ink 2)
(caption "Slowed down 400 times.")
```

A plucked string vibrates in many harmonics at once. The mix of their
strengths is what makes a guitar sound different from a piano playing
the same note.

```check
(number
  (ask "What is the frequency of this string's third harmonic, in Hz?")
  (answer 330) (unit "Hz") (from "3 * 110")
  (wrong-if 36.7 "Harmonics are whole-number multiples of the fundamental, not fractions of it: 3 * 110.")
  (wrong-if 113 "Harmonics are multiples, not steps of 1 Hz.")
  (hint "f_3 = 3 f_1."))
```

---

## Playing different notes

To play a higher note on the same string, a guitarist presses it
against a fret. That shortens the part that vibrates, so $L$ falls and
$f_1 = v / (2L)$ rises. Tightening the string raises $v$, and so the
pitch too. A note twice the frequency of another is an octave higher.

```check
(choice
  (ask "A guitarist presses a string at its middle, so only half of it vibrates. What happens to its fundamental frequency?")
  (right "It doubles: the note goes up an octave" (true "1 / (2 * 0.5) = 2 * (1 / (2 * 1))"))
  (wrong "It halves"
    "f_1 = v / (2L). A shorter string has a shorter wavelength at the same speed, so a higher frequency.")
  (wrong "It stays the same, since the tension is the same"
    "The tension sets the speed, which is the same. But L is halved, so f_1 = v / (2L) doubles.")
  (hint "L is in the bottom of v / (2L)."))
```

---

## Worked example

```example
(example
  (problem "A violin string 0.32 m long plays a fundamental of 440 Hz. How fast do waves travel on it?")
  (step "f_1 = v / (2L), so v = 2 L f_1.")
  (step "v = 2 * 0.32 * 440 = 281.6 m/s.")
  (answer "about 282 m/s"))
```

```example
(example
  (problem "What is the frequency of that string's second harmonic?")
  (step "f_2 = 2 f_1.")
  (step (number (ask "f_2, in Hz?") (answer 880) (unit "Hz") (from "2 * 440")
    (wrong-if 220 "Harmonics go up, not down: f_2 is twice the fundamental.")
    (hint "2 * 440.")))
  (answer "880 Hz, an octave above"))
```

---

## Practice

```check
(number
  (ask "A string's harmonics include 300 Hz, 450 Hz and 600 Hz, one after another. What is its fundamental frequency, in Hz?")
  (answer 150) (unit "Hz") (from "450 - 300")
  (wrong-if 300 "300 Hz is one of the harmonics, but not the first. Neighboring harmonics differ by f_1: 450 - 300.")
  (hint "Neighboring harmonics differ by f_1."))
```

```check
(choice
  (ask "Which change lowers the pitch of a guitar string?")
  (right "Loosening it, so the waves on it are slower")
  (wrong "Pressing it against a fret"
    "A fret shortens the vibrating length, which raises the frequency.")
  (wrong "Plucking it harder"
    "Plucking harder makes a larger amplitude, a louder note. The pitch stays the same.")
  (hint "f_1 = v / (2L). Which change makes it smaller?"))
```

So: a string's fundamental frequency is $f_1 = v / (2L)$, and its
harmonics are the whole-number multiples $n f_1$.
