# Charging objects

```lesson
(objective "Explain charging by friction, contact and induction, polarization, and grounding.")
(standards "HS-PS3-5")
(minutes 25)
(keywords "charging by contact" "charging by induction" "polarization (of charge)" "grounding")
```

You can explain the ways an object becomes charged, and why a charged
object attracts a neutral one.

Every way of charging an object moves electrons; none makes charge.
The first way is **charging by friction**: rub two different materials
together, and electrons move from one to the other. One ends negative,
the other positive, by the same amount.

Which material takes the electrons depends on the pair. Rubbed on hair,
a rubber balloon takes electrons from the hair.

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(choice
  (ask "You rub a balloon on a wool sweater, and the balloon ends up negative. What charge does the sweater have?")
  (right "Positive, of the same size")
  (wrong "Negative, like the balloon"
    "The balloon's extra electrons came from the sweater. Losing electrons leaves the sweater positive.")
  (wrong "None: only the balloon is charged"
    "Charge is conserved. The electrons the balloon gained left the sweater, so the sweater is now positive.")
  (hint "Where did the balloon's extra electrons come from?"))
```

---

## Charging by contact

Touch a charged object to a neutral conductor, and some of the charge
spreads onto the conductor. Both end with charge of the same sign. This
is **charging by contact**.

Two metal spheres of the same size share the charge equally when they
touch, since the charges spread out to get as far apart as they can.

```check
(number
  (ask "Metal sphere A has a charge of +6 microcoulombs. It touches sphere B, the same size and neutral, and they are pulled apart. What is A's charge now, in microcoulombs?")
  (answer 3) (from "(6 + 0) / 2")
  (wrong-if 6 "Some of A's charge spreads onto B while they touch. Two equal spheres share the total equally.")
  (wrong-if 0 "A does not lose all its charge. The total, +6, is shared equally between the two spheres.")
  (hint "The total charge is +6 + 0. How is it shared between two equal spheres?"))
