# Four kinds of knot

```lesson
(objective "Tell a stopper, a bend, a hitch and a loop knot apart by what each one does.")
(minutes 15)
(keywords "stopper (knot)" "bend (knot)" "hitch" "loop knot")
```

Knots are sorted by the job they do. There are 4 main jobs. Press the
buttons under the picture to see each one. In each picture, the round lump stands for the
knot.

- A **stopper** makes a lump in the end of a rope, so the end cannot
  slip through a hole.
- A **bend** joins two ropes, end to end.
- A **hitch** ties a rope to something: a post, a ring or a rail.
- A **loop knot** makes a loop in the rope that stays the same size.

```figure
(define k (choice 'kind '("stopper" "bend" "hitch" "loop")))
(define (lump x y) (circle x y 13 'ink) (circle x y 9 'grey))
(cond
  ((= k 0)
   (rect 150 40 18 150 'earth) (frame 150 40 18 150 'ink 1.5)
   (kn-rope '(20 115 300 115) 2)
   (lump 185 115)
   (caption "A stopper: too big to pull through the hole."))
  ((= k 1)
   (kn-rope '(10 110 150 115) 2) (kn-rope '(310 125 170 115) 2)
   (lump 160 115)
   (label 60 95 "rope 1") (label 260 150 "rope 2")
   (caption "A bend: two ropes joined into one."))
  ((= k 2)
   (rect 200 20 36 190 'earth) (frame 200 20 36 190 'ink 1.5)
   (kn-rope '(10 110 190 110) 2)
   (lump 196 110)
   (label 218 228 "post")
   (caption "A hitch: a rope tied to a post."))
  (else
   (kn-rope '(10 110 120 110) 2)
   (kn-rope '(130 104 200 60 270 80 285 115 270 150 200 170 130 126) 7)
   (lump 125 115)
   (label 210 120 "loop")
   (caption "A loop knot: the loop does not slip.")))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): stoppers, bends, hitches and loops")
```

```check
(choice
  (ask "You want to tie two short ropes together to make one long rope. Which kind of knot do you need?")
  (right "A bend")
  (wrong "A hitch"
    "A hitch ties a rope to a thing, like a post. To join a rope to another rope, you need a bend.")
  (wrong "A stopper"
    "A stopper is tied in one end of one rope. It does not join anything.")
  (hint "Which kind joins two ropes?"))
```

---

## Which kind for the job?

```check
(choice
  (ask "You tie a boat's rope to a ring on a dock. Which kind of knot is that?")
  (right "A hitch")
  (wrong "A bend"
    "A bend joins two ropes. A ring is not a rope, so a knot that ties a rope to it is a hitch.")
  (wrong "A loop knot"
    "A loop knot makes a loop in the rope by itself. Tying the rope on to a ring is a hitch.")
  (hint "Is the rope tied to another rope, or to a thing?"))
```

```check
(choice
  (ask "You thread a cord through a bead and want the bead not to slide off the end. Which kind of knot do you tie in the end?")
  (right "A stopper")
  (wrong "A loop knot"
    "A loop knot makes a loop. You only need a lump bigger than the hole in the bead.")
  (wrong "A hitch"
    "A hitch ties a rope round something. Here you only need a lump at the end.")
  (hint "The knot must be too big to fit through the bead's hole."))
```

---

## A loop that stays

A loop knot gives a loop you can drop over a post or a hook. The loop
stays the same size when you pull the rope.

Some other knots also make a loop, but it slides smaller when you pull.
You meet one of those at the end of this course.

```check
(choice
  (ask "You need a loop in the end of a rope to drop over a hook. Which kind of knot gives it?")
  (right "A loop knot")
  (wrong "A bend"
    "A bend joins two ropes. Here there is one rope, and you need a loop in it.")
  (wrong "A stopper"
    "A stopper is a lump. It has no loop to put over a hook.")
  (hint "The name says what it makes."))
```

---

## Practice

```check
(text
  (ask "What kind of knot joins two ropes end to end? (one word)")
  (accept "bend") (accept "a bend")
  (wrong-if "hitch" "A hitch ties a rope to a thing. Joining two ropes is the job of a bend.")
  (hint "It is a short word that sounds like what you do to a stick.")
  (hint "It starts with b."))
```

```check
(choice
  (ask "A tent's rope is tied to a peg in the ground. What kind of knot ties it to the peg?")
  (right "A hitch")
  (wrong "A stopper"
    "A stopper only makes a lump. To hold on to the peg, the rope must be tied round it: a hitch.")
  (wrong "A bend"
    "There is only one rope here, tied to a peg. A bend needs two ropes.")
  (hint "The rope is tied to a thing."))
```

---

```check
(choice
  (ask "Why is it useful to know the 4 kinds of knot?")
  (right "Knowing the job tells you which kind of knot to look for")
  (wrong "Every knot of one kind is tied the same way"
    "Each kind has many different knots. The kind only tells you the job the knot does.")
  (wrong "A knot of any kind does any job well"
    "A knot made for one job can fail at another. Choose a knot made for your job.")
  (hint "Think about choosing a knot before you tie it."))
```

So: a stopper makes a lump, a bend joins ropes, a hitch ties on to
things, and a loop knot makes a loop.
