# Fields and light

```lesson
(objective "Explain that a changing electric field makes a magnetic field and the reverse, so linked fields travel as an electromagnetic wave at the speed of light.")
(standards "HS-PS4-1" "HS-PS2-5")
(minutes 25)
```

You can explain how electric and magnetic fields, each making the
other, travel through empty space as light.

Induction shows that a changing magnetic field makes an electric field:
it is that electric field that pushes the charges round a coil. It is
there even with no coil at all.

In the 1860s James Clerk Maxwell showed that the reverse must happen
too: a changing electric field makes a magnetic field, just as a
current does.

```sources
(source "J. C. Maxwell, A Dynamical Theory of the Electromagnetic Field, Philosophical Transactions of the Royal Society 155 (1865)")
(source "OpenStax, Physics (2020), chapter 15, Light")
```

```check
(choice
  (ask "Which of these makes a magnetic field?")
  (right "Both an electric current and a changing electric field")
  (wrong "Only an electric current"
    "Maxwell showed that a changing electric field makes a magnetic field too, even in empty space with no current.")
  (wrong "Only a magnet"
    "Ørsted showed that currents make magnetic fields, and Maxwell that changing electric fields do as well.")
  (hint "There are two answers in what you just read."))
```

---

## Fields that carry each other

Shake a charge up and down, and its electric field nearby changes. That
changing electric field makes a changing magnetic field, which makes a
changing electric field a little farther on, and so on. The linked
fields travel outward on their own, as an **electromagnetic wave**.

The electric and magnetic fields are at right angles to each other and
to the way the wave travels, so the wave is transverse.

```figure
(still
  (line 20 110 300 110 'grey 1)
  (arrow 230 200 300 200 'ink 1.5) (text 222 204 "travel" 'small 'right)
  (text 22 50 "E (solid)" 'small) (text 22 186 "B (the other curve, at right angles)" 'small))
(define t (seconds))
(define (wave sc dx dy role)
  (let loop ((i 30) (pts '()))
    (if (< i 0) (path pts role 1.5)
        (let* ((x (+ 20 (* 9 i))) (b (* sc (sin (- (* 0.045 x) (* 2 t))))))
          (loop (- i 1) (cons (+ x (* dx b)) (cons (+ 110 (* dy b)) pts)))))))
(wave 50 0 -1 'ink)
(wave 40 0.5 0.4 'cool)
(caption "Slowed down: real waves move at 3.00 x 10^8 m/s.")
```

```check
(choice
  (ask "In an electromagnetic wave traveling east, the electric field points up and down. Which way can the magnetic field point?")
  (right "North and south")
  (wrong "Up and down, along the electric field"
    "The two fields are at right angles to each other. If the electric field is up and down, the magnetic field is horizontal.")
  (wrong "East and west, along the travel"
    "Both fields are at right angles to the direction of travel: the wave is transverse.")
  (hint "Each field is at right angles to the other and to the travel."))
```

---

## The speed of light

Maxwell worked out how fast such a wave should travel, using only
numbers measured with charges, currents and magnets. He found about
$3 * 10^8$ m/s: the measured speed of light. He concluded that light is
an electromagnetic wave.

Today we know the whole electromagnetic spectrum, from radio waves to
gamma rays, is the same kind of wave, all traveling at
$c = 3.00 * 10^8$ m/s in a vacuum.

```check
(choice
  (ask "What convinced Maxwell that light is an electromagnetic wave?")
  (right "The speed he calculated for electromagnetic waves matched the measured speed of light")
  (wrong "He saw light bend a compass needle"
    "Light does not visibly turn a compass. The evidence was a number: the predicted speed of the waves was the speed of light.")
  (wrong "Light needs a wire to travel"
    "Light crosses empty space with no wire. That is what an electromagnetic wave can do, since its fields make each other.")
  (hint "What did he calculate?"))
```

---

## Antennas

In a radio transmitter's antenna, charges are driven back and forth
many times a second. Their changing fields send out radio waves of the
same frequency. In a receiving antenna far away, the wave's electric
field pushes charges back and forth at that frequency again.

```example
(example
  (problem "An FM radio station broadcasts at 100 MHz. What is the wavelength of its waves?")
  (step "Use c = f lambda, so lambda = c / f.")
  (step "lambda = 3.00 x 10^8 / (100 x 10^6).")
  (answer "3.00 m."))
```

```check
(number
  (ask "A wireless network sends at 5.0 x 10^9 Hz. What is the wavelength, in meters?")
  (answer 0.06) (within 0.0005) (from "3.00 * 10^8 / (5.0 * 10^9)") (unit "m")
  (wrong-if 16.7 "That divides f by c. The wavelength is lambda = c / f.")
  (wrong-if 0.6 "Check the powers of 10: 10^8 / 10^9 = 0.1, and 3 / 5 = 0.6, so 0.6 x 0.1 = 0.06.")
  (hint "lambda = c / f = 3.00 x 10^8 / 5.0 x 10^9."))
```

---

## Practice

```check
(choice
  (ask "Why can light cross the empty space between the sun and Earth, though sound cannot?")
  (right "Light's changing fields make each other, so it needs no medium")
  (wrong "Space is filled with air thin enough for light"
    "Space is nearly empty. Sound needs a medium, but an electromagnetic wave's fields keep each other going without one.")
  (wrong "Light is faster, so it gets through before it stops"
    "Speed is not the reason. Light needs no medium, because its fields make each other.")
  (hint "What is doing the waving in light?"))
```

```check
(choice
  (ask "What makes a radio wave?")
  (right "Charges moving back and forth in an antenna")
  (wrong "Charges at rest on a metal sphere"
    "Charges at rest make a steady electric field, which does not travel as a wave. They must accelerate, as they do moving back and forth.")
  (wrong "A steady current in a wire"
    "A steady current makes a steady magnetic field. A wave needs fields that change.")
  (hint "A wave needs fields that change."))
```

---

A changing electric field makes a magnetic field and a changing
magnetic field an electric one, so the two travel together as an
electromagnetic wave at $c = 3.00 * 10^8$ m/s: light.