```

---

## Polarization

Bring a negative rod near a neutral metal sphere, without touching. The
rod pushes the sphere's free electrons to the far side. The near side is
left positive. This separation of charge is **polarization**.

The sphere is still neutral overall. But its positive side is closer to
the rod, and the force between charges is stronger when they are closer,
so the attraction wins: the rod pulls the sphere.

In an insulator, such as a wall, each atom's electrons shift only a
little. That is enough for a charged balloon to stick to the wall.

```figure
(define near (toggle 'near "Rod near" #t))
(define rx (if near 110 60))
(rect (- rx 50) 96 50 28 'grey)
(frame (- rx 50) 96 50 28 'ink 1)
(for-range 0 3 (lambda (i) (circle (+ rx -40 (* 15 i)) 110 6 'paper)
  (text (+ rx -40 (* 15 i)) 114 "-" 'centre 'small 'bold)))
(ring 200 110 46 'ink 1.5)
(define (sgn x y s) (text x (+ y 5) s 'centre 'body 'bold))
(if near
    (begin (sgn 166 90 "+") (sgn 160 110 "+") (sgn 166 130 "+")
           (sgn 234 90 "-") (sgn 240 110 "-") (sgn 234 130 "-")
           (arrow 150 160 120 160 'ink 2)
           (text 160 180 "pulled toward the rod" 'small 'centre))
    (begin (sgn 180 95 "+") (sgn 220 125 "+") (sgn 205 85 "+")
           (sgn 185 125 "-") (sgn 220 95 "-") (sgn 200 112 "-")))
(caption "A neutral metal sphere, and a negative rod.")
```

```check
(choice
  (ask "A negative rod is held near a neutral metal sphere. Which side of the sphere becomes positive?")
  (right "The side nearer the rod")
  (wrong "The side away from the rod"
    "The rod repels the sphere's electrons, pushing them to the far side. The far side becomes negative and the near side positive.")
  (wrong "Neither: the sphere stays neutral everywhere"
    "Overall it stays neutral, but its electrons are pushed away from the rod. So one side becomes positive and the other negative.")
  (hint "Like charges repel. Where do the sphere's electrons go?"))
```

---

## Grounding

Earth is so large that it can take or give any number of electrons
without its charge changing noticeably. Connecting an object to Earth
with a conductor is **grounding**. A grounded object loses its charge:
electrons flow to it or from it until it is neutral.

A lightning rod is grounded, and so is the metal case of many
appliances, so that charge flows to Earth and not through a person.

```sources
(source "OpenStax, Physics (2020), chapter 18, Static Electricity")
```

```check
(choice
  (ask "A positively charged metal sphere is grounded. What happens?")
  (right "Electrons flow from Earth onto the sphere until it is neutral")
  (wrong "Protons flow from the sphere into Earth"
    "In a metal, protons stay bound in their atoms. Electrons move instead: they flow up from Earth to cancel the positive charge.")
  (wrong "Nothing: Earth cannot take positive charge"
    "Earth can give electrons as easily as it takes them. They flow onto the sphere and make it neutral.")
  (hint "Only electrons move. Which way must they go to cancel a positive charge?"))
```

---

## Charging by induction

**Charging by induction** charges a conductor without touching it with
the charged object. Step through it with a negative rod:

1. Bring the rod near: the sphere polarizes.
2. Ground the far side: the pushed electrons flow away to Earth.
3. Remove the ground wire, with the rod still near.
4. Take the rod away: the positive charge left behind spreads out.

```figure
(define s (choice 'stage '("1" "2" "3" "4") "Stage"))
(define (sgn x y c) (text x (+ y 5) c 'centre 'body 'bold))
(if (< s 3)
    (begin (rect 20 96 50 28 'grey) (frame 20 96 50 28 'ink 1)
           (for-range 0 3 (lambda (i) (circle (+ 30 (* 15 i)) 110 6 'paper)
             (text (+ 30 (* 15 i)) 114 "-" 'centre 'small 'bold)))))
(ring 180 110 46 'ink 1.5)
(if (< s 3) (begin (sgn 146 90 "+") (sgn 140 110 "+") (sgn 146 130 "+"))
    (begin (sgn 180 74 "+") (sgn 140 125 "+") (sgn 220 125 "+")))
(if (= s 0) (begin (sgn 214 90 "-") (sgn 220 110 "-") (sgn 214 130 "-")))
(if (= s 1)
    (begin (path '(226 110 270 110 270 170) 'ink 1.5)
           (line 258 170 282 170 'ink 1.5) (line 262 176 278 176 'ink 1.5) (line 266 182 274 182 'ink 1.5)
           (arrow 250 104 266 104 'ink 1) (text 270 96 "electrons out" 'tiny 'centre)))
(caption (list-ref '("1: the rod polarizes the sphere." "2: grounded, its electrons leave."
                     "3: ground off; the + stays by the rod." "4: rod away; the sphere is +.") s))
```

```check
(choice
  (ask "A positive rod is used for charging by induction instead. What charge does the sphere end with?")
  (right "Negative")
  (wrong "Positive"
    "In charging by induction the sphere ends with the opposite sign to the rod. A positive rod pulls electrons up from Earth, and they stay.")
  (wrong "None"
    "Electrons came up from Earth while it was grounded, and the ground was cut before the rod left. So the sphere keeps them.")
  (hint "A positive rod attracts electrons. Which way do they flow through the ground wire?"))
```

---

## Practice

```check
(choice
  (ask "A charged balloon sticks to a neutral wall. Why?")
  (right "It polarizes the wall, and the opposite charges nearby attract it more than the like charges repel")
  (wrong "The wall is charged by friction"
    "Nothing rubbed the wall. The balloon's charge shifts the charges in the wall a little: that is polarization.")
  (wrong "Neutral things attract all charges equally"
    "A neutral object is attracted only because it is polarized: its opposite charge is pulled slightly closer to the balloon.")
  (hint "What does a charged object do to the charges in a neutral one nearby?"))
```

```check
(number
  (ask "Two equal metal spheres, with +8 and -2 microcoulombs, touch and are separated. What is each one's charge, in microcoulombs?")
  (answer 3) (from "(8 - 2) / 2")
  (wrong-if 5 "That adds 8 and 2. The second sphere's charge is negative: the total is 8 - 2 = 6.")
  (wrong-if 4 "That shares only the +8. The -2 cancels part of it first: the total is +6, shared by 2.")
  (hint "Add the charges with their signs, then share the total equally."))
```

```check
(choice
  (ask "In charging by contact with a negative rod, what charge does the metal sphere get?")
  (right "Negative, the same sign as the rod")
  (wrong "Positive, the opposite sign"
    "That is what induction gives. In contact, some of the rod's own electrons move onto the sphere, so it gets the rod's sign.")
  (hint "In contact, the rod's charge itself spreads onto the sphere."))
```

---

Friction and contact move charge onto or off an object, polarization
shifts it within one, grounding drains it to Earth, and induction uses
both to charge an object with the opposite sign.
