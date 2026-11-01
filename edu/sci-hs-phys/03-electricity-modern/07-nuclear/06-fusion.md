# Nuclear fusion

```lesson
(objective "Explain nuclear fusion, why it needs great temperatures, and how it powers the sun.")
(standards "HS-PS1-8")
(minutes 25)
(keywords "nuclear fusion")
```

You can explain how joining light nuclei releases energy, why it needs
enormous temperatures, and how it makes the sun shine.

Joining two light nuclei into a heavier one is **nuclear fusion**. The
new nucleus is more tightly bound than the two it came from, so mass
is lost and energy released. One fusion reaction joins two isotopes of
hydrogen, deuterium (hydrogen-2) and tritium (hydrogen-3):

| | A | Z |
|---|---|---|
| hydrogen-2 + hydrogen-3 | 2 + 3 = 5 | 1 + 1 = 2 |
| helium-4 | 4 | 2 |
| 1 neutron | 1 | 0 |

Each such fusion releases about 17.6 MeV.

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
(source "US Department of Energy, Office of Science, DOE Explains: Fusion Reactions")
```

```check
(choice
  (ask "Why does fusing light nuclei release energy?")
  (right "The heavier nucleus made is more tightly bound, so some mass is lost as energy")
  (wrong "The light nuclei burn, like a fuel"
    "Burning is chemical, involving electrons. Fusion changes nuclei, and its energy comes from lost mass.")
  (wrong "Joining nuclei always takes energy in, never gives it out"
    "For light nuclei the product is more tightly bound, so energy comes out. Only beyond iron does joining take energy in.")
  (hint "Think of the binding energy graph from the lesson on mass and energy."))
```

---

## Why so hot?

Nuclei are positive, so they repel each other. To fuse, two nuclei
must come within about $10^-15$ m, where the strong nuclear force can
pull them together. Only nuclei moving extremely fast can get that
close against the push.

The particles of a gas move faster the hotter it is. So fusion needs
temperatures of millions of kelvins. At such temperatures atoms lose
their electrons, and the gas becomes a mix of bare nuclei and free
electrons, called a plasma.

```check
(choice
  (ask "Why does fusion not happen in a glass of water, which has plenty of hydrogen?")
  (right "Its nuclei move far too slowly to get close enough against their electric repulsion")
  (wrong "Water's hydrogen nuclei have no charge"
    "Hydrogen nuclei are protons, which are positive. Their repulsion is exactly what keeps them apart at ordinary temperatures.")
  (wrong "The strong nuclear force works only in stars"
    "The strong force works everywhere, but only over about 10^-15 m. At room temperature nuclei never get that close.")
  (hint "What keeps two positive nuclei apart, and what overcomes it?"))
```

---

## The sun

In the sun's core, at about 15 million kelvins, hydrogen nuclei fuse,
in several steps, into helium-4. The energy released makes the sun
shine. Each second the sun gives out about $3.8 * 10^26$ J of energy.

```sources
(source "NASA Science, Sun: facts")
```

```check
(number
  (ask "The sun gives out" (math "3.8 * 10^26") "J each second. By E = mc^2, how much mass does it lose each second? Give the number in front of" (math "10^9") "kg, to the nearest tenth.")
  (answer 4.2) (within 0.05) (from "3.8 * 10^26 / (3.00 * 10^8)^2 / 10^9")
  (wrong-if 0.42 "That is the number in front of 10^10. 0.42 x 10^10 = 4.2 x 10^9.")
  (hint "m = E / c^2.")
  (hint "3.8 / 9.0 is about 0.42, and 10^26 / 10^16 = 10^10."))
```

So the sun turns about 4 billion kilograms of mass into energy every
second, and has done so for about 4.6 billion years.

---

## Energy per kilogram

The bars compare the energy released by a kilogram of fuel in three
ways. The heights grow by powers of 10, so each step up the scale is
10 times more.

```figure
(define items '(("burning gasoline" 7.7 "5 x 10^7") ("fission, U-235" 13.9 "8 x 10^13") ("fusion, H-2 + H-3" 14.5 "3 x 10^14")))
(line 40 200 300 200 'ink 1.5)
(for-range 0 3
  (lambda (i)
    (let* ((it (list-ref items i)) (h (* 11 (cadr it))) (x (+ 55 (* 85 i))))
      (rect x (- 200 h) 60 h 'cool) (frame x (- 200 h) 60 h 'ink 1)
      (text (+ x 30) (- 194 h) (caddr it) 'centre 'small 'bold)
      (text (+ x 30) 214 (car it) 'centre 'tiny))))
(text 40 24 "joules from 1 kg (powers of 10)" 'small)
(caption "Not to an even scale: each bar's height is its power of 10.")
```

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
```

```check
(choice
  (ask "About how many times more energy does a kilogram of fusion fuel release than a kilogram of gasoline?")
  (right "Millions of times")
  (wrong "About twice"
    "The bar is about twice as tall, but the heights are powers of 10. 3 x 10^14 / 5 x 10^7 is about 6 million.")
  (wrong "About 7 times"
    "Read the labels, not the heights: 10^14 against 10^7 is 10 million, times 3/5.")
  (hint "Divide 3 x 10^14 by 5 x 10^7."))
```

---

## Fusion on Earth

Fusion fuel is plentiful: deuterium comes from seawater, and tritium
can be made from lithium. Fusion also leaves far less long-lived
radioactive waste than fission. But holding a plasma at over 100
million kelvins long enough is very hard. Machines called tokamaks hold
it with strong magnetic fields; others crush tiny fuel pellets with
lasers. As of 2026, no fusion power plant supplies electricity to a
grid.

```sources
(source "US Department of Energy, Office of Science, DOE Explains: Fusion Reactions")
(source "ITER Organization, What is ITER?")
```

```check
(choice
  (ask "Why can a fusion reactor's plasma not simply be held in a steel container?")
  (right "At over 100 million kelvins it would cool on the walls and damage them, so it is held away from them by magnetic fields")
  (wrong "Steel is attracted to the plasma's neutrons"
    "Neutrons have no charge and are not held by anything magnetic. The problem is the plasma's enormous temperature.")
  (wrong "Plasma is too heavy for steel"
    "A fusion plasma is a very thin gas. Its danger is its temperature, so magnetic fields keep it off the walls.")
  (hint "What would happen where the plasma touched a wall?"))
```

---

## Practice

```check
(number
  (ask "Two hydrogen-2 nuclei (Z = 1) fuse into helium-3 (Z = 2) and one more particle. Its mass number is 2 + 2 - 3. What is it?")
  (answer 1) (from "2 + 2 - 3")
  (wrong-if 0 "The mass numbers must balance: 4 before, 3 in helium-3, so 1 is left for the other particle, a neutron.")
  (hint "Add the mass numbers before, and take away the helium-3."))
```

```check
(choice
  (ask "Which statement about fusion and fission is true?")
  (right "Fusion joins light nuclei and fission splits heavy ones; both release energy from lost mass")
  (wrong "Both join nuclei together"
    "Only fusion joins nuclei. Fission splits a heavy nucleus in two.")
  (wrong "Fusion needs a chain of neutrons, like fission"
    "Fusion needs very high temperatures, not a neutron chain reaction.")
  (hint "Light nuclei join; heavy nuclei split."))
```

---

In nuclear fusion light nuclei join and release energy from lost mass;
it needs temperatures of millions of kelvins to overcome their
repulsion, and it powers the sun.
