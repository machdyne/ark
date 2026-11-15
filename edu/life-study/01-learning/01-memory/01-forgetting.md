# Forgetting

```lesson
(objective "Explain that memories fade without use, and that bringing them back slows the fading.")
(minutes 15)
(keywords "forgetting curve" "review (of what you learned)")
```

You forget most new things fast, unless you use them. In this course
you learn ways of studying that make what you learn last.

About 140 years ago, Hermann Ebbinghaus learned long lists of made-up
syllables. Then he measured how much he still knew after different
amounts of time. He forgot a lot in the first hours and days. After
that, he forgot more slowly.

A graph of how much you still remember as time goes by is called a
**forgetting curve**. The figure is a sketch of its shape, not real
data.

```figure
(st-curve 30 30 270 150 0)
(caption "A sketch of the idea, not real data")
```

```sources
(source "Hermann Ebbinghaus, Memory: A Contribution to Experimental Psychology (1885; English translation 1913)")
```

```check
(choice
  (ask "When does a forgetting curve fall fastest?")
  (right "Soon after you learn something")
  (wrong "By the same amount every day"
    "The curve is not a straight line. Most of the forgetting happens early, and then it slows down.")
  (wrong "Only after many weeks"
    "Forgetting starts right away. That is why the curve drops most steeply at the start.")
  (hint "Look at the left part of the curve. Is it steep or flat?"))
```

---

## Bringing a memory back

Forgetting is not the end of the story. Each time you bring a memory
back, it gets easier to find again. Coming back to something you
learned is a **review**. After each review, a memory tends to fade more
slowly than before.

Move the slider to add reviews. The dashed line is the same memory
with no reviews.

```figure
(define n (slider 'reviews 0 3 0 "Reviews" 1))
(st-curve 30 30 270 150 n)
(caption "A sketch of the idea, not real data")
```

```sources
(source "Hermann Ebbinghaus, Memory: A Contribution to Experimental Psychology (1885; English translation 1913)")
(source "Brown, Roediger and McDaniel, Make It Stick (Harvard University Press, 2014), chapter 2")
```

```check
(choice
  (ask "Mia learns 10 new words on Monday. Which plan helps her remember them in 2 weeks?")
  (right "Try to recall them again a few times over the 2 weeks")
  (wrong "Learn them very well on Monday, then leave them"
    "Even things learned well fade if they are never used. Coming back to them later slows the fading.")
  (wrong "Wait until the day before she needs them"
    "By then most of the words will have faded. Short reviews along the way keep them from fading so far.")
  (hint "Look at the slider figure. What keeps the curve high?"))
```

---

## How learn does it

learn uses this idea. When you open a lesson, it can start with a
**warm-up**: up to 3 questions from the same course that are due to
come back. You can skip it with Esc, but it is there to bring
old memories back before they fade.

```check
(choice
  (ask "Why does a lesson in learn sometimes start with questions from earlier lessons?")
  (right "To bring back old memories before they fade too far")
  (wrong "To check that you did the earlier lessons"
    "learn already keeps your progress. The old questions are there to help you remember, not to check up on you.")
  (wrong "To fill time before the new lesson"
    "Bringing back what you learned earlier is one of the most useful things a lesson can do. It is not filler.")
  (hint "Think about the forgetting curve. What do reviews do to it?"))
```

---

## Practice

```check
(choice
  (ask "You read a page about volcanoes on Sunday. On Friday you remember only a little of it. What does that show?")
  (right "Normal forgetting: memories fade without use")
  (wrong "You are bad at remembering things"
    "Everyone forgets new things quickly at first. Forgetting like this is normal, not a sign that something is wrong with you.")
  (wrong "The page was too hard to learn"
    "Even easy things fade if you never come back to them. The fix is to bring them back, not to find easier pages.")
  (hint "Does the forgetting curve happen to some people, or to everyone?"))
```

```check
(choice
  (ask "What does a review do to a memory, as the sketch shows it?")
  (right "It brings the memory back up, and then it fades more slowly")
  (wrong "It stops the memory from ever fading again"
    "Memories still fade after a review, only more slowly. That is why more than one review helps.")
  (wrong "Nothing, if you already learned it once"
    "Learning once is a start, but the curve keeps falling. A review lifts it and slows the fall.")
  (hint "Move the slider back to 1 review and look at the curve after it."))
```

---

## This week

Today, pick one thing you learned at school or in learn. Tomorrow,
before you look at it again, try to say or write what you remember.
Then check.

So: memories fade fast at first, and every time you bring one back, it
fades more slowly.
