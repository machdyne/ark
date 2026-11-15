# Stopper knots

```lesson
(objective "Tie an overhand knot and a figure-eight knot, and say why the figure-eight is easier to untie.")
(minutes 20)
(keywords "overhand knot" "figure-eight knot" "jam (a knot)")
```

A stopper makes a lump in the end of a rope. Here are the two most
useful ones.

The **overhand knot** is the simplest knot of all. Move the slider to
tie it.

1. Make a loop: the working end crosses **over** the standing part.
2. Take the end **behind** the loop and up through it.
3. Pull both ends to tighten.

```figure
(define r '(20 160 120 160 175 160 222 148 222 78 170 48 118 78 118 195 175 205 178 100 186 15))
(define s (slider 'step 1 3 1 "Step" 1))
(kn-tie r '(8 10 11) '((2 9)) s)
(caption (list-ref '("1: a loop, the end over the standing part" "2: the end goes behind, up into the loop" "3: and out over the top. Pull tight.") (- s 1)))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the overhand knot")
```

```check
(choice
  (ask "You have made the loop of an overhand knot. Where does the working end go next?")
  (right "Behind the loop, then up through it")
  (wrong "Back the way it came"
    "Going back would undo the loop. The end must pass through the loop to make a knot.")
  (wrong "Round the outside of the loop, without going through"
    "If the end never goes through the loop, there is no knot: pull the ends and the rope comes straight.")
  (hint "Look at the arrow in step 1."))
```

---

## Its weakness

An overhand knot is small. Pulled hard, or when the rope is wet, it
can **jam**: it gets so tight that you can hardly untie it.

It is also small enough to slip through a hole that is only a little
bigger than the rope.

```check
(choice
  (ask "You pulled very hard on a rope with an overhand knot in it. What is likely to happen?")
  (right "The knot jams and is hard to untie")
  (wrong "The knot comes undone by itself"
    "A hard pull makes an overhand knot tighter, not looser. The trouble is the opposite: it jams.")
  (wrong "The knot turns into a loop"
    "Pulling does not change the shape of the knot. It only squeezes it tighter.")
  (hint "Think about a knot in a shoelace that someone pulled very tight."))
```

---

## The figure-eight knot

The **figure-eight knot** goes one crossing further. Tied, it looks like
the number 8.

1. Make a loop, the end **over** the standing part, as before.
2. Take the end round **behind** the standing part.
3. Bring it down **through the loop from the front**.
4. Pull tight.

```figure
(define r '(20 160 80 160 120 160 170 160 222 148 222 78 170 48 118 78 118 195 78 205 75 105 100 100 160 115 172 220))
(define s (slider 'step 1 3 1 "Step" 1))
(kn-tie r '(9 11 14) '((1 10) (3 13)) s)
(caption (list-ref '("1: a loop, the end over the standing part" "2: the end round behind the standing part" "3: and down through the loop from the front") (- s 1)))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the figure-eight knot")
```

```check
(choice
  (ask "In the figure-eight knot, after the loop, the end goes round the standing part. Then where?")
  (right "Down through the loop from the front")
  (wrong "Up through the loop from behind"
    "That is how the overhand knot ends. The figure-eight first goes round the standing part, then through the loop from the front.")
  (wrong "Round the standing part a second time"
    "One time round is enough. The next move is through the loop.")
  (hint "Move the slider to step 3."))
```

---

## Which stopper?

The figure-eight knot is bigger than an overhand knot, so it stops the
rope better. It also does not jam as easily: after a hard pull, you can
still loosen it with your fingers.

```check
(choice
  (ask "You want a stopper you can untie after a hard pull. Which knot do you choose?")
  (right "The figure-eight knot")
  (wrong "The overhand knot"
    "The overhand knot is the one that jams after a hard pull. The figure-eight is easier to untie.")
  (hint "Which of the two jams?"))
```

---

## Spot the mistake

This figure-eight knot has one crossing wrong. Press A and B under the
picture to see the two ways.

```figure
(define r '(20 160 80 160 120 160 170 160 222 148 222 78 170 48 118 78 118 195 78 205 75 105 100 100 160 115 172 220))
(define w (choice 'way '("A" "B")))
(kn-rope r 14)
(kn-over r 3)
(if (= w 0) (kn-over r 1))
(text 12 146 "standing" 'left 'tiny)
(text 12 182 "part" 'left 'tiny)
```

```check
(choice
  (ask "In which picture, A or B, does the end pass behind the standing part, as it should?")
  (right "A")
  (wrong "B"
    "In B the end crosses over the standing part on the left. In a figure-eight it goes behind it, so the standing part is on top there.")
  (hint "Look at the left crossing, where the end goes up past the standing part.")
  (hint "Which picture shows the standing part unbroken, on top, at that crossing?"))
```

---

```check
(choice
  (ask "What is a stopper knot for?")
  (right "To stop the end of a rope from slipping through a hole or out of your hand")
  (wrong "To join two ropes"
    "Joining two ropes takes a knot with both ropes in it. A stopper is tied in one end of one rope.")
  (wrong "To tie a rope to a post"
    "A stopper does not hold on to anything. It only makes a lump at the end.")
  (hint "Think of a knot at the end of a thread before you sew."))
```

So: the overhand knot is the simplest stopper, and the figure-eight is
bigger and easier to untie.
