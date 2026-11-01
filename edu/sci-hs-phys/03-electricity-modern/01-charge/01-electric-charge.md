# Electric charge

```lesson
(objective "Describe positive and negative charge, that like charges repel and unlike attract, and that charge is conserved and comes in whole numbers of elementary charges.")
(standards "HS-PS3-5")
(minutes 20)
(keywords "electric charge" "coulomb (unit)" "elementary charge" "conservation of charge")
```

You can say what electric charge is, how charges push and pull, and why
charge never appears from nothing.

**Electric charge** is a property of matter that makes it push or pull
on other charged matter. It comes in two kinds, **positive** (+) and
**negative** (-). A proton carries positive charge and an electron
negative charge. A neutron carries none.

An atom normally has as many electrons as protons, so its charges
cancel: it is **neutral**. An object becomes charged when it has more electrons than
protons (negative) or fewer (positive).

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(choice
  (ask "A plastic comb has more electrons than protons. What is its charge?")
  (right "Negative")
  (wrong "Positive"
    "Electrons carry negative charge. Extra electrons give the comb more negative than positive charge, so it is negative.")
  (wrong "Neutral"
    "Neutral means the numbers of electrons and protons are equal. Here there are more electrons, so the charges do not cancel.")
  (hint "Which kind of charge does an electron carry?"))
```

---

## Like and unlike

Two charges of the same sign **repel**: each pushes the other away. Two
charges of opposite signs **attract**: each pulls the other closer.

Choose a pair and look at the forces. Each charge feels a force of the
same size, in opposite directions (Newton's third law).

```figure
(define k (choice 'pair '("+ and +" "+ and -" "- and -") "Charges"))
(define q1 (if (= k 2) -1 1))
(define q2 (if (= k 0) 1 -1))
(define like (> (* q1 q2) 0))
(el-charge 120 110 q1 16)
(el-charge 200 110 q2 16)
(if like
    (begin (arrow 100 110 50 110 'ink 2.5) (arrow 220 110 270 110 'ink 2.5))
    (begin (arrow 140 80 175 80 'ink 2.5) (arrow 180 140 145 140 'ink 2.5)
           (text 158 70 "force on left" 'tiny 'centre)
           (text 162 158 "force on right" 'tiny 'centre)))
(label 160 196 (if like "like charges: they repel" "unlike charges: they attract") 'body 'bold)
(caption "Arrows: the force on each charge.")
```

```check
(choice
  (ask "A negatively charged balloon is held near a negatively charged rod. What happens?")
  (right "They push each other apart")
  (wrong "They pull toward each other"
    "Opposite charges attract, but these are both negative. Like charges repel.")
  (wrong "Only the balloon feels a force"
    "Forces come in pairs. The rod pushes the balloon, and the balloon pushes the rod just as hard the other way.")
  (hint "Are the two charges the same sign or opposite signs?"))
```

---

## How much charge

Charge is measured in **coulombs** (C), the SI unit. A coulomb is a lot
of charge: a balloon rubbed on your hair carries only a tiny fraction
of one.

The charge of one proton is the **elementary charge**, $e$:

$$ e = 1.60 * 10^-19 C $$

An electron carries $-e$. An object gains or loses whole electrons, so
its charge is always a whole number of elementary charges: $3e$ or
$-200e$, never $2.5e$.

```sources
(source "NIST, CODATA Recommended Values of the Fundamental Physical Constants (2018): elementary charge, 1.602176634 x 10^-19 C, exact")
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(number
  (ask "A dust grain has lost electrons. Its charge is" (math "+8.0 * 10^-19") "C. How many electrons did it lose?")
  (answer 5) (from "(8.0 * 10^-19) / (1.60 * 10^-19)")
  (wrong-if 0.2 "That divides e by the charge. Divide the charge by e: how many elementary charges fit in it?")
  (hint "Each lost electron leaves a charge of +e behind.")
  (hint "Divide 8.0 by 1.60: the powers of 10 are the same and cancel."))
```

---

## Charge is moved, not made

When you rub a balloon on your hair, electrons move from your hair to
the balloon. The balloon becomes negative. Your hair is left with too
few electrons, so it becomes positive, by exactly the same amount.

This is the **conservation of charge**: in an isolated system, the total
charge never changes. Charge can move from one object to another, but it
is never made or destroyed.

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(number
  (ask "A cloth rubs a rod. The cloth starts neutral and ends with a charge of -0.05 microcoulombs. The rod started neutral too. What is the rod's charge now, in microcoulombs?")
  (answer 0.05) (from "0 - (-0.05)")
  (wrong-if -0.05 "The electrons the cloth gained came from the rod. The rod lost them, so its charge has the opposite sign.")
  (wrong-if 0 "Charge moved from the rod to the cloth. The total stays 0, so the rod must hold the opposite of the cloth's charge.")
  (hint "The total charge started at 0 and stays 0.")
  (hint "Cloth + rod = 0. The cloth has -0.05."))
```

---

## Counting electrons

```example
(example
  (problem "A metal sphere has a charge of -3.2 x 10^-18 C. How many extra electrons does it carry?")
  (step "Each extra electron adds a charge of -e, or -1.60 x 10^-19 C.")
  (step "Number of electrons = charge / (-e) = (-3.2 x 10^-18) / (-1.60 x 10^-19).")
  (step "3.2 / 1.60 = 2, and 10^-18 / 10^-19 = 10.")
  (answer "2 x 10 = 20 extra electrons."))
```

```example
(example
  (problem "A sphere has a charge of -4.8 x 10^-18 C. How many extra electrons does it carry?")
  (step "Number of electrons = (-4.8 x 10^-18) / (-1.60 x 10^-19).")
  (step "4.8 / 1.60 = 3, and 10^-18 / 10^-19 = 10.")
  (step (number (ask "How many extra electrons?") (answer 30)
          (from "(4.8 * 10^-18) / (1.60 * 10^-19)")
          (wrong-if 3 "That is 4.8 / 1.60 alone. The powers of 10 do not cancel: 10^-18 is 10 times 10^-19.")))
  (answer "30 extra electrons."))
```

---

## Practice

```check
(choice
  (ask "Which of these could be the charge on a speck of dust?")
  (right "+4.8 x 10^-19 C, which is +3e")
  (wrong "+2.4 x 10^-19 C, which is +1.5e"
    "That is 1 and a half elementary charges. Objects gain or lose whole electrons, so a charge is always a whole number of e.")
  (wrong "+8.0 x 10^-20 C, which is +0.5e"
    "Half an electron cannot be removed. Every charge on an object is a whole number of elementary charges.")
  (hint "Divide each charge by e. Which gives a whole number?"))
```

```check
(choice
  (ask "A glass rod rubbed with silk becomes positive. What happened?")
  (right "Electrons moved from the glass to the silk")
  (wrong "Protons moved from the silk to the glass"
    "In a solid, the protons stay bound inside their atoms. It is electrons that move when things rub.")
  (wrong "The rubbing made new positive charge"
    "Charge is never made. The glass lost electrons, and the silk gained exactly as many.")
  (hint "Which particles are free to move from one object to another?"))
```

```check
(number
  (ask "An object has 1,000 more electrons than protons. What is its charge, in units of e? (Give the sign.)")
  (answer -1000) (from "-1 * 1000")
  (wrong-if 1000 "Electrons are negative. Extra electrons make the charge negative: -1000e.")
  (hint "Each extra electron adds -e."))
```

---

Charge is positive or negative, like charges repel and unlike attract,
it comes in whole elementary charges, and it is only ever moved, never
made.
