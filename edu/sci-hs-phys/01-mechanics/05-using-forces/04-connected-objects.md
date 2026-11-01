# Connected objects

```lesson
(objective "Treat connected objects as one system to find their acceleration, then the tension between them.")
(standards "HS-PS2-1")
(minutes 30)
(keywords "system (of objects)" "internal force" "external force")
```

You can find how fast linked objects speed up by treating them as one, then find the pull between them.

Two carts joined by a string are pulled along a smooth track. They move together, with the same acceleration. You can choose to treat them as one: a **system**, a set of objects you choose to study together.

- An **external force** acts on the system from outside it: the hand's pull, gravity, the track's push.
- An **internal force** acts between two parts of the system: here, the string pulling on each cart.

Internal forces come in third-law pairs inside the system, so they cancel when you add up the forces on the whole system.

```check
(choice
  (ask "Take the two carts and the string as the system. Which force is external?")
  (right "The hand pulling the front cart")
  (wrong "The string pulling the back cart forward"
    "Both the string and the back cart are inside the system, so that pull is internal.")
  (wrong "The string pulling the front cart backward"
    "That is also between two parts of the system: internal. It is the partner of the string's pull on the back cart.")
  (hint "Which force comes from outside the carts and string?"))
```

---

## The whole system first

For the whole system, only external forces count. Along the track that is just the pull $F$, and the mass is the total:

$$ a = F / (m_1 + m_2) $$

```figure
(define F (slider 'F 0 30 15 "Pull (N)" 1))
(define a (/ F 5))
(define T (* 2 a))
(line 10 160 310 160 'ink 2)
(mc-cart 80 160 'grey)
(label 80 132 "2 kg")
(mc-cart 190 160 'cool)
(label 190 132 "3 kg")
(line 98 146 172 146 'ink 1.5)
(if (> F 0) (mc-vec 208 146 (* 3 F) 0 'ink "F"))
(text 160 50 (string-append "a = " (fmt F 0) " / 5 = " (fmt a 1) " m/s²") 'centre 'small 'bold)
(text 160 76 (string-append "string tension = 2 x " (fmt a 1) " = " (fmt T 1) " N") 'centre 'small)
(caption "Smooth track; the string joins the carts")
```

```check
(number
  (ask "The hand pulls with 15 N. What is the acceleration of the carts?")
  (answer 3) (unit "m/s²") (from "15 / (2 + 3)")
  (wrong-if 5 "That divides by the front cart's 3 kg only. The hand speeds up both carts: 5 kg in all.")
  (wrong-if 7.5 "That divides by the back cart's mass only. Use the total mass, 5 kg.")
  (hint "a = F / (m_1 + m_2)."))
```

---

## Then the tension

To find the string's tension, choose a smaller system: the back cart alone. The only force along the track on it is the string's pull, $T$, so

$$ T = m_(back) a $$

With 15 N, the back cart's 2 kg needs $T = 2 * 3 = 6$ N.

```check
(number
  (ask "The hand pulls with 20 N. What is the tension in the string?")
  (answer 8) (unit "N") (from "2 * 20 / 5")
  (wrong-if 20 "The string does not pull with the hand's full force: it only speeds up the 2 kg back cart.")
  (wrong-if 12 "That is the net force on the front cart, 3 kg x 4 m/s². The string pulls the 2 kg cart.")
  (hint "First a = 20 / 5.")
  (hint "T = 2 kg x a."))
```

---

## A hanging mass

A 3 kg block on a smooth table is tied to a 1 kg block hanging over a pulley. Take both blocks as the system. The only external force that moves them is the hanging block's weight, $1 * 9.8 = 9.8$ N, pulling 4 kg in all:

$$ a = (1 * 9.8) / (3 + 1) = 2.45 $$

in m/s².

```check
(number
  (ask "What is the tension in the string? Round to the nearest hundredth.")
  (answer 7.35) (within 0.006) (unit "N") (from "3 * 9.8 / 4")
  (wrong-if 9.8 "That would hold the hanging block still. It is speeding up downward, so the string pulls less than its weight.")
  (hint "The string alone speeds up the 3 kg block.")
  (hint "T = 3 x 2.45."))
```

---

## A worked example

```example
(example
  (problem "A locomotive pulls two cars, each 20,000 kg, along a level track with a net forward force of 12,000 N on the whole train of cars. Find the cars' acceleration and the coupling force between the two cars.")
  (step "System: both cars, 40,000 kg. a = 12,000 / 40,000 = 0.3 m/s².")
  (step "System: the last car alone. Only the coupling pulls it forward.")
  (step "Coupling force = 20,000 x 0.3 = 6,000 N.")
  (answer "a = 0.3 m/s²; the coupling pulls with 6,000 N"))
```

Now you finish one.

```check
(number
  (ask "Three equal 1 kg blocks in a row are pushed from the back with 9 N across a smooth floor. What force does the middle block push the front block with?")
  (answer 3) (unit "N") (from "1 * 9 / 3")
  (wrong-if 9 "The front block needs only enough force to give its own 1 kg the shared acceleration, 3 m/s².")
  (wrong-if 6 "That is the push on the middle block, which moves two blocks. The front block alone needs 1 kg x 3 m/s².")
  (hint "First a = 9 / 3.")
  (hint "The front block: 1 kg x a."))
```

---

## Practice

```check
(number
  (ask "Two boxes, 4 kg and 6 kg, are tied together and pulled across a smooth floor with 25 N. What is their acceleration?")
  (answer 2.5) (within 0.001) (unit "m/s²") (from "25 / (4 + 6)")
  (wrong-if 6.25 "That uses only the 4 kg box. The pull speeds up both: 10 kg in all.")
  (hint "Use the total mass."))
```

```check
(choice
  (ask "When you add up the forces on a whole system, why can you leave out the internal forces?")
  (right "They come in equal and opposite third-law pairs inside the system, so they add to 0")
  (wrong "They are too small to matter"
    "Internal forces can be large; a coupling may pull with thousands of newtons. They drop out because each pair cancels.")
  (wrong "They do not exist until the system moves"
    "Internal forces exist whenever the parts push or pull on each other, moving or not.")
  (hint "Think of Newton's third law."))
```

```check
(number
  (ask "A 2 kg block on a smooth table is tied over a pulley to a 2 kg hanging block. What is their acceleration?")
  (answer 4.9) (within 0.001) (unit "m/s²") (from "2 * 9.8 / (2 + 2)")
  (wrong-if 9.8 "The hanging block's weight has to speed up both blocks, 4 kg, not just itself.")
  (hint "a = (hanging weight) / (total mass)."))
```

---

So for connected objects, treat them as one system, where internal forces cancel, to find the shared acceleration; then take one part alone to find the force between them.
