# The slip knot

```lesson
(objective "Tie a slip knot and finish a tied parcel with half hitches.")
(minutes 20)
(keywords "slip knot")
```

A **slip knot** makes a loop that gets **smaller** when you pull the
standing part. A loop knot's loop stays the same size; a slip knot's
loop slides.

1. Make a loop near the end: the standing part side crosses **over**
   the end side.
2. Push a **bight** of the standing part **up through the loop** from
   behind.
3. Hold the bight and pull the end to firm the knot.

```figure
(define s (slider 'step 1 2 1 "Step" 1))
(define r '(20 160 120 160 185 160 232 148 232 78 178 40 118 78 118 195 170 208 172 100 176 12 198 12 198 100 200 205 300 215))
(if (= s 1)
    (begin
      (kn-rope '(20 160 120 160 185 160 232 148 232 78 178 40 118 78 118 195 170 208 300 215) 10)
      (arrow 200 222 186 30 'ink 1.2))
    (begin (kn-rope r 15) (kn-over r 2) (text 210 24 "loop" 'left 'tiny)))
(text 12 150 "end" 'left 'tiny)
(text 300 200 "standing part" 'right 'tiny)
(caption (list-ref '("1: a loop; a bight of the standing part goes up through it" "2: the slip knot: pull the standing part to close the loop") (- s 1)))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the slip knot and the noose")
```

```check
(choice
  (ask "You pull the standing part of a slip knot. What happens to its loop?")
  (right "It gets smaller")
  (wrong "It stays the same size"
    "A loop that stays the same size is what a loop knot gives. A slip knot's loop slides, so it closes up.")
  (wrong "It gets bigger"
    "Pulling the standing part pulls rope out of the loop, through the knot. So the loop closes up.")
  (hint "Follow the standing part in step 2 into the loop."))
```

---

```warn
(warn "Never round a neck"
  "A slip knot pulls tight and does not let go by itself. Never put one round a person's or an animal's neck or body, not even in a game.")
```

## Tying a parcel

A slip knot is handy for tying round a parcel or a bundle:

1. Tie a slip knot and put its loop round the parcel.
2. Pull the standing part: the loop closes tight round the parcel.
3. Lock it with **two half hitches** round the standing part, so it
   cannot slide back.

```check
(choice
  (ask "You have pulled the cord tight round a parcel with a slip knot. Why add two half hitches?")
  (right "To stop the slip knot sliding back and the cord going loose")
  (wrong "To make the loop slide more easily"
    "The loop slides easily already. The half hitches are there to stop it sliding.")
  (wrong "To join a second cord"
    "Joining cords is the job of a bend. The half hitches here only lock the slip knot.")
  (hint "What can a slip knot do that you do not want once the cord is tight?"))
```

---

## Practice

```check
(choice
  (ask "Which of these is a slip knot good for?")
  (right "Pulling a cord tight round a bundle of sticks")
  (wrong "A loop that must not change size, to hang a bag on"
    "A slip knot's loop closes when the rope is pulled. For a loop that keeps its size, use a loop knot.")
  (wrong "Joining two ropes"
    "A slip knot is tied in one rope. Joining two ropes takes a bend.")
  (hint "What does a slip knot's loop do when you pull?"))
```

```check
(choice
  (ask "In step 2, the bight goes up through the loop. Does it pass under the loop's lower edge or over it?")
  (right "Under it")
  (wrong "Over it"
    "Look at the lower edge of the loop in step 2. It is drawn unbroken where the bight crosses it, so the bight is under it.")
  (hint "At a crossing, the rope drawn unbroken is on top."))
```

---

So: a slip knot's loop closes when you pull the standing part; lock it
with two half hitches when the cord is tight.
