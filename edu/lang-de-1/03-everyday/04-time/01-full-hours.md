# Full hours

```lesson
(objective "Ask the time and say full hours with Uhr.")
(minutes 20)
```

In this lesson you ask the time and say the full hours: **Wie spät ist es? - Es ist drei Uhr.**

There are two ways to ask the time:

> Wie spät ist es? (word for word: How late is it?)

> Wie viel Uhr ist es? (word for word: How much clock is it?)

The answer is **Es ist ... Uhr**. Move the slider and read the time.

```figure
(define h (slider 'h 1 12 3 "hour" 1))
(define words '("ein" "zwei" "drei" "vier" "fünf" "sechs" "sieben" "acht" "neun" "zehn" "elf" "zwölf"))
(de3-clock 160 100 80 h 0 (string-append "Es ist " (list-ref words (- h 1)) " Uhr."))
```

```cards
(card "Wie spät ist es?" "What time is it?" (typed))
(card "Wie viel Uhr ist es?" "What time is it?")
(card "die Uhr, die Uhren" "the clock" (typed) (note "Also: the watch. With a time it means o'clock: drei Uhr."))
```

```check
(text
  (ask "The clock shows 8:00. Es ist ___ Uhr. Type the number as a word.")
  (accept "acht")
  (accept "8")
  (wrong-if "achte" "For the time, just say the number: acht Uhr.")
  (hint "8 is acht."))
```

---

## ein Uhr, not eins Uhr

When you count, 1 is **eins**. Before Uhr, it is **ein**: **Es ist ein Uhr.** Without Uhr, you can say **Es ist eins.**

> Es ist ein Uhr. = Es ist eins. (It is one o'clock.)

```check
(choice
  (ask "It is 1:00. Which is right?")
  (right "Es ist ein Uhr.")
  (wrong "Es ist eins Uhr."
    "Before Uhr, eins loses its s: ein Uhr. Eins alone is also fine: Es ist eins.")
  (wrong "Es ist eine Uhr."
    "Eine Uhr is a clock, the thing on the wall. One o'clock is ein Uhr.")
  (hint "Before Uhr: ein."))
```

---

## Uhr or Stunde?

**die Uhr** names a clock or watch, and a time on it: **drei Uhr** (three o'clock).

**die Stunde** is an hour of time that passes: **drei Stunden** (three hours).

```cards
(card "die Stunde, die Stunden" "the hour" (typed) (note "Time that passes: zwei Stunden."))
(card "die Minute, die Minuten" "the minute" (typed))
(card "warten" "to wait" (typed) (note "du wartest, er wartet: the stem ends in t, like arbeiten."))
```

> Es ist drei Uhr. Ich warte schon zwei Stunden! (It is three o'clock. I have been waiting for two hours!)

An hour has 60 minutes: **Eine Stunde hat sechzig Minuten.**

```check
(choice
  (ask "How do you say: I have to wait two hours.")
  (right "Ich muss zwei Stunden warten.")
  (wrong "Ich muss zwei Uhr warten."
    "Zwei Uhr is a time on the clock, two o'clock. Time that passes is Stunden.")
  (wrong "Ich muss zwei Stunde warten."
    "After zwei, use the plural: zwei Stunden.")
  (hint "Time that passes: Stunde, here in the plural."))
```

---

## A worked example

```example
(example
  (problem "Someone asks: Wie spät ist es? Your watch shows 11:00.")
  (step "Start with Es ist.")
  (step "11 is elf.")
  (step "Add Uhr.")
  (answer "Es ist elf Uhr."))
```

---

## Now you finish one

Your watch shows 6:00. **Es ist ___ Uhr.**

```check
(text
  (ask "Type the number as a word.")
  (accept "sechs")
  (accept "6")
  (wrong-if "sex" "Six is spelled sechs in German, with chs.")
  (hint "6"))
```

---

## On the phone

> Mama: Wo bist du, Lena? Wie spät ist es?

> Lena: Es ist sieben Uhr. Ich bin im Park. (in the)

> Mama: Sieben Uhr? Du musst nach Hause kommen! (home)

> Lena: Ja, ja. In einer Stunde bin ich da. (in an hour)

```check
(choice
  (ask "What time is it?")
  (right "7:00")
  (wrong "1:00"
    "In einer Stunde means in one hour. The time is sieben Uhr.")
  (wrong "8:00"
    "Lena will be home at about 8, in one hour. Now it is sieben Uhr, 7:00.")
  (hint "Find Uhr."))
```

---

## Practice

```check
(choice
  (ask "Wie viel Uhr ist es? What does it ask?")
  (right "What time is it?")
  (wrong "How many clocks are there?"
    "Wie viel Uhr ist es? is a fixed question about the time. How many clocks would be Wie viele Uhren?")
  (wrong "How long is the hour?"
    "It asks the time on the clock: What time is it?")
  (hint "A fixed question, like Wie spät ist es?"))
```

```check
(number
  (ask "Eine Stunde hat ___ Minuten. Type the number.")
  (answer 60)
  (wrong-if 100 "An hour has 60 minutes, in German too: sechzig Minuten.")
  (hint "sechzig"))
```

```check
(text
  (ask "Es ist 12:00. Es ist ___ Uhr. Type the number as a word.")
  (accept "zwölf")
  (accept "12")
  (wrong-if "zwolf" "Zwölf has an umlaut: zwölf.")
  (hint "12"))
```

Now you can ask the time and say the full hours with Uhr, and tell Uhr from Stunde.
