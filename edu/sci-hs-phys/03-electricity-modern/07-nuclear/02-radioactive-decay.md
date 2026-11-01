# Radioactive decay

```lesson
(objective "Describe alpha, beta and gamma decay, and balance a nuclear equation.")
(standards "HS-PS1-8")
(minutes 30)
(keywords "radioactive decay" "alpha decay" "beta decay" "gamma decay")
```

You can describe the three common ways an unstable nucleus changes, and
check that a nuclear change balances.

Many nuclei are stable and never change. Others are unstable: sooner or
later, each one changes into a different nucleus, giving out radiation
as it does. This is **radioactive decay**. It happens by itself, and
heating, pressing or chemical reactions do not noticeably change how
fast it happens.

```sources
(source "OpenStax, Physics (2020), chapter 22, The Atom")
(source "US Environmental Protection Agency, Radioactive Decay")
```

```check
(choice
  (ask "A sample of a radioactive element is heated strongly. What happens to how fast its nuclei decay?")
  (right "Nothing noticeable: decay is not changed by heating or chemistry")
  (wrong "It speeds up, like a chemical reaction"
    "Chemical reactions involve electrons, which heat affects. Decay happens inside the nucleus, and ordinary heating does not reach it.")
  (wrong "It stops"
    "Nothing ordinary stops decay. Each unstable nucleus decays sooner or later, whatever its surroundings.")
  (hint "Decay happens in the nucleus, not among the electrons."))
```

---

## Alpha decay

In **alpha decay**, a nucleus throws out an alpha particle: 2 protons
and 2 neutrons together, a helium-4 nucleus. So the nucleus loses 4
from its mass number and 2 from its atomic number, and becomes a
different element. Uranium-238 decays this way:

| | mass number A | atomic number Z |
|---|---|---|
| uranium-238 | 238 | 92 |
| becomes thorium-234 | 234 | 90 |
| plus helium-4 | 4 | 2 |

The totals balance: $234 + 4 = 238$ and $90 + 2 = 92$.

```check
(number
  (ask "Radium-226 (Z = 88) goes through alpha decay. What is the atomic number of the new nucleus?")
  (answer 86) (from "88 - 2")
  (wrong-if 84 "That takes 4 from Z. An alpha particle has 4 particles in all but only 2 protons, so Z drops by 2.")
  (wrong-if 222 "That is the new mass number, 226 - 4. The atomic number drops by 2.")
  (hint "An alpha particle carries 2 protons."))
```

---

## Beta decay

In **beta decay**, the common kind this course treats, a neutron in the
nucleus turns into a proton and an electron. The electron, called a beta particle, is thrown out at high
speed, with a tiny neutral particle, an antineutrino. The mass number
stays the same, and the atomic number goes up by 1. Carbon-14 decays
this way into nitrogen-14.

```check
(choice
  (ask "Carbon-14 (Z = 6) goes through beta decay. What does it become?")
  (right "Nitrogen-14 (Z = 7)")
  (wrong "Carbon-13 (Z = 6)"
    "In beta decay no particle of the nucleus leaves: a neutron turns into a proton. So A stays 14, and Z rises to 7.")
  (wrong "Boron-14 (Z = 5)"
    "A neutron turns into a proton, so the number of protons goes up, not down: Z = 7.")
  (hint "One neutron becomes a proton."))
```

---

## Gamma decay

After a decay, a nucleus is often left with extra energy. It gives this
energy out as a gamma-ray photon: **gamma decay**. A photon has no
charge and no mass number, so $A$ and $Z$ do not change; the nucleus
only loses energy.

```check
(choice
  (ask "A nucleus gives out a gamma ray. What happens to its mass number and atomic number?")
  (right "Neither changes")
  (wrong "Both drop by 1"
    "A gamma ray is a photon, with no charge and no protons or neutrons. The nucleus keeps them all and only loses energy.")
  (wrong "The atomic number goes up by 1"
    "That is beta decay. A gamma ray changes neither number.")
  (hint "What is a gamma ray made of?"))
```

---

## Balancing a nuclear equation

In every nuclear change, the mass numbers add up to the same total on
both sides, and so do the atomic numbers (counting an electron as
$Z = -1$ and $A = 0$).

```example
(example
  (problem "Thorium-234 (Z = 90) goes through beta decay. What nucleus does it become?")
  (step "Beta decay: A stays the same, 234.")
  (step "Z goes up by 1: 90 + 1 = 91.")
  (step "Check: 234 = 234 + 0, and 90 = 91 + (-1). Element 91 is protactinium.")
  (answer "Protactinium-234."))
```

```example
(example
  (problem "Polonium-210 (Z = 84) goes through alpha decay. What nucleus does it become?")
  (step "Alpha decay: A drops by 4, to 206, and Z drops by 2.")
  (step (number (ask "What is the new atomic number?") (answer 82) (from "84 - 2")
          (wrong-if 80 "Z drops by 2, the protons in the alpha particle, not by 4.")))
  (answer "Element 82 is lead: lead-206."))
```

---

## Stopping the radiation

The three kinds of radiation get through matter very differently.
Alpha particles are stopped by a sheet of paper or the outer layer of
skin. Beta particles get through paper but are stopped by a few
millimeters of aluminum. Gamma rays get through much more, and need
thick lead or concrete to cut them down.

Alpha emitters are most harmful inside the body, if they are breathed
in or swallowed.

```warn
(warn "Radioactive sources" "Never open a smoke detector or handle any radioactive material. Some smoke detectors hold a small radioactive source that is safe inside its case but harmful if the case is broken. Learn about radiation in simulations like these.")
```

```sources
(source "US Nuclear Regulatory Commission, Backgrounder on Smoke Detectors")
(source "US Environmental Protection Agency, Radiation Basics")
```

```check
(choice
  (ask "Which radiation is stopped by a sheet of paper?")
  (right "Alpha particles")
  (wrong "Beta particles"
    "Beta particles get through paper; it takes a few millimeters of aluminum to stop them.")
  (wrong "Gamma rays"
    "Gamma rays pass through paper easily. Thick lead or concrete is needed to cut them down.")
  (hint "Which is the biggest and slowest of the three?"))
```

---

## Practice

```check
(number
  (ask "Uranium-238 (Z = 92) goes through alpha decay. What is the mass number of the new nucleus?")
  (answer 234) (from "238 - 4")
  (wrong-if 236 "That takes 2 from A. An alpha particle has 4 particles: 2 protons and 2 neutrons.")
  (hint "An alpha particle has a mass number of 4."))
```

```check
(choice
  (ask "In which decay does the atomic number go up by 1?")
  (right "Beta decay")
  (wrong "Alpha decay"
    "Alpha decay lowers the atomic number by 2.")
  (wrong "Gamma decay"
    "Gamma decay changes neither number.")
  (hint "Which decay turns a neutron into a proton?"))
```

```check
(number
  (ask "Bismuth-212 (Z = 83) goes through beta decay. What is the atomic number of the new nucleus?")
  (answer 84) (from "83 + 1")
  (wrong-if 82 "In beta decay a neutron becomes a proton, so Z goes up by 1.")
  (hint "One more proton."))
```

---

Unstable nuclei decay on their own: alpha decay lowers $A$ by 4 and $Z$
by 2, beta decay raises $Z$ by 1, gamma decay changes neither, and the
totals of $A$ and $Z$ always balance.
