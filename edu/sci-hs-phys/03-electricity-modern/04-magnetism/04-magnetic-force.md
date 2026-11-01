# The force on a current

```lesson
(objective "Find the force on a current in a magnetic field, F = BIL, and its direction.")
(standards "HS-PS3-5" "HSA-CED.A.4")
(minutes 25)
(keywords "magnetic force" "tesla")
```

You can work out the push a magnetic field gives a wire that carries a
current, and which way it pushes.

A current makes a magnetic field, so a wire with a current feels a
force from a magnet, as two magnets do. This push is a
**magnetic force**. For a straight wire at right angles to a field,

$$ F = B I L $$

$I$ is the current, $L$ the length of wire in the field, and $B$ the
strength of the field, in **teslas** (T). A field of 1 T pushes 1 N on
each meter of wire carrying 1 A. Earth's field at the surface is about
$5 * 10^-5$ T; a hospital MRI scanner's is often 1.5 T or 3 T.

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
(source "NOAA National Centers for Environmental Information, Geomagnetism: frequently asked questions")
(source "National Institute of Biomedical Imaging and Bioengineering (NIH), Magnetic Resonance Imaging (MRI)")
```

```check
(number
  (ask "A wire 0.5 m long carries 3 A at right angles to a field of 0.2 T. What is the force on it, in newtons?")
  (answer 0.3) (from "0.2 * 3 * 0.5") (unit "N")
  (wrong-if 1.2 "That multiplies 0.2 by 3 and divides by 0.5. All three multiply: F = B I L.")
  (wrong-if 3.7 "That adds them. F = B I L is a product.")
  (hint "F = B I L."))
```

---

## Which way?

The force is at right angles to both the current and the field. To
find it, hold your right hand flat: fingers along the field, thumb
along the current. The force pushes out of your palm.

In the figure, crosses show a field pointing into the screen ("In");
dots show one pointing out of it ("Out").

```figure
(define fd (choice 'b '("In" "Out") "Field"))
(define cd (choice 'c '("Right" "Left") "Current"))
(define i (slider 'i 0 4 2 "Current (A)" 1))
(define up (= fd cd))
(for-range 0 5
  (lambda (r)
    (for-range 0 7
      (lambda (c)
        (let ((x (+ 40 (* 40 c))) (y (+ 30 (* 40 r))))
          (if (not (= r 2))
              (if (= fd 0)
                  (begin (line (- x 4) (- y 4) (+ x 4) (+ y 4) 'grey 1) (line (- x 4) (+ y 4) (+ x 4) (- y 4) 'grey 1))
                  (begin (ring x y 4 'grey 1) (dot x y 'grey)))))))))
(line 20 110 300 110 'ink 3)
(if (> i 0)
    (begin
      (if (= cd 0) (arrow 230 98 280 98 'ink 1.5) (arrow 90 98 40 98 'ink 1.5))
      (text (if (= cd 0) 255 65) 90 "I" 'centre 'small 'bold)
      (arrow 160 110 160 (if up (- 110 (* 18 i)) (+ 110 (* 18 i))) 'ink 3)
      (text 172 (if up 40 190) "F" 'small 'bold)))
(caption "Field 0.5 T; 0.4 m of wire; F = BIL.")
(text 300 18 (string-append "F = " (fmt (* 0.5 i 0.4) 1) " N") 'right 'small 'bold)
```

```check
(choice
  (ask "The field points into the screen and the current flows to the right. Which way is the force on the wire?")
  (right "Up, toward the top of the screen")
  (wrong "Down, toward the bottom of the screen"
    "Fingers into the screen, thumb to the right: your right palm faces up. Check it in the figure.")
  (wrong "Into the screen, along the field"
    "The magnetic force is always at right angles to the field, never along it.")
  (wrong "To the right, along the current"
    "The force is at right angles to the current too. It pushes the wire sideways.")
  (hint "Fingers along the field (into the screen), thumb along the current (right). Which way does your palm face?"))
```

---

## Along the field: no force

The force is greatest when the wire crosses the field at a right angle.
A wire running along the field, parallel to it, feels no force at all.
At other angles, only the part of the field across the wire counts.

```check
(choice
  (ask "A wire carrying 5 A lies along a magnetic field, parallel to it. What force does the field put on it?")
  (right "None")
  (wrong "B I L, the most it can be"
    "F = B I L is for a wire at right angles to the field. Along the field, the force is zero.")
  (wrong "Half of B I L"
    "Parallel to the field the force is zero, not half. It is greatest at right angles.")
  (hint "Is the wire crossing the field, or running along it?"))
```

---

## A rod across a field

```example
(example
  (problem "A metal rod 0.1 m long, carrying 20 A, lies across a field of 0.8 T at right angles. Find the force on it.")
  (step "F = B I L.")
  (step "F = 0.8 x 20 x 0.1 = 1.6 N.")
  (answer "1.6 N, at right angles to the rod and to the field."))
```

```example
(example
  (problem "A wire 2 m long carries 10 A across Earth's field, 5 x 10^-5 T, at right angles. Find the force.")
  (step "F = B I L = 5 x 10^-5 x 10 x 2.")
  (step (number (ask "What is the force, in newtons?") (answer 0.001) (from "5 * 10^-5 * 10 * 2")
          (wrong-if 100 "The field is 5 x 10^-5 T, not 5 T: a very weak field, so the force is tiny.")))
  (answer "0.001 N: Earth's field is weak."))
```

---

## Practice

```check
(number
  (ask "A force of 0.6 N acts on a wire 0.3 m long carrying 4 A at right angles to a field. How strong is the field, in teslas?")
  (answer 0.5) (from "0.6 / (4 * 0.3)") (unit "T")
  (wrong-if 0.72 "That multiplies everything. From F = B I L, B = F / (I L).")
  (hint "B = F / (I L)."))
```

```check
(choice
  (ask "The current in a wire in a magnetic field is reversed. What happens to the force on it?")
  (right "It reverses direction, with the same size")
  (wrong "It stays the same"
    "Reverse your thumb and your palm turns over: the force reverses. Its size, B I L, is the same.")
  (wrong "It becomes zero"
    "There is still a current across the field, so there is still a force, now the other way.")
  (hint "Point your thumb the other way. Where does your palm face?"))
```

```check
(choice
  (ask "What is 1 tesla?")
  (right "The field that pushes 1 N on each meter of wire carrying 1 A at right angles to it")
  (wrong "The field of 1 A in 1 m of wire"
    "The tesla is defined by the force a field puts on a current: 1 N for each ampere and each meter.")
  (wrong "The force on 1 C of charge"
    "Force is in newtons. The tesla measures field strength: newtons per ampere per meter.")
  (hint "From F = B I L, B = F / (I L)."))
```

---

A magnetic field pushes on a current with a magnetic force $F = B I L$,
at right angles to both, found with the right hand; $B$ is in teslas.
