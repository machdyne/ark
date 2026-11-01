# Radiation and the body

```lesson
(objective "Tell ionizing from non-ionizing radiation by photon energy, and judge claims about the effects of radiation by their evidence.")
(standards "HS-PS4-4")
(minutes 25)
(keywords "ionizing radiation" "non-ionizing radiation")
```

You can tell which kinds of electromagnetic radiation can damage the
atoms in your body, from the energy of their photons, and weigh claims
about them.

This lesson is about the physics. It gives no medical advice; for
questions about your own health, ask a doctor.

An atom's outer electrons are held with energies of a few eV up to
some tens of eV. A photon with more energy than that can knock an
electron right out, leaving a charged atom, an ion. Radiation whose
photons can do this is **ionizing radiation**: X-rays, gamma rays and
the highest-energy ultraviolet. Ions in a living cell can break
molecules, including DNA.

```sources
(source "US Environmental Protection Agency, Radiation Basics")
(source "OpenStax, Physics (2020), chapter 21, The Quantum Nature of Light")
```

```check
(choice
  (ask "What makes radiation ionizing?")
  (right "Each of its photons has enough energy to knock an electron out of an atom")
  (wrong "It is very bright"
    "Brightness is the number of photons. An electron is freed by one photon, so what matters is the energy of each photon.")
  (wrong "It comes from a nuclear power plant"
    "Ionizing radiation comes from many sources, such as X-ray machines, the sun and rocks. What makes it ionizing is the energy per photon.")
  (hint "Think of the photoelectric effect: one photon, one electron."))
```

---

## Photon energies

Radiation whose photons have too little energy to ionize atoms is
**non-ionizing radiation**: radio waves, microwaves, infrared, visible
light and most ultraviolet. At high intensity its main effect on the
body is heating, as in a microwave oven.

```figure
(number-line 20 300 120 -6 6 1 2)
(rect (nl-x 1) 112 (- (nl-x 6) (nl-x 1)) 16 'grey)
(frame (nl-x 1) 112 (- (nl-x 6) (nl-x 1)) 16 'ink 1)
(line (nl-x 1) 60 (nl-x 1) 150 'ink 2)
(text (nl-x 1) 54 "about 10 eV" 'centre 'small 'bold)
(text (nl-x -2.5) 80 "non-ionizing" 'centre 'small)
(text (nl-x 3.5) 80 "ionizing" 'centre 'small)
(text (nl-x -5) 175 "radio" 'centre 'tiny)
(text (nl-x -3.6) 190 "microwave" 'centre 'tiny)
(text (nl-x -1.5) 175 "infrared" 'centre 'tiny)
(text (nl-x 0.35) 190 "visible" 'centre 'tiny)
(text (nl-x 1.3) 175 "UV" 'centre 'tiny)
(text (nl-x 3.2) 190 "X-ray" 'centre 'tiny)
(text (nl-x 5.2) 175 "gamma" 'centre 'tiny)
(caption "Photon energy: a mark at n means 10^n eV.")
```

```check
(number
  (ask "Wi-Fi radio waves can have a frequency of" (math "2.4 * 10^9") "Hz. What is the energy of one photon, in units of" (math "10^-6") "eV? Give the nearest whole number.")
  (answer 10) (within 0.5) (from "6.63 * 10^-34 * 2.4 * 10^9 / (1.60 * 10^-19) / 10^-6")
  (wrong-if 16 "That leaves the energy in units of 10^-25 J. Divide by 1.60 x 10^-19 J per eV.")
  (hint "E = h f, then divide by 1.60 x 10^-19 to get eV.")
  (hint "6.63 x 2.4 / 1.60 is about 9.9, and the powers of 10 give 10^-6."))
```

---

## Energy per photon, not brightness

A radio wave's photons have about a millionth of the energy needed to
ionize an atom. Making the radio wave stronger sends more photons, but
none of them can ionize, just as bright red light frees no electrons
from a metal. Very strong radio waves or microwaves can heat tissue;
that is why there are limits on how much a device may give out.

```sources
(source "US Federal Communications Commission, Wireless Devices and Health Concerns")
```

