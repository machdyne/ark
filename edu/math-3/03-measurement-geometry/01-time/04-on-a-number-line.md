# Elapsed time on a number line

```lesson
(objective "Find elapsed time with jumps on a number line marked in minutes.")
(standards "3.MD.A.1")
(minutes 20)
```

You can find elapsed time with jumps on a number line.

This number line shows 1 hour, from 2:00 to 3:00. Each mark is 5 minutes later than the one before.

```figure
(ms-tline 30 290 140 2 0 60 5 15)
(define m (slider 'm 0 60 20 "Minutes after 2:00" 5))
(nl-mark m 'warm (ms-hm 2 m))
(caption "A mark every 5 minutes; a time every 15")
```

```check
(number
  (ask "How many minutes are there from 2:15 to 2:30 on this line?")
  (answer 15) (unit "minutes") (from "30 - 15")
  (wrong-if 3 "There are 3 spaces between 2:15 and 2:30, but each space is 5 minutes. 3 fives are 15.")
  (wrong-if 30 "2:30 is 30 minutes after 2:00. But you start at 2:15, so count only from 15 to 30.")
  (hint "Count the spaces from 2:15 to 2:30.")
  (hint "Each space is 5 minutes."))
```

---

## Jump to an easy time

Start at the start time. Make big jumps to easy times, like a time on the hour or the half hour. Then add up the jumps.

From 2:10 to 2:45: jump 20 minutes to 2:30. Then jump 15 minutes to 2:45.

$$ 20 + 15 = 35 $$

```figure
(ms-tline 30 290 160 2 0 60 5 15)
(nl-mark 10 'warm)
(label (nl-x 10) 196 "2:10" 'small 'bold)
(nl-jump 10 30 'ink "+20")
(nl-jump 30 45 'ink "+15")
(nl-mark 45 'warm)
(caption "From 2:10 to 2:45: 20 + 15 = 35 minutes")
```

```check
(number
  (ask "Use jumps. How many minutes from 2:25 to 2:55?")
  (answer 30) (unit "minutes") (from "5 + 25")
  (wrong-if 80 "25 + 55 adds the two times. The jumps count only the minutes between them.")
  (wrong-if 25 "The first jump, 2:25 to 2:30, is 5 minutes. Then 2:30 to 2:55 is 25 more.")
  (hint "Jump from 2:25 to 2:30 first.")
  (hint "Then jump from 2:30 to 2:55."))
```

---

## Jumps of 1 minute

Some times are not on a 5. This line has a mark for every minute.

From 4:20 to 4:38: jump 10 to 4:30, then 5 to 4:35, then 3 to 4:38.

$$ 10 + 5 + 3 = 18 $$

```figure
(ms-tline 30 290 160 4 20 20 1 5)
(nl-mark 0 'warm)
(nl-jump 0 10 'ink "+10")
(nl-jump 10 15 'ink "+5")
(nl-jump 15 18 'ink "+3")
(nl-mark 18 'warm)
(caption "A mark every minute: 18 minutes in all")
```

```check
(number
  (ask "Use jumps. How many minutes from 4:20 to 4:34?")
  (answer 14) (unit "minutes") (from "10 + 4")
  (wrong-if 54 "20 + 34 adds the two times. Jump from 4:20 to 4:30, then on to 4:34.")
  (wrong-if 4 "4 is only the last jump, from 4:30 to 4:34. Add the first jump of 10 too.")
  (hint "Jump from 4:20 to 4:30. That is 10 minutes.")
  (hint "Then from 4:30 to 4:34. Add the 2 jumps."))
```

---

## A worked example

```figure
(ms-tline 30 290 160 8 0 60 5 15)
(nl-mark 5 'warm)
(label (nl-x 5) 196 "8:05" 'small 'bold)
(nl-jump 5 30 'ink "+25")
(nl-jump 30 50 'ink "+20")
(nl-mark 50 'warm)
(label (nl-x 50) 196 "8:50" 'small 'bold)
(caption "From 8:05 to 8:50")
```

```example
(example
  (problem "Rosa walks her dog from 8:05 to 8:50. How long is the walk?")
  (step "Mark 8:05 and 8:50 on the line.")
  (step "Jump from 8:05 to 8:30. That is 25 minutes.")
  (step "Jump from 8:30 to 8:50. That is 20 minutes.")
  (step (number (ask "Add the jumps: 25 + 20 = ?") (answer 45) (from "25 + 20")
          (wrong-if 35 "25 + 20 is 2 tens more than 25: 45.")))
  (answer "The walk is 45 minutes."))
```

---

## Now you finish one

```figure
(ms-tline 30 290 160 6 0 60 5 15)
(nl-mark 15 'warm)
(nl-jump 15 30 'ink "+15")
(nl-jump 30 55 'ink "?")
(nl-mark 55 'warm)
(label (nl-x 55) 196 "6:55" 'small 'bold)
```

A show starts at 6:15 and ends at 6:55. The first jump is 15 minutes, to 6:30.

```check
(number
  (ask "How many minutes long is the show?")
  (answer 40) (unit "minutes") (from "15 + 25")
  (wrong-if 25 "25 is only the second jump, from 6:30 to 6:55. Add the first jump of 15.")
  (wrong-if 70 "15 + 55 adds the two times. Add the 2 jumps instead.")
  (hint "The second jump goes from 6:30 to 6:55. How long is it?")
  (hint "It is 25 minutes. Now add 15 + 25."))
```

---

## Practice

```check
(number
  (ask "Use jumps. How many minutes from 1:40 to 1:57?")
  (answer 17) (unit "minutes") (from "10 + 5 + 2")
  (wrong-if 97 "40 + 57 adds the two times. Jump from 1:40 to 1:50, then on to 1:57.")
  (wrong-if 7 "From 1:50 to 1:57 is 7. But you started at 1:40, so add the jump of 10 too.")
  (hint "Jump 10 minutes from 1:40 to 1:50.")
  (hint "Then jump from 1:50 to 1:57."))
```

```check
(choice
  (ask "Which jumps take you from 9:35 to 9:50?")
  (right "+5 to 9:40, then +10 to 9:50" (true "5 + 10 = 15"))
  (wrong "+5 to 9:40, then +50 to 9:50"
    "From 9:40 to 9:50 is not 50 minutes. The minutes go from 40 to 50, which is 10.")
  (wrong "+35, then +50"
    "35 and 50 are the times, not the jumps. A jump is the minutes between two times.")
  (hint "A jump is how far you go, not where you land."))
```

---

```check
(number
  (ask "Use jumps. How many minutes from 11:12 to 11:45?")
  (answer 33) (unit "minutes") (from "3 + 30")
  (wrong-if 57 "12 + 45 adds the two times. Jump from 11:12 to 11:15, then to 11:45.")
  (wrong-if 30 "From 11:15 to 11:45 is 30. Add the first jump, from 11:12 to 11:15, of 3.")
  (hint "Jump from 11:12 to 11:15 first.")
  (hint "That is 3 minutes. Then 11:15 to 11:45 is 30."))
```

Now you can find elapsed time on a number line: jump to easy times, then add the jumps.
