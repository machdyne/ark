# Nuclear fission

```lesson
(objective "Explain nuclear fission, chain reactions, and how a power plant uses them.")
(standards "HS-PS1-8")
(minutes 25)
(keywords "nuclear fission" "chain reaction")
```

You can explain how splitting heavy nuclei releases energy, and how a
power plant keeps that process steady.

A uranium-235 nucleus that takes in a slow neutron becomes unstable and
splits into two middle-sized nuclei, throwing out 2 or 3 fast neutrons.
Splitting a heavy nucleus in two is **nuclear fission**. The pieces are
more tightly bound than the uranium, so mass is lost: each fission
releases about 200 MeV.

One way it can split, balanced like any nuclear change:

| | A | Z |
|---|---|---|
| uranium-235 + 1 neutron | 235 + 1 = 236 | 92 + 0 = 92 |
| barium-141 | 141 | 56 |
| krypton-92 | 92 | 36 |
| 3 neutrons | 3 | 0 |

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
(source "US Energy Information Administration, Nuclear Explained: Nuclear Power Plants")
```

```check
(number
  (ask "Uranium-235 takes in a neutron and splits into xenon-140 (Z = 54) and strontium-94 (Z = 38). How many neutrons are thrown out?")
  (answer 2) (from "235 + 1 - 140 - 94")
  (wrong-if 1 "Count the mass numbers: 235 + 1 = 236 before, and 140 + 94 = 234 after. The difference is 2 neutrons.")
  (wrong-if 3 "That is another common split. Here 236 - 140 - 94 = 2.")
  (hint "The mass numbers must add to the same total before and after."))
```

---

## Chain reactions

Each fission throws out neutrons, and each of those can split another
uranium nucleus. So one fission can set off a **chain reaction**, in
which fissions lead to more fissions, and those to more still.

If each fission leads, on average, to more than one more, the number of
fissions grows very fast. If it leads to exactly one, the chain runs at
a steady rate.

```figure
(define k (choice 'k '("1 more" "2 more") "Leads to"))
(define g (slider 'g 0 5 3 "Generations" 1))
(for-range 0 (+ g 1)
  (lambda (j)
    (let* ((n (if (= k 0) 1 (expt 2 j))) (y (+ 24 (* 34 j))) (w (/ 280 n)))
      (for-range 0 n
        (lambda (i)
          (let ((x (+ 20 (* w (+ i 0.5)))))
            (circle x y (min 7 (* 0.35 w)) 'warm)
            (if (< j g) (if (= k 0) (arrow x (+ y 8) x (+ y 26) 'ink 1)
                            (begin (line x (+ y 6) (- x (/ w 4)) (+ y 28) 'ink 1)
                                   (line x (+ y 6) (+ x (/ w 4)) (+ y 28) 'ink 1))))))))))
(text 160 232 (string-append "fissions in the last generation: " (fmt (if (= k 0) 1 (expt 2 g)) 0)) 'centre 'small 'bold)
```

```check
(number
  (ask "Each fission leads to 2 more. Starting from 1 fission, how many fissions happen in the 10th generation after it?")
  (answer 1024) (from "2^10")
  (wrong-if 20 "That adds 2 each time. Each generation doubles: 2^10.")
  (wrong-if 512 "That is the 9th generation. The 10th is 2^10.")
  (hint "Each generation doubles the number: 2, 4, 8, ..."))
```

---

## A power plant

A nuclear power plant keeps its chain reaction steady, with each
fission leading to exactly one more on average:

- **control rods**, made of materials that absorb neutrons, are moved
  in or out of the fuel to take up just enough of them;
- in most plants, water around the fuel slows the neutrons, so the
  uranium takes them in, and carries the heat away;
- the heat boils water into steam, which turns a turbine and a
  generator, as in a coal plant.

```sources
(source "US Nuclear Regulatory Commission, Boiling Water Reactors")
(source "US Nuclear Regulatory Commission, Pressurized Water Reactors")
```

```check
(choice
  (ask "The chain reaction in a reactor starts to grow. What do the operators do?")
  (right "Push the control rods further in, to absorb more neutrons")
  (wrong "Pull the control rods out"
    "Control rods absorb neutrons. Pulling them out leaves more neutrons to cause fissions, so the reaction grows faster.")
  (wrong "Add more uranium"
    "More fuel would give the neutrons more nuclei to split, making it grow further.")
  (hint "What do the control rods do to neutrons?"))
```

---

## Weighing it

Nuclear plants give out almost no carbon dioxide while running, and a
little fuel gives a great deal of energy. But the used fuel stays
dangerously radioactive for thousands of years and must be stored
safely, and accidents, though rare, can be severe: at Chernobyl in 1986
and at Fukushima Daiichi in 2011, radioactive material escaped into the
surroundings.

```sources
(source "US Nuclear Regulatory Commission, Backgrounder on Radioactive Waste")
(source "US Nuclear Regulatory Commission, Backgrounder on Chernobyl Nuclear Power Plant Accident")
(source "US Nuclear Regulatory Commission, Backgrounder on NRC Response to Lessons Learned from Fukushima")
```

```check
(choice
  (ask "Which is a real disadvantage of fission power?")
  (right "Its used fuel stays dangerously radioactive for thousands of years")
  (wrong "It gives out more carbon dioxide than coal"
    "Fission is not burning, so the plant itself gives out almost no carbon dioxide while running.")
  (wrong "It needs far more fuel than a coal plant"
    "Fission releases about a million times more energy per kilogram than burning fuel, so it needs far less.")
  (hint "Think about what is left after the fuel is used."))
```

---

## Practice

```check
(choice
  (ask "Why can one fission start a chain reaction?")
  (right "It throws out neutrons, which can cause more fissions")
  (wrong "It throws out protons, which split other nuclei"
    "Fission throws out neutrons, not protons. Having no charge, neutrons are not pushed away by the positive nuclei.")
  (wrong "The energy it releases heats other nuclei until they split"
    "Heat does not split uranium nuclei. Each fission is caused by a nucleus taking in a neutron.")
  (hint "What else comes out besides the two pieces?"))
```

```check
(number
  (ask "Uranium-235 (Z = 92) takes in a neutron and splits into barium (Z = 56) and another element. What is the other element's atomic number?")
  (answer 36) (from "92 - 56")
  (wrong-if 148 "That adds. The protons are shared out: 92 - 56.")
  (hint "The 92 protons are shared between the two pieces."))
```

---

In nuclear fission a heavy nucleus splits and releases energy and
neutrons; the neutrons can cause a chain reaction, which a power plant
keeps steady with control rods.
