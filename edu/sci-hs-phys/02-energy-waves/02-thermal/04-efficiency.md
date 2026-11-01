# Efficiency

```lesson
(objective "Compute the efficiency of a device that converts energy, and explain why it is always under 100%.")
(standards "HS-PS3-3")
(minutes 25)
(keywords "efficiency")
```

You learn to measure how much of the energy a device takes in comes
out as the energy you want, and why it is never all of it.

A device takes in energy in one form and gives out energy in another:
a motor, a winch, a car engine. The energy you want from it is the
useful output. The rest leaves in forms you did not want, mostly as
thermal energy. A device's **efficiency** is the fraction of its input
energy that comes out as useful energy. With $E_u$ the useful energy
out and $E_i$ the energy in:

$$ e = E_u / E_i * 100% $$

```sources
(source "OpenStax, College Physics 2e (2022), section 7.8, Work, Energy, and Power in Humans (efficiency), and section 15.3, Heat Engines and Their Efficiency")
```

```check
(number
  (ask "A motor takes in 500 J and does 400 J of useful work. What is its efficiency, in percent?")
  (answer 80) (unit "%") (from "400 / 500 * 100")
  (wrong-if 125 "That is input divided by output. Efficiency is useful output divided by input, so it can never be over 100%.")
  (wrong-if 100 "Energy is conserved, but not all of it is useful. 100 J leaves as thermal energy, so only 400 of 500 J are useful.")
  (hint "Efficiency = 400 / 500, as a percent."))
```

---

## A ramp with friction

You push a 10 kg box up a ramp 4.0 m long to a height of 2.0 m, at a
steady speed. The useful energy is the box's gain in potential energy,
$m g h = 196$ J. Friction turns the rest of your work into thermal
energy. Change the coefficient of friction.

```figure
(define mu (slider 'mu 0 0.6 0.3 "Friction mu" 0.05))
(define useful 196)
(define input (+ 196 (* mu 10 9.8 0.866 4)))
(line 30 140 166 61 'ink 2)
(wv-surface 20 175 140 #f)
(line 166 61 166 140 'grey 1)
(poly '(95 102 113 92 103 74 85 85) 'grey)
(text 110 132 "4.0 m long" 'small)
(text 162 120 "2.0 m" 'right 'small)
(wv-bars 196 200 120 400 (list (list "in" input 'cool) (list "useful" useful 'warm) (list "Et" (- input useful) 'grey)))
(text 90 180 (string-append "efficiency = " (fmt (* 100 (/ useful input)) 0) "%") 'centre 'body 'bold)
(caption "Steady speed: your work = useful + thermal energy.")
```

```check
(choice
  (ask "What happens to the ramp's efficiency as friction grows?")
  (right "It falls, because more of your work becomes thermal energy")
  (wrong "It stays the same, since the box still rises 2.0 m"
    "The useful output stays 196 J, but the input grows: you push harder against friction. A bigger input for the same output is a lower efficiency.")
  (wrong "It rises, because you put in more energy"
    "More input with the same useful output means a smaller fraction is useful.")
  (hint "Efficiency = useful / input. Which one changes with friction?"))
```

---

## Why never 100%

Energy is conserved, so output can never exceed input. In real devices
it is always less:

- Every moving part has some friction, which turns some energy into thermal energy.
- An engine that runs on thermal energy, such as a car engine, must give some of it to its colder surroundings. By the second law of thermodynamics, no such engine can turn all of it into work.

The thermal energy spreads into the surroundings, where it can no
longer be used to do work.

```sources
(source "OpenStax, College Physics 2e (2022), section 15.3, Introduction to the Second Law of Thermodynamics: Heat Engines and Their Efficiency")
```

```check
(choice
  (ask "An inventor claims a machine that gives out 1,200 J of work for every 1,000 J it takes in. What do you conclude?")
  (right "The claim is false: output cannot exceed input")
  (wrong "It is possible, with an efficiency of 120%"
    "That would make 200 J from nothing, which conservation of energy forbids. Real efficiencies are always under 100%.")
  (wrong "It is possible if the machine has no friction"
    "With no friction at all, the best a machine could do is give out what it takes in. It can never give out more.")
  (hint "Where would the extra 200 J come from?"))
```

---

## Worked example

```example
(example
  (problem "A winch takes in 2,000 J to lift an 80 kg crate 2.0 m. What is its efficiency?")
  (step "Useful output: m g h = 80 * 9.8 * 2.0 = 1,568 J.")
  (step "Efficiency = 1,568 / 2,000 = 0.784.")
  (answer "78.4%"))
```

```example
(example
  (problem "A pump has an efficiency of 60%. How much energy must it take in to lift water with 3,000 J of useful work?")
  (step "Efficiency = output / input, so input = output / efficiency.")
  (step (number (ask "Input, in joules?") (answer 5000) (unit "J") (from "3000 / 0.60")
    (wrong-if 1800 "That is 60% of 3,000. The input must be larger than the output, since only 60% of it becomes useful.")
    (hint "3,000 / 0.60.")))
  (answer "5,000 J"))
```

---

## Practice

```check
(number
  (ask "A crane's engine takes in 50,000 J while it lifts a 500 kg beam 6.0 m. What is its efficiency, to the nearest percent?")
  (answer 59) (within 0.5) (unit "%") (from "500 * 9.8 * 6.0 / 50000 * 100")
  (wrong-if 6 "That uses m h without g. The useful energy is m g h = 29,400 J.")
  (wrong-if 170 "That is input over output. Efficiency is the useful output over the input.")
  (hint "Useful output: 500 * 9.8 * 6.0 = 29,400 J.")
  (hint "29,400 / 50,000."))
```

```check
(choice
  (ask "You want to make the ramp lift more efficient. Which change helps?")
  (right "Put rollers under the box to cut friction")
  (wrong "Use a longer, gentler ramp to the same height"
    "A longer ramp needs less force, but friction acts over a longer path. With the same rough surface, the thermal losses grow.")
  (wrong "Push faster"
    "Pushing faster does not cut friction, and it gives the box kinetic energy you did not need at the top.")
  (hint "Where does the wasted energy come from?"))
```

So: efficiency is useful energy out over energy in, and friction and
the second law keep every real device below 100%.
