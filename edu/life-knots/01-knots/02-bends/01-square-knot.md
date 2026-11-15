# The square knot

```lesson
(objective "Tie a square knot, tell it from a granny knot, and say why it must not join ropes that bear a load.")
(minutes 20)
(keywords "square knot" "granny knot" "binding knot")
```

The **square knot**, also called the reef knot, ties two ends together
round something: a bundle of sticks, a bag, a bandage.

The easy way to tie it with two ends:

1. Right end over left end, and tuck it under. Pull.
2. Left end over right end, and tuck it under. Pull.

Remember: **right over left, then left over right**.

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944), #1204, the reef knot")
```

```check
(choice
  (ask "You have tied the first half: right over left and under. What is the second half?")
  (right "Left over right and under")
  (wrong "Right over left and under, again"
    "Doing the same thing twice gives a different knot that slips. The second half goes the other way: left over right.")
  (wrong "Pull the ends apart; one half is enough"
    "One half on its own comes loose. It is the second half, the other way round, that locks it.")
  (hint "The second half is the mirror of the first."))
```

---

## How it looks

Here the square knot is drawn with two ropes. Rope 1 makes a bight, and
rope 2 goes round it. Move the slider.

```figure
(define a '(25 70 60 70 140 70 200 70 255 120 200 170 110 170 60 170 10 170))
(define b '(312 105 245 105 165 105 135 35 70 28 58 120 70 212 112 205 150 135 245 135 312 135))
(define s (slider 'step 1 4 1 "Step" 1))
(kn-tie2 a '((4 1) (1 5) (7 6)) b '(3 7 9 11) '() s)
(text 12 60 "rope 1" 'left 'tiny)
(text 300 98 "rope 2" 'right 'tiny)
(caption (list-ref '("1: rope 2 goes in under the curve of rope 1" "2: over the top, then behind both parts" "3: up, over the lower part" "4: and back out under the curve, beside itself") (- s 1)))
```

Each rope's end comes out beside its own standing part, and the two
ends are on the same side of the knot, here both at the bottom. The
finished knot is two bights, locked together, lying flat.

```check
(choice
  (ask "In step 2, rope 2 goes round the 2 parts of rope 1. Does it go in front of them or behind them?")
  (right "Behind them")
  (wrong "In front of them"
    "Look at the left side of the picture in step 2. Rope 1 is drawn unbroken there, so it lies on top: rope 2 is behind.")
  (hint "At a crossing, the rope drawn unbroken is the one on top."))
```

---

## The granny knot

If you tie right over left, then right over left **again**, you get a
**granny knot**. It looks a little like a square knot, but its ends
stick out across the knot, not beside their own ropes.

A granny knot slips, or it jams so you cannot untie it. If your knot
looks crooked, untie it and tie the second half the other way.

```check
(choice
  (ask "Sam ties right over left, then right over left. What has Sam tied?")
  (right "A granny knot")
  (wrong "A square knot"
    "A square knot needs the second half the other way: left over right. The same way twice gives a granny knot.")
  (hint "Did the second half go the same way or the other way?"))
```

---

```warn
(warn "Not for ropes that hold a load"
  "Never join two ropes with a square knot if they will hold something heavy, or be pulled and shaken. A pull on one end can turn the knot over, and then it slides apart. To join ropes, use a bend made for it, like the one in the next lesson.")
```

## What it is for

A square knot is a **binding knot**: it is good for tying round
something, where the knot lies flat against it. It is not good for
joining two ropes that will be pulled hard.

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): its warning against the reef knot as a bend")
```

```check
(choice
  (ask "You need to join two ropes to pull a heavy log. Should you use a square knot?")
  (right "No: it can slide apart when the ropes are pulled hard")
  (wrong "Yes: it is the best knot for joining two ropes"
    "The square knot is good for tying round a bundle. When two ropes it joins are pulled hard, it can turn over and slide apart.")
  (wrong "Yes, if you pull it very tight first"
    "Pulling it tight does not stop it turning over later under a load. Use a bend made for joining ropes.")
  (hint "Read the warning again."))
```

---

## Practice

```check
(choice
  (ask "Which job suits a square knot best?")
  (right "Tying a bandage or a bundle of sticks")
  (wrong "Joining two ropes to tow a car"
    "Towing pulls the ropes hard and jerks them. A square knot can slide apart. It is for tying round things.")
  (wrong "Making a loop to put over a post"
    "A square knot makes no loop. It ties two ends together round something.")
  (hint "It is a binding knot: it ties round something."))
```

```check
(text
  (ask "Right over left, then ... over ...? (2 words, like: up down)")
  (accept "left right") (accept "left over right") (accept "left, right")
  (wrong-if "right left" "That is the first half again. The second half goes the other way: left over right.")
  (hint "The second half is the other way round.")
  (hint "It starts with left."))
```

---

So: the square knot is right over left, then left over right; it binds
things, and it must not join ropes that hold a load.
