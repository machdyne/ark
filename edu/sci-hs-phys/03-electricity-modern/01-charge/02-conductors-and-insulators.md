# Conductors and insulators

```lesson
(objective "Explain conductors, insulators and semiconductors by how freely electrons move in them.")
(standards "HS-PS2-6")
(minutes 20)
(keywords "conductor (of electricity)" "insulator (of electricity)" "semiconductor")
```

You can explain why charge flows through some materials and not others,
from how their electrons are held.

In a metal, each atom lets go of one or more of its outer electrons.
These **free electrons** wander through the whole piece of metal, not
tied to any one atom. A material in which charge can move easily is a
**conductor**. Metals such as copper, aluminum and silver are good
conductors.

Switch the figure between a metal and a plastic, and watch the
electrons.

```figure
(define k (choice 'mat '("Metal" "Plastic") "Material"))
(still
  (frame 30 30 260 160 'ink 1.5)
  (for-range 0 20
    (lambda (i) (circle (+ 56 (* 52 (modulo i 5))) (+ 56 (* 36 (quotient i 5))) 9 'grey)))
  (caption "Grey: atoms. Dots: electrons. Slowed down a great deal."))
(define t (seconds))
(define (fr u) (- u (floor u)))
(for-range 0 12
  (lambda (i)
    (if (= k 0)
        (dot (+ 36 (* 248 (fr (+ (* i 0.37) (* t (+ 0.03 (* 0.006 (modulo i 5))) (if (odd? i) 1 -1))))))
             (+ 74 (* 36 (modulo i 4)) (* 7 (sin (+ i (* 1.3 t)))))
             'ink)
        (let ((ax (+ 56 (* 52 (modulo (* i 3) 5)))) (ay (+ 56 (* 36 (modulo i 4)))))
          (dot (+ ax (* 13 (cos (+ i (* 2 t))))) (+ ay (* 13 (sin (+ i (* 2 t))))) 'ink)))))
(label 160 210 (if (= k 0) "free electrons wander everywhere" "each electron stays by its atom") 'small 'bold)
```

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(choice
  (ask "Why does copper conduct electric charge well?")
  (right "Some of its electrons are free to move through the whole metal")
  (wrong "Its atoms move along the wire"
    "The atoms of a solid metal stay in their places. It is the free electrons that move through the metal.")
  (wrong "It is full of extra positive charge"
    "A copper wire is normally neutral. It conducts because some of its electrons are free to move, not because it is charged.")
  (hint "Look at the metal in the figure. What moves, and what stays put?"))
```

---

## Insulators

In plastic, rubber, glass, dry wood and dry air, every electron is held
tightly by its own atom. Charge cannot move through the material. Such a
material is an **insulator**.

That is why a rubbed balloon stays charged: the extra electrons stay
where the rubbing put them. On a metal, charge spreads out over the
whole surface at once.

```check
(choice
  (ask "You rub one end of a plastic rod. Where is the charge a moment later?")
  (right "Still at the end you rubbed")
  (wrong "Spread evenly over the whole rod"
    "That is what happens on a metal, a conductor. In plastic the electrons are held by their atoms, so the charge stays put.")
  (wrong "Gone into the air at once"
    "Dry air is an insulator too. The charge stays on the rod for a long time, especially in dry weather.")
  (hint "Plastic is an insulator. Can charge move through it?"))
```

---

## Semiconductors

A **semiconductor**, such as silicon, conducts better than an insulator
and much worse than a metal. Few of its electrons are free at room
temperature, but more break free when it is warmed or when light falls
on it.

Adding a tiny amount of another element to silicon also changes how well
it conducts. That control is why semiconductors are used to make
computer chips and light-emitting diodes (LEDs).

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
(source "Feynman, Leighton and Sands, The Feynman Lectures on Physics, Volume III (1965), chapter 14, Semiconductors")
```

```check
(choice
  (ask "A piece of silicon is warmed. What happens to how well it conducts?")
  (right "It conducts better: more electrons are freed")
  (wrong "It conducts worse, like a metal"
    "A metal does conduct a little worse when hot. In a semiconductor, heat frees more electrons, and that matters more.")
  (wrong "Nothing changes"
    "A semiconductor is sensitive to heat and light. Warming it frees more electrons to carry charge.")
  (hint "What does warming do to the number of free electrons in a semiconductor?"))
```

---

## Using both

A power cord is copper wire inside a plastic coat. The copper carries
charge where it is needed; the plastic keeps it from reaching your
hand. Water with salts in it conducts, and so does your body, which is
mostly salty water.

```warn
(warn "Damaged cords" "Never touch or use a cord whose plastic coat is cracked or worn through to the metal: charge can flow from the bare wire through your body. Leave it unplugged and ask an adult to replace it.")
```

```check
(choice
  (ask "Why is the copper in a cord covered in plastic?")
  (right "Plastic is an insulator, so charge cannot flow from the wire into a person")
  (wrong "Plastic helps the charge flow faster"
    "Plastic holds its electrons tightly. It does not help charge flow; it stops charge from leaving the copper.")
  (wrong "Plastic is a semiconductor that controls the flow"
    "Plastic is an insulator. Semiconductors are materials like silicon.")
  (hint "Which material is the conductor, and which the insulator?"))
```

---

## Practice

```check
(choice (several)
  (ask "Which of these are good conductors? Choose every one.")
  (right "Aluminum foil")
  (right "Salt water")
  (wrong "A rubber band"
    "Rubber holds its electrons tightly. It is an insulator, used for gloves and coats on wires.")
  (wrong "Dry glass"
    "Glass is an insulator: its electrons are bound to their atoms.")
  (hint "Metals, and water with salts in it, let charge move."))
```

```check
(choice
  (ask "A material conducts a little, and conducts much better in bright light. What is it most likely to be?")
  (right "A semiconductor")
  (wrong "A metal"
    "A metal already conducts very well, with many free electrons; light hardly changes it.")
  (wrong "An insulator"
    "An insulator hardly conducts at all, even in light. A material that conducts a little and more in light is a semiconductor.")
  (hint "Which kind of material frees more electrons when light falls on it?"))
```

```check
(choice
  (ask "A charged metal sphere stands on a glass rod. Why does it keep its charge?")
  (right "Glass is an insulator, so the charge cannot flow away through the rod")
  (wrong "Metal is an insulator"
    "Metal is a conductor: the charge spreads over the whole sphere. It is the glass under it that stops the charge leaving.")
  (wrong "Charge never leaves an object"
    "Charge can flow away through any conductor that touches the object. Here the only support is glass, an insulator.")
  (hint "Which part touches the sphere, and is it a conductor or an insulator?"))
```

---

Conductors have free electrons, insulators hold theirs tightly, and
semiconductors free more electrons with heat, light or a little of
another element.
