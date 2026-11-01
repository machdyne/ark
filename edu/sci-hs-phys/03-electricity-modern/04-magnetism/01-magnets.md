# Magnets and magnetic fields

```lesson
(objective "Describe magnetic poles and the magnetic field of a magnet and of Earth, with field lines and a compass.")
(standards "HS-PS3-5")
(minutes 25)
(keywords "magnetic pole" "magnetic field")
```

You can describe how magnets push and pull, and map the field around
one with a compass.

Every magnet has two **magnetic poles**, the places near its ends where
its pull is strongest: a north pole (N) and a south pole (S). Like
poles repel; unlike poles attract.

The poles always come in pairs. Cut a bar magnet in half, and each half
is a whole magnet with its own N and S. Nobody has ever found a lone N
or S pole.

```sources
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "A bar magnet is broken in two, between its N and S ends. What do you get?")
  (right "Two magnets, each with an N and an S pole")
  (wrong "A lone N pole and a lone S pole"
    "Poles always come in pairs. Each piece becomes a whole magnet, with a new pole at the broken end.")
  (wrong "Two pieces that are no longer magnets"
    "Each piece is still a magnet. The new ends become poles, so each piece has an N and an S.")
  (hint "Has anyone ever found a lone N pole?"))
```

---

## The magnetic field

A magnet changes the space around it: other magnets and pieces of iron
there feel a force. That is its **magnetic field**. Its direction at a
point is the way the N end of a compass needle points there.

Outside a magnet, field lines run from its N pole round to its S pole.
They are closest together, and the field is strongest, near the poles.

Drag the compass around the magnet.

```figure
(define p (drag 'c 160 50 10))
(define x (car p))
(define y (cadr p))
(define (fld px py)
  (let* ((ax (- px 105)) (ay (- py 110)) (bx (- px 215)) (by (- py 110))
         (ra (+ 1 (* ax ax) (* ay ay))) (rb (+ 1 (* bx bx) (* by by)))
         (ka (/ 1 (* ra (sqrt ra)))) (kb (/ 1 (* rb (sqrt rb)))))
    (list (- (* ax ka) (* bx kb)) (- (* ay ka) (* by kb)))))
(define f (fld x y))
(define m (+ 0.0000001 (sqrt (+ (* (car f) (car f)) (* (cadr f) (cadr f))))))
(define ux (/ (car f) m))
(define uy (/ (cadr f) m))
(el-maglines 160 110 120 3 #f)
(el-magnet 160 110 120 #f)
(circle x y 14 'paper) (ring x y 14 'ink 1)
(poly (list (+ x (* 12 ux)) (+ y (* 12 uy)) (+ x (* -4 uy)) (+ y (* 4 ux)) (+ x (* 4 uy)) (- y (* 4 ux))) 'ink)
(line x y (- x (* 12 ux)) (- y (* 12 uy)) 'ink 1.5)
(caption "Compass: its dark end is its N end.")
```

```check
(choice
  (ask "A compass is placed just beyond the N end of a bar magnet, on its line. Which way does the compass's N end point?")
  (right "Away from the magnet")
  (wrong "Toward the magnet's N end"
    "Like poles repel: the magnet's N pole pushes the compass's N end away. Field lines leave an N pole.")
  (wrong "Along the magnet, toward its S end, through the magnet"
    "Outside the magnet, near the N pole, the field points out of the pole. Try it in the figure.")
  (hint "Field lines leave the N pole. Which way do they point just beyond it?"))
```

---

## Earth is a magnet

Earth has a magnetic field much like a bar magnet's. A compass's N end
points roughly toward the geographic North Pole. Since unlike poles
attract, the magnetic pole near the geographic North Pole is, in fact,
a magnetic S pole.

Earth's magnetic poles are not exactly at the geographic poles, and
they slowly move, so maps give the difference for each place.

```sources
(source "NOAA National Centers for Environmental Information, Geomagnetism: frequently asked questions")
(source "OpenStax, Physics (2020), chapter 20, Magnetism")
```

```check
(choice
  (ask "Why does the N end of a compass point north?")
  (right "Earth's magnetic pole in the north is a magnetic S pole, which attracts it")
  (wrong "Earth's magnetic pole in the north is a magnetic N pole, which attracts it"
    "Like poles repel. For the compass's N end to be pulled north, the magnetic pole there must be an S pole.")
  (wrong "The North Pole is made of iron"
    "Earth's field comes from deep inside the planet, not from iron at the pole. It acts like a huge bar magnet.")
  (hint "Like poles repel; unlike poles attract."))
```

---

## What magnets attract

A magnet attracts iron, steel, nickel and cobalt, even when they are
not magnets themselves. It does not attract copper, aluminum, plastic,
wood or paper.

```check
(choice (several)
  (ask "Which of these does a magnet attract? Choose every one.")
  (right "An iron nail")
  (right "A steel paper clip")
  (wrong "An aluminum can"
    "Aluminum is a metal, but not a magnetic one. Only iron, steel, nickel and cobalt and some of their alloys are attracted.")
  (wrong "A copper wire"
    "Copper conducts electricity well, but a magnet does not attract it.")
  (hint "Steel is mostly iron."))
```

---

## Practice

```check
(choice
  (ask "Two bar magnets lie end to end, with an S pole facing an S pole. What happens?")
  (right "They push apart")
  (wrong "They pull together"
    "S and S are like poles, and like poles repel.")
  (hint "Like poles repel; unlike poles attract."))
```

```check
(choice
  (ask "On a drawing of a magnet's field lines, where is the field strongest?")
  (right "Near the poles, where the lines crowd together")
  (wrong "In the middle of the magnet's side, far from the poles"
    "The lines are spread out beside the middle of the magnet. They crowd together near the poles, where the field is strongest.")
  (wrong "Far from the magnet, where the lines are longest"
    "Long lines do not mean a strong field. The closer the lines, the stronger the field.")
  (hint "Where are the lines closest together?"))
```

```check
(choice
  (ask "Outside a magnet, which way do its field lines run?")
  (right "From the N pole round to the S pole")
  (wrong "From the S pole round to the N pole"
    "By definition, the field points the way a compass's N end points, which is away from the magnet's N pole and toward its S pole.")
  (hint "The field points where a compass's N end points."))
```

---

A magnet has N and S poles that never come apart; its magnetic field
runs from N to S outside it, a compass follows the field, and Earth is
a giant magnet.
