# The clove hitch

```lesson
(objective "Tie a clove hitch round a post and say when it slips.")
(minutes 20)
(keywords "clove hitch")
```

The **clove hitch** ties a rope to a post or a rail quickly, and it is
quick to untie. Here it is tied round a rail, seen from the front.

1. Take the end up **in front of** the rail, over the top and down
   behind it.
2. Bring it out under the rail, then up **across the front**, over the
   standing part, and over the top again.
3. Bring it out under the rail again and tuck it up **under the
   crossing** you just made.

Move the slider to tie it.

```figure
(define s (slider 'step 1 3 1 "Step" 1))
(define r2 '(198 118 198 152 176 148 112 100))
(define r3 '(116 118 114 152 126 148 128 100 128 20))
(if (>= s 2) (kn-rope r2 4))
(if (>= s 3) (kn-rope r3 5))
(rect 10 100 300 40 'grey) (frame 10 100 300 40 'ink 1.5)
(kn-rope '(150 226 150 104) 2)
(if (>= s 3) (begin (kn-over r3 2) (kn-over r3 3) (kn-over r3 4)))
(if (>= s 2) (begin (kn-over r2 2) (kn-over r2 3)))
(if (= s 1) (begin (arrow 156 92 196 150 'ink 1) (arrow 196 150 176 146 'ink 1.2)))
(if (= s 2) (begin (arrow 108 92 116 150 'ink 1) (arrow 116 150 126 128 'ink 1.2)))
(text 300 92 "rail" 'right 'tiny)
(text 160 200 "standing part" 'left 'tiny)
(caption (list-ref '("1: up in front, over the top, round behind" "2: out under, across the front, over the top" "3: out under again, tucked under the crossing") (- s 1)))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the clove hitch")
```

```check
(choice
  (ask "In step 2, the end goes across the front of the rail. Does it go over the standing part or under it?")
  (right "Over it")
  (wrong "Under it"
    "Look at step 2: the crossing piece is drawn unbroken, on top. It goes over the standing part. Only the last tuck goes under.")
  (hint "At a crossing, the rope drawn unbroken is on top."))
```

---

## The finished hitch

Look at step 3. The two ends come out from **under the same crossing**,
and they point in opposite directions: one up, one down.

That is how you check a clove hitch. If an end comes out on top of the
crossing, the hitch is tied wrong.

```check
(choice
  (ask "You check a clove hitch. Where should the end come out?")
  (right "From under the crossing, pointing the other way from the standing part")
  (wrong "From on top of the crossing"
    "An end lying on top of the crossing is not held by anything. In a clove hitch both ends come out from under it.")
  (wrong "Beside the standing part, pointing the same way"
    "In a clove hitch the two ends point in opposite directions. Look at step 3: one goes up, one goes down.")
  (hint "Look at step 3 of the figure."))
```

---

## When it slips

A clove hitch is quick, but it is not very secure.

- It can **slip** along the post when the pull comes from the side.
- If the post can turn, the turning can **work it loose**.
- If the pull keeps coming and going, it can loosen bit by bit.

So use it where it is easy to watch, or choose a more secure hitch,
like the ones in the next 2 lessons.

```check
(choice
  (ask "You tie a boat to a post that can turn, with a clove hitch. What could go wrong?")
  (right "The post turns and the hitch works loose")
  (wrong "The hitch jams and cannot be untied"
    "A clove hitch is easy to untie. Its trouble is the other way: it can work loose.")
  (wrong "Nothing: a clove hitch never slips"
    "A clove hitch can slip, above all when the post turns or the pull keeps changing.")
  (hint "Is a clove hitch known for being secure, or for being quick?"))
```

---

## Practice

```check
(choice
  (ask "What kind of knot is a clove hitch?")
  (right "A hitch: it ties a rope to a post or a rail")
  (wrong "A bend: it joins two ropes"
    "A clove hitch has only one rope in it, tied round a post. A knot that joins two ropes is a bend.")
  (wrong "A stopper: it makes a lump in the end"
    "A clove hitch holds on to a post or a rail. A stopper holds nothing.")
  (hint "Its name has the answer in it."))
```

```check
(choice
  (ask "After going round the rail the second time, where does the end go?")
  (right "Up under the crossing")
  (wrong "Over the crossing"
    "Over the crossing, nothing holds the end. It must be tucked under it.")
  (wrong "Round the rail a third time"
    "Two times round is enough. Then the end is tucked under the crossing.")
  (hint "Look at step 3."))
```

---

So: a clove hitch is two turns round a post with the end tucked under
the crossing; it is quick, but it can slip.
