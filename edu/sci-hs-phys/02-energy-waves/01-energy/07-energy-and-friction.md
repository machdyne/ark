# Energy and friction

```lesson
(objective "Account for the mechanical energy that friction turns into thermal energy.")
(standards "HS-PS3-1")
(minutes 25)
(keywords "thermal energy")
```

You learn where mechanical energy goes when friction acts, and how to
count it.

Rub your hands together and they get warm. Friction turns mechanical
energy into **thermal energy**: the energy of the random motion of the
particles inside the objects. The particles of the two surfaces jiggle
faster, and the surfaces warm up.

The mechanical energy goes down, but no energy is destroyed. If you
count the thermal energy too, the total stays the same.

```sources
(source "OpenStax, College Physics 2e (2022), section 7.5, Nonconservative Forces, and section 7.6, Conservation of Energy")
```

```check
(choice
  (ask "A box slides across a rough floor and stops. What happened to its kinetic energy?")
  (right "Friction turned it into thermal energy in the box and the floor")
  (wrong "It was destroyed by friction"
    "Energy is never destroyed. The box and the floor end up a little warmer: the energy is now thermal energy.")
  (wrong "It turned into potential energy"
    "The box did not rise, so its gravitational potential energy did not change. The energy went into the jiggling of particles: thermal energy.")
  (hint "What do you feel if you touch two surfaces just after they rub hard?"))
```

---

## Counting the thermal energy

When a box slides a distance $d$ against a friction force $f$, friction
turns $f d$ of mechanical energy into thermal energy. Write $ME$ for
the mechanical energy, $KE + PE$, and $E_t$ for the thermal energy made:

$$ ME_i = ME_f + E_t $$

$$ E_t = f d $$

A 2.0 kg block slides at 6.0 m/s on a rough floor, with 6.0 N of
friction. Watch the bars: kinetic energy falls, thermal energy grows,
and the total stays at 36 J.

```figure
(still
  (wv-surface 10 310 110 #f)
  (for-range 0 7 (lambda (i) (line (+ 40 (* 40 i)) 114 (+ 40 (* 40 i)) 120 'ink 1)
                              (text (+ 40 (* 40 i)) 132 (fmt i 0) 'centre 'tiny)))
  (text 300 132 "m" 'tiny))
(define tt (min (modulo (seconds) 4) 2))
(define x (- (* 6 tt) (* 1.5 tt tt)))
(define v (- 6 (* 3 tt)))
(wv-block (+ 10 (* 40 x)) 80 30 30 'grey #f)
(if (> v 0) (arrow (+ 25 (* 40 x)) 70 (+ 25 (* 40 x) (* 6 v)) 70 'ink 1.5))
(wv-bars 90 200 60 36 (list (list "KE" (* v v) 'cool) (list "Eth" (* 6 x) 'warm) (list "total" 36 'grey)))
(caption "Real time. 2.0 kg block, 6.0 N of friction.")
```

```check
(number
  (ask "How far does the block slide before it stops, in meters?")
  (answer 6) (unit "m") (from "36 / 6.0")
  (wrong-if 1 "That is 6.0 N divided by 6.0 m/s, which mixes a force and a speed. All 36 J of kinetic energy become thermal energy: f d = 36 J.")
  (wrong-if 216 "That is 36 * 6.0. Solve f d = 36 J for d: divide by the force.")
  (hint "KE_i = 1/2 * 2.0 * 6.0^2 = 36 J. It all becomes thermal energy.")
  (hint "6.0 N * d = 36 J."))
```

---

## A sled on a hill

On a slope with friction, potential energy becomes partly kinetic
energy and partly thermal energy. Draw the bars before and after: the
total height of the bars must be the same.

```example
(example
  (problem "A 40 kg sled starts from rest at the top of a hill 10 m high. At the bottom it moves at 10 m/s. How much thermal energy did friction make?")
  (step "Before: PE_i = 40 * 9.8 * 10 = 3,920 J, and KE_i = 0.")
  (step "After: KE_f = 1/2 * 40 * 10^2 = 2,000 J, and PE_f = 0.")
  (step "E_t = 3,920 - 2,000 = 1,920 J.")
  (answer "1,920 J"))
```

```example
(example
  (problem "The sled's path down that hill is 50 m long. What is the average friction force on it?")
  (step "E_t = f d, with E_t = 1,920 J and d = 50 m.")
  (step (number (ask "f, in newtons, to the nearest tenth?") (answer 38.4) (within 0.05) (unit "N") (from "1920 / 50")
    (wrong-if 96000 "That is E_t times d. Divide: f = E_t / d.")
    (wrong-if 192 "That uses the 10 m height. Friction acts along the whole 50 m path.")
    (hint "f = 1,920 J / 50 m.")))
  (answer "38.4 N"))
```

---

## Practice

```check
(number
  (ask "A 0.50 kg ball is dropped from 2.0 m. It bounces back up to only 1.5 m. How much mechanical energy became thermal energy and sound, to the nearest hundredth of a joule?")
  (answer 2.45) (within 0.005) (unit "J") (from "0.50 * 9.8 * (2.0 - 1.5)")
  (wrong-if 7.35 "That is the potential energy at 1.5 m, which the ball kept. The loss is the difference between the two heights.")
  (wrong-if 9.8 "That is the energy at the start. The ball kept the energy for 1.5 m; only the last 0.5 m was lost.")
  (hint "Compare m g h at the start and at the top of the bounce.")
  (hint "0.50 * 9.8 * 0.5."))
```

```check
(choice
  (ask "A cyclist coasts down a hill. At the bottom, her kinetic energy is less than the potential energy she lost. Does this break the conservation of energy?")
  (right "No: the missing energy became thermal energy in the air, tires and road")
  (wrong "Yes: some energy disappeared"
    "Energy is never destroyed. Friction and the air turned the missing part into thermal energy, which warms the bike, the road and the air.")
  (wrong "No: the cyclist made the energy smaller by braking"
    "Braking does not destroy energy either. The brakes turn kinetic energy into thermal energy, and the brake pads warm up.")
  (hint "Where does energy go when surfaces rub?"))
```

So: friction turns mechanical energy into thermal energy, $E_t = f d$,
and with it counted the total energy stays the same.
