# Half hitches and a round turn

```lesson
(objective "Tie a half hitch, two half hitches, and a round turn and two half hitches.")
(minutes 20)
(keywords "half hitch" "two half hitches" "round turn")
```

The **half hitch** is the simplest hitch: take the end once round the
rail or post, then tuck it **under the standing part**. The pull on
the standing part pinches the end against the rail.

```figure
(define s (slider 'step 1 2 1 "Step" 1))
(define t '(186 116 188 152 168 146 150 126 118 110))
(if (= s 2) (kn-rope t 5))
(rect 10 100 300 40 'grey) (frame 10 100 300 40 'ink 1.5)
(if (= s 2)
    (begin (circle 118 110 6 'ink) (kn-over t 2) (kn-over t 3) (kn-over t 4)))
(kn-rope '(150 226 150 104) 2)
(if (= s 1) (begin (arrow 156 92 190 150 'ink 1) (arrow 190 150 130 112 'ink 1.2)))
(text 300 92 "rail" 'right 'tiny)
(text 160 200 "standing part" 'left 'tiny)
(caption (list-ref '("1: up in front, over the top, round behind" "2: out under, then tucked under the standing part") (- s 1)))
```

```sources
(source "The Ashley Book of Knots, Clifford W. Ashley (Doubleday, 1944): the half hitch, two half hitches, and the round turn and two half hitches")
```

```check
(choice
  (ask "In a half hitch, what holds the end in place?")
  (right "The standing part pinches it against the rail")
  (wrong "The end is tied in a knot of its own"
    "There is no extra knot. The end is only tucked under the standing part, and the pull on the standing part holds it.")
  (wrong "Nothing: it just hangs over the rail"
    "Look at step 2: the end goes under the standing part, which presses it against the rail.")
  (hint "Look at step 2. What lies on top of the end?"))
```

---

## Two half hitches

One half hitch on its own slips easily. So it is mostly used to finish
other knots.

**Two half hitches** are a much better hitch. Take the end round the
post, then tie a half hitch **round the standing part**, and a second
one the same way next to it. Push them up snug.

The two must go round the same way. Then together they make a clove
hitch round the standing part.

```check
(choice
  (ask "You tie two half hitches round the standing part, but the second one goes round the other way. What is wrong?")
  (right "Both must go round the same way, or they do not lock together")
  (wrong "Nothing: either way is the same"
    "The direction matters. Two half hitches the same way make a clove hitch round the standing part, which holds.")
  (wrong "You need a third half hitch the other way"
    "Two half hitches the same way are enough. Tie the second one the same way as the first.")
  (hint "The lesson says how the two must go round."))
```

---

## A round turn

A **round turn** is the rope going all the way round a post or rail,
so that it passes round it **twice**.

```figure
(define u '(162 118 178 156 190 140 196 104))
(define v '(205 118 218 158 225 190 226 214))
(kn-rope u 4) (kn-rope v 4)
(rect 10 100 300 40 'grey) (frame 10 100 300 40 'ink 1.5)
(kn-rope '(150 214 150 104) 2)
(kn-over u 2) (kn-over u 3)
(text 300 92 "rail" 'right 'tiny)
(text 142 200 "standing part" 'right 'tiny)
(text 236 200 "end" 'left 'tiny)
(caption "A round turn: twice round the rail.")
```

The round turn takes the pull, so the knot after it holds easily. It
also lets you hold a pulling load with one hand while you tie.

```check
(choice
  (ask "How many times does the rope pass round the rail in a round turn?")
  (right "Twice")
  (wrong "Once"
    "Once round is a single turn. A round turn goes round again, so the rope passes round twice.")
  (wrong "Three times"
    "Two passes are enough for a round turn.")
  (hint "Count the parts of the rope that cross the front of the rail in the figure."))
```

---

## Round turn and two half hitches

Put the two together: a **round turn** on the post, then **two half
hitches** round the standing part. This is one of the most useful
hitches there is, for tying a rope to a ring, a post or a tree. It is
secure, and easy to untie even after a heavy pull.

```check
(choice
  (ask "You need to tie a rope to a ring and leave it pulling hard for a day. Which hitch is best?")
  (right "A round turn and two half hitches")
  (wrong "A single half hitch"
    "A single half hitch slips easily. For a hard, long pull, use a round turn and two half hitches.")
  (wrong "A clove hitch"
    "A clove hitch can slip or work loose when the pull changes. The round turn and two half hitches is more secure.")
  (hint "Which one is secure and still easy to untie?"))
```

---

## Practice

```check
(text
  (ask "What do you call the rope going twice round a post, before the hitches? (2 words)")
  (accept "round turn") (accept "a round turn")
  (wrong-if "half hitch" "A half hitch is tucked under the standing part. Going twice round the post is a round turn.")
  (hint "It goes round, and then turns again.")
  (hint "Round ..."))
```

```check
(choice
  (ask "Two half hitches are tied round what?")
  (right "Round the standing part")
  (wrong "Round the post, twice"
    "Going twice round the post is the round turn. The two half hitches are tied round the standing part.")
  (wrong "Round each other"
    "Each half hitch goes round the standing part. They sit next to each other on it.")
  (hint "After the end goes round the post, it comes back to which part of the rope?"))
```

---

So: a half hitch tucks the end under the standing part; two half
hitches go round the standing part the same way; a round turn is
twice round the post.