```check
(choice
  (ask "Can a very powerful radio transmitter ionize atoms by being bright enough?")
  (right "No: each radio photon has far too little energy, however many there are")
  (wrong "Yes: enough radio photons together can ionize an atom"
    "An atom takes in one photon at a time. Each radio photon carries about a millionth of the energy needed.")
  (wrong "Yes, if you stand close enough"
    "Closer means more photons, not more energetic ones. Very strong fields can heat tissue, but they do not ionize.")
  (hint "Which matters for ionizing: the number of photons, or the energy of each?"))
```

---

## Ultraviolet

Ultraviolet light from the sun sits near the line. Most of its photons
cannot ionize atoms, but they carry enough energy, a few eV, to break
some chemical bonds in the DNA of skin cells. The World Health
Organization states that UV radiation causes sunburn and is a cause of
skin cancer.

```sources
(source "World Health Organization, Ultraviolet radiation, fact sheet")
```

```check
(choice
  (ask "Why can ultraviolet light harm skin, though visible light, at the same brightness, does not?")
  (right "Each UV photon carries more energy, enough to break some bonds in DNA")
  (wrong "UV light is brighter than visible light"
    "At the same brightness the difference is the energy of each photon. UV photons carry more.")
  (wrong "UV light is ionizing and visible light is not, at all energies"
    "Most UV photons do not ionize atoms. But they carry enough energy to break some chemical bonds, which visible photons do not.")
  (hint "Compare the energy of one UV photon with one visible photon."))
```

---

## Judging a claim

To weigh a claim about radiation and health, ask:

1. **What kind of radiation?** Is each photon energetic enough to ionize?
2. **How much?** Effects depend on the dose: how strong, how long.
3. **What is the evidence?** Large, repeated studies, reviewed by health
   bodies, count for more than a single report or a story.

For example, the radio waves of mobile phones are non-ionizing. The
World Health Organization's fact sheet on mobile phones (2014) says
that no ill effects on health have been shown to be caused by their use. In 2011 its cancer agency, IARC,
listed radio-frequency fields as "possibly carcinogenic", a class used
when evidence is limited, and research is still going on.

```sources
(source "World Health Organization, Electromagnetic fields and public health: mobile phones, fact sheet")
(source "International Agency for Research on Cancer, Press Release 208 (31 May 2011): IARC classifies radiofrequency electromagnetic fields as possibly carcinogenic to humans")
```

```check
(choice
  (ask "A website claims a Wi-Fi router's waves knock electrons out of your cells. What does the physics say?")
  (right "Wi-Fi photons are non-ionizing: each has far too little energy to knock out an electron")
  (wrong "It is true, because Wi-Fi is a kind of radiation"
    "\"Radiation\" covers both kinds. Wi-Fi photons have about a millionth of the energy needed to ionize an atom.")
  (wrong "It is true only for routers close to you"
    "Being close gives more photons, not more energetic ones. None of them can ionize.")
  (hint "Where is Wi-Fi on the number line of photon energies?"))
```

---

## Practice

```check
(choice (several)
  (ask "Which of these are ionizing radiation? Choose every one.")
  (right "X-rays")
  (right "Gamma rays")
  (wrong "Microwaves"
    "Microwave photons have far less than 10 eV. They can heat food, but they cannot ionize atoms.")
  (wrong "Visible light"
    "Visible photons have about 2 to 3 eV, too little to ionize.")
  (hint "Which have photon energies far above 10 eV?"))
```

```check
(choice
  (ask "Medical X-ray images use ionizing radiation. How do X-ray staff keep the risk low?")
  (right "They use the smallest dose that gives a useful image, and only when the image is needed")
  (wrong "They use dimmer X-rays whose photons cannot ionize"
    "Every X-ray photon can ionize. Staff limit the number of photons, the dose, and use X-rays only when needed.")
  (wrong "There is no risk, so they do nothing special"
    "Ionizing radiation always carries some risk, which grows with the dose. So the dose is kept as low as it can be.")
  (hint "Risk grows with dose."))
```

```sources
(source "US Food and Drug Administration, Medical X-ray Imaging")
```

---

Radiation is ionizing when each photon can knock out an electron,
roughly 10 eV or more: X-rays, gamma rays and the highest UV; claims
about health are judged by the kind of radiation, the dose and the
evidence.
