# Time word problems

```lesson
(objective "Solve word problems about elapsed time in minutes.")
(standards "3.MD.A.1")
(minutes 25)
```

You can solve word problems about time with a number line.

First, find what the problem asks for. There are 3 kinds:

- the **end** time: you know the start and how long;
- the **start** time: you know the end and how long;
- **how long**: you know the start and the end.

```check
(choice
  (ask "Practice starts at 4:10. It ends at 4:55. How long is practice? What does this ask for?")
  (right "How long: the elapsed time")
  (wrong "The end time"
    "The end time, 4:55, is already given. The question asks how long practice lasts.")
  (wrong "The start time"
    "The start time, 4:10, is already given. The question asks how long practice lasts.")
  (hint "Which of the 3 things is not in the problem?"))
```

---

## Draw a number line

Put what you know on a number line. Then jump.

Practice starts at 4:10 and ends at 4:55. Jump from 4:10 to 4:30, then on to 4:55.

```figure
(ms-tline 30 290 150 4 0 60 5 15)
(nl-mark 10 'warm)
(label (nl-x 10) 186 "4:10" 'small 'bold)
(nl-jump 10 30 'ink "+20")
(nl-jump 30 55 'ink "+25")
(nl-mark 55 'cool)
(label (nl-x 55) 186 "4:55" 'small 'bold)
(caption "Start 4:10, end 4:55")
```

```check
(number
  (ask "How many minutes long is practice?")
  (answer 45) (unit "minutes") (from "20 + 25")
  (wrong-if 65 "10 + 55 adds the two times. Add the jumps: 20 + 25.")
  (wrong-if 25 "25 is only the second jump. Add the first jump of 20.")
  (hint "Add the 2 jumps."))
```

---

## A worked example

```figure
(ms-tline 30 290 150 9 0 60 5 15)
(nl-mark 40 'cool)
(label (nl-x 40) 186 "9:40" 'small 'bold)
(nl-jump 40 10 'ink "-30")
(nl-jump 10 5 'ink "-5")
(nl-mark 5 'warm)
(label (nl-x 5) 186 "9:05" 'small 'bold)
(caption "Back 35 minutes from 9:40")
```

```example
(example
  (problem "The library opens at 9:40. Jo walks there in 35 minutes. She gets there just as it opens. When did she leave home?")
  (step "You know the end time, 9:40, and how long, 35 minutes. You want the start time.")
  (step "Jump back 30 minutes from 9:40 to 9:10.")
  (step "Jump back 5 more minutes to 9:05.")
  (answer "Jo left at 9:05."))
```

---

## Now you finish one

The pool opens at 1:50. Max swims for 40 minutes. He jumps 10 minutes to 2:00.

```figure
(ms-tline 30 290 150 1 30 60 5 15)
(nl-mark 20 'warm)
(label (nl-x 20) 186 "1:50" 'small 'bold)
(nl-jump 20 30 'ink "+10")
(nl-jump 30 60 'ink "?")
(caption "Start 1:50, 40 minutes")
```

```check
(text
  (ask "When does Max stop swimming? Type it like 9:07.")
  (accept "2:30")
  (wrong-if "2:10" "Jump 10 to 2:00 uses only 10 of the 40 minutes. 30 are left after 2:00.")
  (wrong-if "1:90" "There are only 60 minutes in an hour. After 1:59 comes 2:00.")
  (hint "40 - 10 = 30 minutes are left after 2:00.")
  (hint "Jump 30 minutes from 2:00."))
```

---

## Two lengths of time

Some problems give 2 lengths of time. Add them first.

Eva does homework for 25 minutes. Then she reads for 20 minutes. She starts at 6:30. 25 + 20 = 45 minutes in all.

```check
(text
  (ask "When does Eva finish? Type it like 9:07.")
  (accept "7:15")
  (wrong-if "6:75" "There are only 60 minutes in an hour. Jump 30 minutes to 7:00, then 15 more.")
  (wrong-if "6:55" "6:55 is only after the homework. She reads for 20 minutes too.")
  (hint "Jump 45 minutes from 6:30.")
  (hint "30 minutes takes you to 7:00. 15 are left."))
```

---

## Practice

```check
(number
  (ask "A bus leaves at 8:12 and gets to school at 8:40. How many minutes is the ride?")
  (answer 28) (unit "minutes") (from "8 + 20")
  (wrong-if 52 "12 + 40 adds the two times. Jump from 8:12 to 8:20, then to 8:40.")
  (wrong-if 32 "From 8:12 to 8:20 is 8 minutes, not 12. Then 20 more.")
  (hint "Jump from 8:12 to 8:20.")
  (hint "That is 8 minutes. Then 8:20 to 8:40 is 20."))
```

```check
(text
  (ask "A cake must cool for 15 minutes. It is cool at 3:05. When did it start to cool? Type it like 9:07.")
  (accept "2:50")
  (wrong-if "3:20" "That jumps forward. The cake started to cool before 3:05, so jump back.")
  (wrong-if "3:50" "You cannot take 15 from 5 and stay in the 3 hour. Jump back 5 to 3:00, then 10 more.")
  (hint "Jump back 5 minutes to 3:00.")
  (hint "10 minutes are left. 10 minutes before 3:00 is 2:50."))
```

---

```check
(number
  (ask "Lee runs for 35 minutes and walks for 30 minutes. How many minutes past 1 hour is that?")
  (answer 5) (unit "minutes") (from "35 + 30 - 60")
  (wrong-if 65 "65 is all the minutes. 60 of them make 1 hour. How many are past it?")
  (wrong-if 15 "1 hour is 60 minutes, not 50. 65 - 60 = 5.")
  (hint "35 + 30 = 65 minutes.")
  (hint "Take away the 60 minutes of the hour."))
```

```check
(choice
  (ask "A show starts at 7:45 and ends at 8:20. How long is it?")
  (right "35 minutes" (true "15 + 20 = 35"))
  (wrong "25 minutes" (false "15 + 20 = 25")
    "From 7:45 to 8:00 is 15 minutes, and 8:00 to 8:20 is 20. 15 + 20 = 35.")
  (wrong "75 minutes" (false "15 + 20 = 75")
    "That takes 745 from 820 as plain numbers. But an hour has 60 minutes, not 100. Jump instead.")
  (hint "Jump from 7:45 to 8:00 first."))
```

Now you can solve time problems: find what is asked, draw a number line, and jump.
