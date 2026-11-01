# The nucleus

```lesson
(objective "Describe the nucleus by its atomic number and mass number, tell isotopes apart, and explain what holds it together.")
(standards "HS-PS1-8")
(minutes 25)
(keywords "nucleus (of an atom)" "atomic number" "mass number" "isotope" "strong nuclear force")
```

You can describe what is at the center of an atom, name its parts by
two numbers, and explain what holds them together.

An atom's protons and neutrons are packed into a tiny, dense center:
its **nucleus**. The electrons move around it, far away. A nucleus is
tens of thousands of times smaller across than its atom, yet it holds
almost all of the atom's mass.

Ernest Rutherford found the nucleus in 1911: when fast, positively
charged particles were fired at thin gold foil, a few bounced straight back, as if they had
hit something small, massive and positive.

```sources
(source "E. Rutherford, The Scattering of alpha and beta Particles by Matter and the Structure of the Atom, Philosophical Magazine 21 (1911)")
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(choice
  (ask "Where is almost all of an atom's mass?")
  (right "In its tiny nucleus")
  (wrong "Spread evenly through the atom"
    "Rutherford's experiment showed the opposite: the mass is packed into a tiny nucleus, and most of the atom is nearly empty space.")
  (wrong "In its electrons"
    "Electrons are very light: a proton has about 1,800 times an electron's mass. The protons and neutrons in the nucleus hold almost all the mass.")
  (hint "Protons and neutrons are much heavier than electrons."))
```

---

## Two numbers

A nucleus is described by two numbers:

- its **atomic number**, $Z$: the number of protons. It decides the
  element: every carbon nucleus has 6 protons;
- its **mass number**, $A$: the number of protons plus neutrons.

So the number of neutrons is $A - Z$. A nucleus is named by its element
and mass number: carbon-12 has 6 protons and 6 neutrons.

Choose a nucleus. Shaded discs are protons; open rings are neutrons.

```figure
(define k (choice 'n '("H-2" "He-4" "Li-7" "C-12" "C-14") "Nucleus"))
(define z (list-ref '(1 2 3 6 6) k))
(define a (list-ref '(2 4 7 12 14) k))
(for-range 0 a
  (lambda (i)
    (let* ((r (* 13 (sqrt i))) (t (* i 2.4))
           (x (+ 160 (* r (cos t)))) (y (- 100 (* r (sin t)))))
      (if (< (modulo (* i 5) a) z)
          (begin (circle x y 11 'warm) (ring x y 11 'ink 1))
          (begin (circle x y 11 'paper) (ring x y 11 'ink 1.5))))))
(text 160 180 (string-append "Z = " (fmt z 0) ", A = " (fmt a 0)) 'centre 'body 'bold)
(text 160 202 (string-append (fmt z 0) " proton" (if (= z 1) "" "s") ", "
                             (fmt (- a z) 0) " neutron" (if (= (- a z) 1) "" "s")) 'centre 'small)
(caption "Not to scale with the atom: the electrons are far outside.")
```

```check
(number
  (ask "How many neutrons are in a nucleus of carbon-14? (Carbon has Z = 6.)")
  (answer 8) (from "14 - 6")
  (wrong-if 14 "14 is the mass number: protons plus neutrons. Take away the 6 protons.")
  (wrong-if 20 "That adds. The mass number already counts the protons: neutrons = 14 - 6.")
  (hint "Neutrons = A - Z."))
```

---

## Isotopes

Nuclei of the same element always have the same number of protons, but
can have different numbers of neutrons. Nuclei with the same atomic
number but different mass numbers are **isotopes** of the element.
Carbon-12 and carbon-14 are isotopes of carbon; uranium-235 and
uranium-238 are isotopes of uranium.

Isotopes of an element behave the same in chemical reactions, since
chemistry depends on the electrons, and the number of electrons follows
the number of protons.

```check
(choice
  (ask "Which pair are isotopes of the same element?")
  (right "A nucleus with 8 protons and 8 neutrons, and one with 8 protons and 10 neutrons")
  (wrong "A nucleus with 6 protons and 8 neutrons, and one with 7 protons and 7 neutrons"
    "They have the same mass number, 14, but different numbers of protons, so they are different elements.")
  (wrong "A nucleus with 6 protons and 6 neutrons, and one with 7 protons and 6 neutrons"
    "Different numbers of protons make different elements. Isotopes have the same protons and different neutrons.")
  (hint "Isotopes share the atomic number."))
```

---

## What holds it together?

Protons are all positive, and in a nucleus they are extremely close.
The electric force pushing two of them apart is huge. Something
stronger must hold the nucleus together: the **strong nuclear force**.
It pulls protons and neutrons to each other, far more strongly than
the electric force pushes, but only over very short distances, about
the width of a few protons.

Neutrons add to the strong force's pull without adding any electric
push, which helps hold larger nuclei together.

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(number
  (ask "Two protons in a nucleus are about" (math "1.0 * 10^-15") "m apart. Using Coulomb's law, how big is the electric force pushing them apart, in newtons? Give the nearest whole number.")
  (answer 230) (within 0.5) (from "8.99 * 10^9 * (1.60 * 10^-19)^2 / (1.0 * 10^-15)^2") (unit "N")
  (wrong-if 0.00000000000023 "That divides by r, not r^2. With r^2 = 10^-30, the force is about 230 N.")
  (hint "F = k e^2 / r^2.")
  (hint "8.99 x 10^9 x 2.56 x 10^-38 / 10^-30."))
```

That is about the weight of a 23 kg mass, acting on a particle of only
$1.67 * 10^-27$ kg: the strong nuclear force must be stronger still.

---

## Practice

```check
(number
  (ask "Uranium has Z = 92. How many neutrons are in a nucleus of uranium-238?")
  (answer 146) (from "238 - 92")
  (wrong-if 330 "That adds. The mass number counts protons and neutrons together: 238 - 92.")
  (hint "Neutrons = A - Z."))
```

```check
(choice
  (ask "Why would a nucleus of only protons, with no neutrons, fly apart (apart from hydrogen-1, which has just one)?")
  (right "The protons' electric repulsion would win: neutrons add strong-force pull with no push")
  (wrong "Protons attract each other electrically"
    "Protons are all positive, so they repel. The strong nuclear force is what pulls them together.")
  (wrong "The strong force acts only on neutrons"
    "The strong force pulls on protons and neutrons alike. Neutrons help because they add pull without any electric push.")
  (hint "Which force pushes, and which particles add pull without push?"))
```

```check
(choice
  (ask "What decides which element a nucleus belongs to?")
  (right "Its number of protons")
  (wrong "Its number of neutrons"
    "Changing the neutrons gives another isotope of the same element. The protons decide the element.")
  (wrong "Its mass number"
    "Nuclei of different elements can have the same mass number. The element is set by the number of protons, Z.")
  (hint "Isotopes of one element differ in neutrons only."))
```

---

A nucleus holds an atom's protons and neutrons: $Z$ protons set the
element, $A$ counts protons and neutrons, isotopes differ in neutrons,
and the strong nuclear force holds it together.
