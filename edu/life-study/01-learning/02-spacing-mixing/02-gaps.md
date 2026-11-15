# How far apart?

```lesson
(objective "Choose gaps between reviews that suit how long you need to remember.")
(minutes 15)
```

How far apart should your study sessions be? It depends on how long you
need to remember.

The 2006 review of spacing experiments also looked at the gaps between
sessions. When the final test came later, longer gaps tended to work
better. When the test came soon, shorter gaps did.

So a rough guide is:

- for a test next week, gaps of a day or two;
- for things you need all year, gaps that grow to weeks.

```sources
(source "Cepeda, Pashler, Vul, Wixted and Rohrer, Distributed Practice in Verbal Recall Tasks, Psychological Bulletin 132(3), 2006")
```

```check
(choice
  (ask "Eva has a quiz in 4 days. Raj wants to remember his times tables for years. Who should use longer gaps?")
  (right "Raj, because he needs to remember for longer")
  (wrong "Eva, because her quiz is sooner"
    "With only 4 days, Eva has no room for long gaps. Longer gaps suit remembering for longer, like Raj.")
  (wrong "Both should use the same gaps"
    "The research found that the best gaps depend on how long you need to remember.")
  (hint "Match the gap to how far away the day is when you need it."))
```

---

## Gaps that grow

learn spreads review out with gaps that grow: 1, 3, 7, 16 and 35 days.
A question you miss comes back after 1 day. Each time you get it
right the first time, without a hint, it moves on to the next, longer
gap.

Gaps that grow keep reviews few once you know something well, and
frequent while you are still learning it.

Move the slider to see the days a missed question comes back, if you
get it right every time it comes back.

```figure
(define n (slider 'reviews 1 5 1 "Times back" 1))
(define days '(1 3 7 16 35))
(define (sum-to k) (if (= k 0) 0 (+ (list-ref days (- k 1)) (sum-to (- k 1)))))
(define x0 20)
(define (dx d) (+ x0 (* 280 (/ d 62))))
(line x0 120 300 120 'ink 1.5)
(ring x0 120 4 'ink 1.5)
(text x0 100 "0" 'small 'centre)
(text 160 70 "open circle: the day you missed it" 'small 'centre)
(text 160 180 "days after you missed it" 'small 'centre)
(for-range 1 (+ n 1)
  (lambda (k)
    (dot (dx (sum-to k)) 120 'ink)
    (text (dx (sum-to k)) (if (odd? k) 145 100) (number->string (sum-to k)) 'small 'centre)))
(caption (string-append "Back on day " (number->string (sum-to n)) ", after a gap of " (number->string (list-ref days (- n 1))) (if (= n 1) " day" " days")))
```

```check
(number
  (ask "You miss a question on day 0. It comes back on day 1, and you get it right. It comes back 3 days later, and you get it right again. The next gap is 7 days. On which day does it come back?")
  (answer 11) (from "1 + 3 + 7")
  (wrong-if 7 "7 is the gap, not the day. Add the gaps: day 1, then 3 days later, then 7 days after that.")
  (wrong-if 10 "Count every gap from day 0: 1, then 3, then 7.")
  (hint "Add up the gaps from day 0.")
  (hint "1 + 3 + 7."))
```

---

## Not too long

A gap can be too long. If you have forgotten nearly everything by the
time you come back, you are starting over.

A good gap is long enough that recalling takes some effort, but short
enough that you can still get most of it back.

```example
(example
  (problem "You have a spelling test in 7 days, with 20 words.")
  (step "Day 1: learn the words and test yourself until you get each one right once.")
  (step "Day 2: test yourself again. Practice the ones you missed.")
  (step "Day 4: test again, the same way.")
  (step "Day 6: one last self-test, then a good night's sleep.")
  (answer "4 short sessions, with gaps of 1, 2 and 2 days, all before the test on day 7."))
```

```check
(choice
  (ask "Lena studies a list once, then not again for 3 months. Why is that gap too long for her?")
  (right "By then she will have forgotten most of it and must start over")
  (wrong "It is not too long: longer gaps are always better"
    "Longer gaps help only up to a point. If almost nothing is left, there is nothing to recall.")
  (wrong "Gaps should always be exactly 1 day"
    "There is no one right gap. It depends on how long she needs to remember, but 3 months after one session is too long.")
  (hint "What is left of a memory after 3 months with no review?"))
```

---

## Practice

```check
(choice
  (ask "Which plan suits a test in 2 weeks best?")
  (right "Short sessions every 2 or 3 days")
  (wrong "One long session the day before"
    "That is cramming: all massed, and it fades fast.")
  (wrong "One session today, then nothing until the test"
    "With one session and a 2-week gap, most of it will have faded. Add reviews in between.")
  (hint "Look for gaps of a few days."))
```

```check
(choice
  (ask "Why does learn make the gaps grow when you keep getting a question right?")
  (right "You know it better each time, so it can wait longer before it fades")
  (wrong "To make the questions harder"
    "The question stays the same. The gap grows because the memory is getting stronger.")
  (wrong "So you never see the question again"
    "It keeps coming back, just less often. The longest gap is 35 days.")
  (hint "What happens to the forgetting curve after each review?"))
```

---

## This week

Choose something you need to remember for a long time, like times
tables or new words. Review it on days 1, 2, 4 and 8 from today.

So: match your gaps to how long you need to remember, and let them grow
as you learn.
