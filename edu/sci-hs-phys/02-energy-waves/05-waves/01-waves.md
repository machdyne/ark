# Waves

```lesson
(objective "Describe a wave as a disturbance that carries energy through a medium without carrying the medium along.")
(standards "HS-PS4-1")
(minutes 20)
(keywords "wave" "medium (of a wave)" "mechanical wave")
```

You learn what a wave is: what moves along it, and what does not.

Tie one end of a long rope to a post and shake the other end up and
down. A disturbance runs along the rope to the post, yet each piece of
rope only moves up and down. A **wave** is a disturbance that travels
from place to place, carrying energy, without carrying matter along
with it.

The matter a wave travels through is its **medium**: here, the rope.
Watch the three marked points of the rope.

```figure
(still
  (wv-wall 300 60 180)
  (for-each (lambda (x) (line x 75 x 165 'grey 1)) '(80 160 240)))
(define ph (* 0.5 (seconds)))
(wv-wave 20 300 120 30 140 ph 46 'ink 2)
(for-each (lambda (x) (circle x (wv-y x 20 120 30 140 ph) 5 'warm)) '(80 160 240))
(arrow 120 40 200 40 'ink 1.5)
(text 160 30 "the wave moves this way" 'centre 'small)
(caption "Real time. The marked points move only up and down.")
```

```sources
(source "OpenStax, College Physics 2e (2022), section 16.9, Waves")
```

```check
(choice
  (ask "A wave travels along a rope from your hand to a post. What travels from your hand to the post?")
  (right "Energy, carried by the disturbance")
  (wrong "The rope itself, moving toward the post"
    "Watch a marked point: it moves up and down and stays where it was. The rope does not travel; the disturbance does.")
  (wrong "Nothing: the rope only moves up and down"
    "Something does travel: the disturbance, and the energy with it. That energy could shake the post.")
  (hint "Watch one marked point. Does it ever reach the post?"))
```

---

## Waves need something to travel through

A wave on a rope, a ripple on a pond and sound in air each need matter
to travel through. A wave that needs a medium is a
**mechanical wave**. Its energy passes from each part of the medium to
the next, like a push passed down a line of people.

A mechanical wave cannot cross empty space: with no medium, there is
nothing to pass the disturbance along. Light is different, and the
light unit of this part shows why.

```check
(choice
  (ask "Which of these is a mechanical wave?")
  (right "A ripple spreading across a pond")
  (wrong "A ball thrown across a field"
    "The ball carries its own matter along with it. A wave carries energy while its medium stays where it is.")
  (wrong "A car driving down a road"
    "The car itself travels. In a wave, the medium only moves about its place.")
  (hint "Which one passes energy through matter that stays in place?"))
```

---

## A duck on a pond

A duck floats on a pond as ripples pass under it. The duck bobs up and
down and a little back and forth, but the ripples do not carry it to
the shore. The water at each place moves about its own position, just
as the rope does.

```check
(choice
  (ask "Ripples pass a floating leaf. What happens to the leaf?")
  (right "It bobs about its place, and the ripples pass on")
  (wrong "It is carried along with the ripples to the edge"
    "The ripples carry energy, not water. The water under the leaf moves about its place, so the leaf does too.")
  (wrong "It stays perfectly still while the ripples pass under it"
    "The water under the leaf moves up and down as each ripple passes, so the leaf moves too, about its place.")
  (hint "Think about the marked points on the rope."))
```

---

## Practice

```check
(choice
  (ask "In a stadium, fans stand and sit in turn, and a 'wave' runs around the stadium. What is the medium?")
  (right "The fans")
  (wrong "The air in the stadium"
    "The disturbance is the standing and sitting of the fans. They pass it from one to the next, so they are the medium.")
  (wrong "There is none: the wave moves by itself"
    "The disturbance only exists in the people who stand and sit. Without them, nothing would travel.")
  (hint "What does the disturbance travel through?"))
```

```check
(choice
  (ask "An astronaut on a spacewalk bangs a tool against a metal handrail of her space station. Her partner floats a few meters away, touching nothing. Does the partner hear the bang?")
  (right "No: sound is a mechanical wave and cannot cross empty space")
  (wrong "Yes, but more quietly"
    "Sound in air grows quieter with distance, but in empty space there is no air at all to carry it. No medium, no sound.")
  (wrong "Yes, because sound travels farther with no air in the way"
    "The air is not in the way of sound; it is what carries sound. Without a medium the disturbance has nothing to travel in.")
  (hint "What does sound need to travel?"))
```

So: a wave carries energy through a medium, while the medium itself
only moves about its place.
