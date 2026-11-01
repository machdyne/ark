# Solar cells and sensors

```lesson
(objective "Explain how solar cells and camera sensors turn photons into electric current.")
(standards "HS-PS4-5")
(minutes 25)
(keywords "solar cell")
```

You can explain how a solar panel and a camera turn light into an
electric current.

A **solar cell** is a thin slice of a semiconductor, usually silicon,
that turns light directly into electric energy. In silicon, an electron
needs about 1.1 eV to break free of its atom and move through the
crystal. A photon with at least that much energy can free one.

```sources
(source "US Department of Energy, Solar Energy Technologies Office, Solar Photovoltaic Cell Basics")
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
```

```check
(choice
  (ask "Which photon can free an electron in silicon, which needs about 1.1 eV?")
  (right "A photon of red light, about 1.8 eV")
  (wrong "An infrared photon of 0.5 eV"
    "0.5 eV is less than the 1.1 eV needed. As in the photoelectric effect, one photon must carry enough on its own.")
  (wrong "Any photon, if the light is bright enough"
    "Brightness gives more photons, not bigger ones. Each photon must carry at least 1.1 eV.")
  (hint "Compare each photon's energy with 1.1 eV."))
```

---

## Making a current

A solar cell is made of two layers of silicon, each with a tiny amount
of a different element added. Where they meet, an electric field is
built into the cell. It pushes each freed electron one way, toward one
face of the cell. Joined into a circuit, the electrons flow out through
a wire and back in at the other face: a direct current.

Change the light falling on the cell.

```figure
(define lam (slider 'lam 400 1400 600 "Wavelength (nm)" 50))
(define b (slider 'b 0 5 3 "Brightness" 1))
(define ev (/ 1243 lam))
(define ok (>= ev 1.1))
(define i (if ok b 0))
(rect 40 120 140 30 'grey) (frame 40 120 140 30 'ink 1.5)
(line 40 135 180 135 'paper 2)
(text 110 172 "solar cell" 'centre 'small)
(for-range 0 b (lambda (k) (arrow (+ 50 (* 25 k)) 40 (+ 70 (* 25 k)) 112 'cool 1.5)))
(path '(180 128 250 128 250 70) 'ink 1.5) (path '(250 46 250 30 300 30 300 190 110 190 110 150) 'ink 1.5)
(el-lamp 250 58 (/ i 5))
(text 160 214 (string-append "photon: " (fmt ev 2) " eV; current: " (if ok (fmt (* 0.4 b) 1) "0") " A") 'centre 'small 'bold)
(caption (if ok "Each photon can free an electron." "Photons below 1.1 eV free none."))
```

```check
(choice
  (ask "In the figure, light of 600 nm falls on the cell. What happens to the current when the light is made twice as bright?")
  (right "It doubles: twice as many photons free twice as many electrons")
  (wrong "It stays the same: the photons have the same energy"
    "The energy of each photon is the same, but there are twice as many, each freeing an electron. The current doubles.")
  (wrong "It drops, since the cell gets too hot"
    "A real cell does work a little worse when hot, but here more photons mean more freed electrons and more current.")
  (hint "Brighter light means more photons."))
```

---

## How efficient?

Not all the light's energy becomes electric energy. Photons below
1.1 eV pass through or just warm the cell. A photon above 1.1 eV frees
only one electron, and its extra energy becomes thermal energy. Solar
panels on homes today turn about a fifth of the sunlight's energy into
electric energy.

```sources
(source "US Department of Energy, Solar Energy Technologies Office, Solar Photovoltaic Cell Basics")
```

```check
(number
  (ask "Sunlight brings 1,000 W to a panel, which gives out 200 W of electric power. What is its efficiency, as a percent?")
  (answer 20) (from "200 / 1000 * 100") (unit "%")
  (wrong-if 500 "That divides the input by the output. Efficiency is useful output over input: 200 / 1,000.")
  (hint "Efficiency = output / input."))
```

---

## Camera sensors

A camera's image sensor is a chip of silicon cut into millions of
tiny light sensors, its pixels. During a picture, photons free
electrons in each pixel, and the pixel collects them. The brighter the
light on a pixel, the more electrons it holds. The camera then counts
each pixel's electrons and stores the number. Tiny colored filters over
the pixels let each one measure red, green or blue light.

```check
(choice
  (ask "Two pixels are side by side. One holds many more freed electrons than the other. What does that tell the camera?")
  (right "More light fell on the first pixel")
  (wrong "The first pixel was hit by higher-energy photons"
    "Each photon frees at most one electron. Many more electrons means many more photons: more light.")
  (wrong "The first pixel is broken"
    "Different counts are what make a picture: bright parts of the scene put more photons on their pixels.")
  (hint "One photon frees at most one electron."))
```

---

## Practice

```check
(choice
  (ask "Why does a silicon solar cell make no current in light of 1,300 nm, however bright?")
  (right "Each photon has less than the 1.1 eV needed to free an electron")
  (wrong "1,300 nm light is too bright"
    "Brightness does not stop a cell working. At 1,300 nm each photon has only about 0.96 eV, under 1.1 eV.")
  (wrong "Solar cells work only in visible light"
    "Silicon also works in near infrared, up to about 1,100 nm. Beyond that, photons have too little energy.")
  (hint "E = 1,243 / 1,300 eV."))
```

```check
(choice
  (ask "What kind of current does a solar cell give out?")
  (right "Direct current")
  (wrong "Alternating current"
    "The built-in field always pushes freed electrons the same way, so the current flows one way: direct current.")
  (hint "Does the push on the electrons ever reverse?"))
```

---

Solar cells and camera sensors use photons with enough energy to free
electrons in silicon; a solar cell's built-in field drives them as a
direct current, and a sensor counts them in each pixel.
