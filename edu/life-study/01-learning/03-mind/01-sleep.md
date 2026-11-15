# Sleep

```lesson
(objective "Say how much sleep people your age need and why sleep matters for memory.")
(minutes 15)
(keywords "consolidation (of memory)")
```

Sleep is part of learning: it helps your brain keep what you learned
during the day.

A group of sleep doctors, the American Academy of Sleep Medicine, says
how much sleep children and teenagers need each day, on a regular
basis:

| Ages | Sleep each day |
|---|---|
| 6 to 12 | 9 to 12 hours |
| 13 to 18 | 8 to 10 hours |

For adults (18 and older), a separate statement says 7 hours or more.

```figure
(graph 24 30 280 130 0 14 0 2)
(line (gx 0) (gy 0) (gx 14) (gy 0) 'ink 1.5)
(for-range 0 8
  (lambda (i)
    (line (gx (* 2 i)) (gy 0) (gx (* 2 i)) (+ (gy 0) 4) 'ink 1)
    (text (gx (* 2 i)) (+ (gy 0) 16) (number->string (* 2 i)) 'small 'centre)))
(rect (gx 9) (gy 1.7) (- (gx 12) (gx 9)) (- (gy 1.3) (gy 1.7)) 'warm)
(frame (gx 9) (gy 1.7) (- (gx 12) (gx 9)) (- (gy 1.3) (gy 1.7)) 'ink 1)
(rect (gx 8) (gy 0.7) (- (gx 10) (gx 8)) (- (gy 0.3) (gy 0.7)) 'cool)
(frame (gx 8) (gy 0.7) (- (gx 10) (gx 8)) (- (gy 0.3) (gy 0.7)) 'ink 1)
(text (gx 0) (+ (gy 1.5) 4) "ages 6 to 12" 'small)
(text (gx 0) (+ (gy 0.5) 4) "ages 13 to 18" 'small)
(text 160 (+ (gy 0) 34) "hours of sleep each day" 'small 'centre)
(caption "Recommended sleep (AASM, 2016)")
```

```sources
(source "Paruthi and others, Recommended Amount of Sleep for Pediatric Populations, Journal of Clinical Sleep Medicine 12(6), 2016 (American Academy of Sleep Medicine)")
(source "Watson and others, Recommended Amount of Sleep for a Healthy Adult, 2015 (American Academy of Sleep Medicine and Sleep Research Society)")
```

```check
(number
  (ask "Kai is 11. What is the least number of hours of sleep a day the sleep doctors recommend for him?")
  (answer 9) (unit "hours")
  (wrong-if 8 "8 hours is the least for ages 13 to 18. Kai is 11, so look at the row for 6 to 12.")
  (wrong-if 12 "12 hours is the most in the range for his age. The least is the smaller number.")
  (hint "Find the row for ages 6 to 12.")
  (hint "The range is 9 to 12 hours. Which end is the least?"))
```

---

## Why it matters

The same sleep doctors say that sleeping the recommended hours on a
regular basis goes with better attention, learning and memory, and
better health.

Sleeping less than that, regularly, goes with problems in attention,
behavior and learning.

```sources
(source "Paruthi and others, Recommended Amount of Sleep for Pediatric Populations, Journal of Clinical Sleep Medicine 12(6), 2016")
```

```check
(choice
  (ask "What do the sleep doctors link with getting too little sleep, regularly?")
  (right "Problems with attention, behavior and learning")
  (wrong "Nothing, as long as you catch up on weekends"
    "The advice is about sleeping enough on a regular basis. Regular short sleep goes with problems in attention and learning.")
  (wrong "Only feeling a bit tired in the morning"
    "Feeling tired is one part. The doctors also link it with problems in attention, behavior and learning.")
  (hint "The doctors named 3 kinds of problems. One of them is learning."))
```

---

## What sleep does for memory

A new memory starts out fragile. Over time it becomes more stable and
harder to lose. This is called **consolidation**.

Researchers have found that sleep after learning helps consolidation.
People who sleep after learning something usually remember it better
than people who stay awake for the same time.

```sources
(source "Diekelmann and Born, The Memory Function of Sleep, Nature Reviews Neuroscience 11(2), 2010")
```

```check
(choice
  (ask "What is consolidation?")
  (right "A new memory becoming more stable and harder to lose")
  (wrong "Learning something for the first time"
    "Consolidation happens after you learn something. It is the memory becoming stable, not the first learning.")
  (wrong "Forgetting what you do not need"
    "Consolidation is about keeping, not losing. It makes a new memory stronger.")
  (hint "Think of a new memory going from fragile to stable."))
```

---

## Planning sleep

To get enough sleep, work back from the time you have to get up.

```example
(example
  (problem "Ali gets up at 7:00 in the morning and wants 10 hours of sleep.")
  (step "Count back 10 hours from 7:00 in the morning.")
  (step "7 hours back is midnight. 3 more hours back is 9:00 in the evening.")
  (step "Falling asleep takes a little time, so he goes to bed a bit before 9:00.")
  (answer "Ali goes to bed a little before 9:00 in the evening."))
```

```check
(number
  (ask "Zoe falls asleep at 9:30 in the evening and wakes up at 7:00 in the morning. How many hours does she sleep?")
  (answer 9.5) (unit "hours") (from "2.5 + 7")
  (wrong-if 2.5 "That is only from 9:30 to midnight. Add the hours from midnight to 7:00.")
  (wrong-if 10.5 "Count again: 9:30 to midnight is 2 and a half hours, then 7 more.")
  (hint "First count from 9:30 to midnight.")
  (hint "2.5 hours to midnight, then 7 hours to 7:00."))
```

---

## Practice

```check
(choice
  (ask "Max has a test tomorrow. Which plan is better for his memory?")
  (right "Review a little in the evening, then sleep his usual hours")
  (wrong "Stay up 2 hours later than usual to study more"
    "Losing sleep works against him: sleep helps memories become stable, and short sleep goes with attention problems.")
  (wrong "Skip studying and sleep 14 hours"
    "Sleep helps keep what he studied, but it cannot keep what he never studied. And 14 hours is more than recommended.")
  (hint "He needs both practice and sleep."))
```

---

## This week

For 5 days, write down the time you fall asleep and the time you wake
up. Work out your hours each night. Are they in the range for your age?

So: sleep helps new memories become stable, and people your age need 9
to 12 hours (ages 6 to 12) or 8 to 10 hours (ages 13 to 18).
