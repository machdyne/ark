# On or off

```lesson
(objective "Say what a bit is: one of two states, written 1 or 0.")
(minutes 15)
(keywords "bit")
```

A computer keeps everything as bits, and each bit is on or off.

Think of a light switch. It is on, or it is off. There is nothing in
between.

Inside a computer are millions of tiny switches. Each one holds one
**bit**: a thing that can be in just two states, on or off. We write
on as **1** and off as **0**.

Click the box under the lamp to switch it on and off.

```figure
(define on (toggle 'on "Switch on"))
(cs2-lamp 160 95 40 on)
(text 160 190 (if on "on: the bit is 1" "off: the bit is 0") 'centre 'big 'bold)
```

```sources
(source "Timeless Computing (Zeitlos docs, tc.md), Information: Bits")
```

```check
(number
  (ask "The lamp is on. Which number do we write for this bit?")
  (answer 1)
  (wrong-if 0 "0 is for off. A lamp that is on is written 1.")
  (hint "There are only two numbers: 1 and 0.")
  (hint "On is 1."))
```

---

## Two states

A bit has exactly two states. That is why it is written with just two
digits, 1 and 0.

Lots of things around you have two states, like a bit:

- a door is open or closed;
- a key on the keyboard is pressed or not pressed;
- a coin lands heads or tails.

```check
(choice
  (ask "Which of these has just two states, like a bit?")
  (right "A light switch: on or off")
  (wrong "A volume knob"
    "A knob can be turned a little, a lot or anywhere in between. That is many states, not two.")
  (wrong "A ruler"
    "A ruler has many marks, one for each length. A bit has only two states.")
  (hint "Look for the one with nothing in between."))
```

---

## A bit answers yes or no

One bit can answer one yes-or-no question. We can agree that 1 means
yes and 0 means no.

Is the key pressed? 1 for yes, 0 for no. Is the door open? 1 for yes,
0 for no.

```check
(choice
  (several)
  (ask "Which questions can one bit answer? Choose every one.")
  (right "Is the door open?")
  (right "Is the space key pressed?")
  (wrong "What color is the car?"
    "A car can be many colors: red, blue, white and more. One bit has only two states, so it cannot name them all.")
  (wrong "How many people are in the room?"
    "The answer could be 0, 1, 2, 3 or many more. One bit can only say yes or no.")
  (hint "One bit has two answers. Which questions have only yes or no?"))
```

---

## A row of bits

A computer uses many bits side by side. Each lamp below is one bit.
Under each lamp is its 1 or 0. Read them from left to right.

```figure
(cs2-lamps 90 3 5 80)
(caption "on, off, on")
```

```example
(example
  (problem "Write the bits of the lamps: on, off, on.")
  (step "The first lamp is on: 1.")
  (step "The second lamp is off: 0.")
  (step "The third lamp is on: 1.")
  (answer "The bits are 101."))
```

```example
(example
  (problem "Write the bits of the lamps: off, on, on.")
  (step "The first lamp is off: 0.")
  (step "The second lamp is on: 1.")
  (step (text (ask "Now write all three bits.")
    (accept "011")
    (wrong-if "100" "That swaps on and off. On is 1 and off is 0.")
    (wrong-if "110" "That is the lamps read from right to left. Start with the left lamp, which is off.")))
  (answer "The bits are 011."))
```

---

## Practice

```figure
(cs2-lamps 90 4 12 70)
```

```check
(text
  (ask "Write the bits of these 4 lamps, from left to right.")
  (accept "1100")
  (wrong-if "0011" "That swaps on and off, or reads from the right. The two lamps on the left are on: 1 and 1.")
  (wrong-if "11" "Every lamp is a bit, the ones that are off too. Write a 0 for each lamp that is off.")
  (hint "Write 1 for a lit lamp and 0 for a dark one.")
  (hint "The first two lamps are lit."))
```

---

```check
(choice
  (ask "A bit is 0. What does that tell you?")
  (right "It is off")
  (wrong "It is broken"
    "0 is not a mistake. It is one of the two states a bit can be in: off.")
  (wrong "It is half on"
    "A bit has nothing in between. It is on or off, so 0 means off.")
  (hint "1 is on. What is 0?"))
```

```check
(number
  (ask "How many states can one bit be in?")
  (answer 2)
  (wrong-if 1 "A bit is always in one state at a time, but it can be in either of 2: on or off.")
  (wrong-if 10 "We write numbers with 10 digits, but a bit uses only two of them: 1 and 0.")
  (hint "On, off ... anything else?"))
```

So: a bit is on or off, and we write it as 1 or 0.
