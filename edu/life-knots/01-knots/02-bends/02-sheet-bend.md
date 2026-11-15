# The sheet bend

```lesson
(objective "Tie a sheet bend to join two ropes, even of different thickness.")
(minutes 20)
(keywords "sheet bend")
```

The **sheet bend** joins two ropes. It works even when one rope is
thicker than the other, which many bends do not.

1. Make a bight in the thicker rope (rope 1).
2. Bring the end of rope 2 **up through the bight** from behind.
3. Take it round **behind both parts** of the bight.
4. Tuck it **under itself**, across the front of the bight.

Move the slider to tie it.

```figure
(define a '(10 170 60 170 110 170 200 170 255 120 200 70 140 70 60 70 25 70))
(define b '(312 135 245 135 175 135 132 35 70 28 58 120 70 212 112 205 110 150 178 92))
(define s (slider 'step 1 4 1 "Step" 1))
(kn-tie2 a '((4 1) (7 5) (1 6)) b '(3 7 9 10) '((2 9)) s)
(text 12 188 "rope 1" 'left 'tiny)
(text 300 126 "rope 2" 'right 'tiny)
(text 12 54 "end" 'left 'tiny)
(if (= s 4) (text 188 96 "end" 'left 'tiny))
(caption (list-ref '("1: rope 2 comes up through the bight" "2: over the top, then behind both parts" "3: up in front of the lower part" "4: and under itself. Pull tight.") (- s 1)))
```

Check the finished bend: the two short ends are on the same side of
the knot, here both near the top (marked "end"). If they are on opposite sides, the bend
is tied the wrong way round and holds less well.

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944), #1431, the sheet bend")
```

```check
(choice
  (ask "Rope 2 has gone up through the bight and round behind both parts. What is the last move?")
  (right "Tuck the end under itself")
  (wrong "Tuck the end back down through the bight"
    "Going back through the bight, beside itself, makes a knot like a square knot, not a sheet bend. The sheet bend's end goes under itself.")
  (wrong "Tie an overhand knot in the end"
    "No extra knot is needed. The end is held when it is tucked under its own rope.")
  (hint "Look at step 4 in the figure."))
```

---

## Which rope makes the bight?

When the ropes are of different thickness, the **thicker** rope makes
the bight, and the thinner rope wraps round it.

```check
(choice
  (ask "You join a thick rope and a thin cord with a sheet bend. Which one makes the bight?")
  (right "The thick rope")
  (wrong "The thin cord"
    "The thin cord bends more easily, so it does the wrapping. The thick rope makes the bight.")
  (wrong "It does not matter"
    "It matters: the thin one must wrap round and grip the thick one. So the thick rope makes the bight.")
  (hint "Which one is easier to wrap round the other?"))
```

---

## Spot the mistake

Look at the last crossing, where the end goes under itself. Press A
and B under the picture.

```figure
(define a '(10 170 60 170 110 170 200 170 255 120 200 70 140 70 60 70 25 70))
(define b '(312 135 245 135 175 135 132 35 70 28 58 120 70 212 112 205 110 150 178 92))
(define w (choice 'way '("A" "B")))
(kn-rope a 9)
(kn-rope b 10)
(kn-over a 4) (kn-over a 7) (kn-over a 1)
(if (= w 1) (kn-over b 2))
```

```check
(choice
  (ask "In which picture, A or B, is the end tucked under itself, as it should be?")
  (right "B")
  (wrong "A"
    "In A the end lies on top of its own rope, so nothing holds it. In B its own rope is drawn unbroken over it: it is tucked under.")
  (hint "Find where the end crosses its own rope, near the middle.")
  (hint "At a crossing, the rope drawn unbroken is on top."))
```

---

## Its weakness

A sheet bend holds well while the ropes are pulled. If the ropes go
slack and flap about, it can work loose.

```check
(choice
  (ask "When is a sheet bend most likely to work loose?")
  (right "When the ropes are slack and flapping")
  (wrong "When the ropes are pulled steadily"
    "A steady pull keeps the bend tight. It is when there is no pull, and the ropes flap, that it can work loose.")
  (wrong "When one rope is thicker than the other"
    "The sheet bend is made for ropes of different thickness. That is one of its strengths.")
  (hint "Is a knot tighter with a pull on it, or without?"))
```

---

## Practice

```check
(choice
  (ask "You need to join a thin cord to a thicker rope. Which knot should you choose?")
  (right "A sheet bend")
  (wrong "A square knot"
    "A square knot is for tying round things. It can slide apart when it joins two ropes, and more easily if they are of different thickness.")
  (wrong "A figure-eight knot"
    "A figure-eight knot is a stopper in one rope. It does not join two ropes.")
  (hint "Which bend is made for ropes of different thickness?"))
```

```check
(text
  (ask "What kind of knot is the sheet bend: a stopper, a bend, a hitch or a loop knot?")
  (accept "bend") (accept "a bend")
  (wrong-if "hitch" "A hitch ties a rope to a thing. The sheet bend joins two ropes, so it is a bend.")
  (hint "It joins two ropes.")
  (hint "Its name tells you."))
```

---

So: the sheet bend joins two ropes, the thicker one making the bight,
and the end tucks under itself.
