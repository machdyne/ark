# Mass and energy

```lesson
(objective "Use E = mc^2 to find the energy released when mass is lost in a nuclear change.")
(standards "HS-PS1-8" "HSA-CED.A.4")
(minutes 25)
(keywords "mass-energy equivalence" "binding energy")
```

You can work out the energy that a nuclear change releases from the
mass it loses.

In 1905 Albert Einstein showed that mass and energy are two forms of
the same thing. A mass $m$ is equivalent to an energy

$$ E = m c^2 $$

where $c = 3.00 * 10^8$ m/s is the speed of light. This is
**mass-energy equivalence**. Since $c^2$ is huge, a tiny mass is a huge
energy.

```sources
(source "A. Einstein, Ist die Trägheit eines Körpers von seinem Energieinhalt abhängig?, Annalen der Physik 18 (1905)")
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(number
  (ask "What energy is equivalent to a mass of 1 gram (0.001 kg)? Give the number that goes in front of" (math "10^13") "J.")
  (answer 9) (from "0.001 * (3.00 * 10^8)^2 / 10^13")
  (wrong-if 9000 "That uses 1 kg. A gram is 0.001 kg.")
  (hint "E = m c^2 = 0.001 x (3.00 x 10^8)^2."))
```

---

## Binding energy

Weigh a helium-4 nucleus, and it has less mass than its 2 protons and
2 neutrons weighed apart: about $5.0 * 10^-29$ kg less. That missing
mass is energy that left when the nucleus formed.

The energy needed to pull a nucleus apart into separate protons and
neutrons is its **binding energy**. It equals the missing mass times
$c^2$.

```sources
(source "NIST, CODATA Recommended Values of the Fundamental Physical Constants (2018): proton mass, neutron mass, alpha particle mass")
```

```check
(number
  (ask "Find the binding energy of helium-4 from its missing mass," (math "5.0 * 10^-29") "kg. Give the number that goes in front of" (math "10^-12") "J, to the nearest tenth.")
  (answer 4.5) (within 0.05) (from "5.0 * 10^-29 * (3.00 * 10^8)^2 / 10^-12")
  (wrong-if 45 "45 x 10^-13 J is right, but the question wants the number in front of 10^-12: 45 x 10^-13 = 4.5 x 10^-12.")
  (hint "E = m c^2.")
  (hint "5.0 x 9.0 = 45, and 10^-29 x 10^16 = 10^-13. So E = 45 x 10^-13 J."))
```

---

## Which nuclei are most tightly bound?

Divide a nucleus's binding energy by its number of protons and
neutrons, and you get how tightly each one is held. Nuclei near iron
are held most tightly. Light nuclei and very heavy nuclei are held less
tightly.

```figure
(graph 50 20 250 170 0 240 0 10)
(graph-axes 40 2 "mass number" "MeV each")
(path (list (gx 2) (gy 1.11) (gx 4) (gy 7.07) (gx 12) (gy 7.68) (gx 16) (gy 7.98) (gx 56) (gy 8.79) (gx 120) (gy 8.51) (gx 238) (gy 7.57)) 'grey 1.5)
(plot-point 2 1.11 'warm "H-2")
(plot-point 4 7.07 'warm "He-4")
(plot-point 56 8.79 'warm "Fe-56")
(plot-point 238 7.57 'warm)
(text (- (gx 238) 6) (- (gy 7.57) 8) "U-238" 'small 'right)
(caption "Binding energy for each proton or neutron (1 MeV = 10^6 eV).")
```

So energy is released when a heavy nucleus splits into two middle-sized
ones, or when light nuclei join: either way the products are more
tightly bound, and have less mass.

```sources
(source "OpenStax, College Physics (2012), section 31.6, Binding Energy")
```

```check
(choice
  (ask "Why does splitting a uranium nucleus release energy?")
  (right "The middle-sized nuclei it makes are more tightly bound, so the products have less mass")
  (wrong "Uranium nuclei store chemical energy"
    "Chemical energy comes from electrons, with a few eV for each atom. Splitting a nucleus releases millions of times more, from lost mass.")
  (wrong "The pieces have more mass than the uranium"
    "If the products had more mass, energy would be needed, not released. They have less.")
  (hint "Look at the graph: where are the nuclei more tightly bound?"))
```

---

## Energy from lost mass

In any nuclear change, compare the mass before and after. The mass
lost, times $c^2$, is the energy released.

```example
(example
  (problem "In one change, the products have 3.0 x 10^-28 kg less mass than what went in. How much energy is released?")
  (step "E = m c^2 = 3.0 x 10^-28 x (3.00 x 10^8)^2.")
  (step "= 3.0 x 10^-28 x 9.0 x 10^16 = 27 x 10^-12 J.")
  (answer "2.7 x 10^-11 J, for one change."))
```

That sounds small, but a kilogram of uranium holds a few times
$10^24$ nuclei.
Fully used, a kilogram of uranium-235 gives out about $8 * 10^13$ J;
burning a kilogram of gasoline gives about $5 * 10^7$ J, a million times
less.

```check
(choice
  (ask "A kilogram of nuclear fuel releases about a million times more energy than a kilogram of gasoline. Why?")
  (right "Nuclear changes turn a far bigger share of the mass into energy than chemical reactions do")
  (wrong "Gasoline has less mass"
    "Both are 1 kg. The difference is how much of that mass each change turns into energy.")
  (wrong "Nuclear fuel burns hotter"
    "Nuclear fuel does not burn. The energy comes from mass lost in changes of the nucleus.")
  (hint "Where does the energy come from in each?"))
```

---

## Practice

```check
(number
  (ask "A nuclear change loses" (math "2.0 * 10^-30") "kg of mass. How much energy is released? Give the number in front of" (math "10^-13") "J.")
  (answer 1.8) (within 0.05) (from "2.0 * 10^-30 * (3.00 * 10^8)^2 / 10^-13")
  (wrong-if 18 "18 x 10^-14 J is right, but the question wants the number in front of 10^-13: 18 x 10^-14 = 1.8 x 10^-13.")
  (hint "E = m c^2: 2.0 x 9.0 = 18, and 10^-30 x 10^16 = 10^-14."))
```

```check
(choice
  (ask "What is the binding energy of a nucleus?")
  (right "The energy needed to pull it apart into separate protons and neutrons")
  (wrong "The energy that holds its electrons"
    "Electrons are held by the electric force, with a few eV each. Binding energy is about the nucleus.")
  (wrong "The energy released when it is made heavier"
    "Binding energy is what it would take to separate its protons and neutrons completely.")
  (hint "Think of taking the nucleus apart."))
```

---

Mass and energy are equivalent, $E = m c^2$: when a nuclear change
leaves its products more tightly bound, mass is lost and that mass
times $c^2$ is released as energy.
