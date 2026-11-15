# Parts of a rope

```lesson
(objective "Name the working end, the standing part, a bight and a loop on a rope.")
(minutes 15)
(keywords "working end" "standing part" "bight" "loop (of rope)")
```

Knot instructions use a few names for the parts of a rope. Learn them
first, and every knot is easier to follow.

Find a piece of rope or string about 3 feet (1 meter) long. Tie each
knot in this course as you read.

The end you tie the knot with is the **working end**. It moves.

The rest of the rope, which you do not move, is the **standing part**.

```figure
(define r '(20 150 110 135 200 160 300 130))
(kn-rope r 4)
(label 70 120 "standing part")
(label 262 180 "working end")
(arrow 262 168 292 140 'ink 1)
(caption "Most of a rope is the standing part.")
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the names of the parts of a rope")
```

```check
(choice
  (ask "You tie a knot in the end of a long rope. Which part do you move to make the knot?")
  (right "The working end")
  (wrong "The standing part"
    "The standing part stays still. It is often tied to something or held. You make the knot with the end.")
  (wrong "Both parts the same"
    "Only one part does the moving. The long part stays still while the end goes over, under and round.")
  (hint "One part of the rope stays still. Which one moves?"))
```

---

## A bight

Fold the rope back on itself in a U, so the two sides do not cross.
A U like that is called a **bight** (say "bite").

Many knots start from a bight. You can also push a bight through a
knot, instead of the end.

```figure
(define r '(20 90 230 90 290 125 230 160 120 160))
(kn-rope r 5)
(label 120 72 "standing part")
(label 262 125 "bight" 'right)
(label 110 188 "working end")
(caption "A bight: a U, with no crossing.")
```

```check
(choice
  (ask "Which of these is a bight?")
  (right "A U-shaped fold where the sides do not cross")
  (wrong "Any knot in the middle of a rope"
    "A bight is not a knot. It is only a fold in the rope, with nothing tied.")
  (wrong "The very tip of the working end"
    "The tip is just the end. A bight is a fold, and it can be anywhere along the rope.")
  (hint "Think of the shape of the letter U."))
```

---

## A loop

Now bring the end round so the rope **crosses itself**. That closed
shape is a **loop**.

A bight has no crossing. A loop has one crossing. That one crossing is
the whole difference.

```figure
(define r '(20 170 150 170 220 150 220 80 165 50 115 80 120 220))
(kn-rope r 7)
(label 165 110 "loop")
(text 140 205 "crossing" 'left)
(arrow 138 201 124 176 'ink 1)
(caption "A loop: the rope crosses itself once.")
```

```check
(text
  (ask "You fold a rope into a U. The two sides do not cross. What is that U called?")
  (accept "bight") (accept "a bight")
  (wrong-if "loop" "A loop has a crossing. In this U the sides do not cross, so it is a bight.")
  (hint "It is the shape with no crossing.")
  (hint "The word starts with b."))
```

---

## Practice

```figure
(define r '(20 120 120 120 200 110 200 50 150 30 105 55 110 160 150 200 300 200))
(kn-rope r 9)
(label 60 105 "A")
(label 155 75 "B")
(label 290 185 "C")
```

```check
(choice
  (ask "In the figure, the rope at A is held still. What is the part marked C?")
  (right "The working end")
  (wrong "The standing part"
    "Follow the rope from C. It is the end that came round last, so it is the working end.")
  (wrong "A bight"
    "A bight is a U-shaped fold. C is a straight end of the rope.")
  (hint "Follow the rope from A to C. Which end did the moving?"))
```

```check
(choice
  (ask "In the figure, the rope at B crosses itself. Is B a loop or a bight?")
  (right "A loop")
  (wrong "A bight"
    "A bight has no crossing. At B the rope goes over itself, so it is a loop.")
  (hint "Look for a crossing."))
```

---

```check
(choice
  (ask "A friend holds one end of a rope. You tie a knot near the other end. What is the part your friend holds?")
  (right "Part of the standing part")
  (wrong "The working end"
    "The working end is the end you tie with. Your friend's end does not move in the knot.")
  (wrong "A loop"
    "A loop is a place where the rope crosses itself. Your friend just holds a straight part.")
  (hint "Which part of the rope stays still while you tie?"))
```

So: you tie with the working end, the standing part stays still, a
bight is a U, and a loop crosses itself.
