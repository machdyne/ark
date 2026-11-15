# Parts of the day

```lesson
(objective "Name the parts of the day and use them with times.")
(minutes 20)
```

In this lesson you name the parts of the day and use them with times: **um acht Uhr abends** (at eight in the evening).

You know the greetings Guten Morgen and Guten Abend. Here are all the parts of the day. Move the slider through the day. The edges are rough: people do not agree on them to the hour.

```figure
(define h (slider 'h 0 23 8 "hour" 1))
(de3-day h)
(caption (string-append (fmt h 0) ":00"))
```

```cards
(card "der Morgen, die Morgen" "the morning" (typed))
(card "der Vormittag, die Vormittage" "the late morning" (typed) (note "Before noon: vor + Mittag"))
(card "der Mittag, die Mittage" "noon" (typed) (note "Also: midday."))
(card "der Nachmittag, die Nachmittage" "the afternoon" (typed) (note "After noon: nach + Mittag"))
(card "der Abend, die Abende" "the evening" (typed))
(card "die Nacht, die Nächte" "the night" (typed))
```

```check
(choice
  (ask "Der Nachmittag: when is it?")
  (right "after noon, before the evening")
  (wrong "before noon"
    "Before noon is der Vormittag: vor means before. Nach means after.")
  (wrong "late at night"
    "Late at night is die Nacht. Nachmittag is nach Mittag: after noon.")
  (hint "nach + Mittag"))
```

---

## Gender and spelling

All the parts of the day are masculine, except **die Nacht**.

To say "every morning" or "in the mornings", add **-s** and write the word small: **morgens**, **abends**, also **vormittags**, **mittags**, **nachmittags** and **nachts**.

> Morgens trinke ich Tee. Abends lese ich.

```cards
(card "morgens" "in the morning" (typed) (note "Every morning, in the mornings."))
(card "abends" "in the evening" (typed) (note "Every evening, in the evenings."))
```

```check
(text
  (ask "Write \"in the evenings\" as one German word.")
  (accept "abends")
  (wrong-if "abend" "Add -s: abends.")
  (hint "Abend + s, written small."))
```

```sources
(source "Rat für deutsche Rechtschreibung, Deutsche Rechtschreibung: Regeln und Wörterverzeichnis: small letters for adverbs such as morgens, abends; capitals in heute Abend")
```

---

## Today: heute Abend

**heute Abend** means this evening. After heute, the part of the day keeps its capital: **heute Morgen**, **heute Nachmittag**, **heute Abend**.

```cards
(card "heute Abend" "this evening" (typed) (note "Also: tonight."))
```

> Was machst du heute Abend? - Ich gehe ins Kino.

```check
(choice
  (ask "How do you say: this afternoon?")
  (right "heute Nachmittag")
  (wrong "heute nachmittags"
    "After heute, use the noun with a capital and no -s: heute Nachmittag.")
  (wrong "heute Vormittag"
    "Vormittag is before noon. This afternoon is heute Nachmittag.")
  (hint "after noon, after heute"))
```

---

## Times with a part of the day

In everyday speech, people use the 12-hour clock and add the part of the day when it is not clear:

> um acht Uhr morgens = 8:00

> um acht Uhr abends = 20:00

```check
(choice
  (ask "Um drei Uhr nachmittags. Which 24-hour time is it?")
  (right "15:00")
  (wrong "3:00"
    "3:00 is at night: drei Uhr nachts. Nachmittags is after noon, so 3 + 12 = 15.")
  (hint "Add 12 after noon."))
```

---

## A worked example

```example
(example
  (problem "Say 21:00 the everyday way, with a part of the day.")
  (step "Take away 12: 21 - 12 = 9, so neun Uhr.")
  (step "21:00 is in the evening: abends.")
  (answer "um neun Uhr abends"))
```

---

## Now you finish one

Say 7:00 in the morning: **um sieben Uhr ___**.

```check
(text
  (ask "Type the missing word.")
  (accept "morgens")
  (wrong-if "Morgen" "Use the -s form, written small: morgens.")
  (wrong-if "abends" "Abends is the evening. 7:00 in the morning is morgens.")
  (hint "in the morning, one word."))
```

---

## Every day

> Herr Braun arbeitet in einem Café. (in a) Morgens beginnt er um sechs Uhr. Mittags isst er eine Suppe. Nachmittags ist er müde. Abends kocht er für die Familie. Heute Abend sieht er einen Film.

```check
(choice
  (ask "What does Herr Braun do in the evenings?")
  (right "He cooks for the family.")
  (wrong "He eats a soup."
    "Soup is at noon: mittags isst er eine Suppe.")
  (wrong "He starts work at six."
    "That is in the morning: morgens beginnt er um sechs Uhr.")
  (hint "Find abends."))
```

```check
(choice
  (ask "What does he do this evening?")
  (right "He watches a movie.")
  (wrong "He cooks."
    "He cooks abends, every evening. Heute Abend sieht er einen Film.")
  (wrong "He goes to the café."
    "He works in the café. Heute Abend sieht er einen Film.")
  (hint "Find heute Abend."))
```

---

## Practice

```check
(choice
  (ask "What is the gender of Nacht?")
  (right "feminine: die Nacht")
  (wrong "masculine: der Nacht"
    "The other parts of the day are masculine, but Nacht is the exception: die Nacht.")
  (hint "the one exception"))
```

```check
(choice
  (ask "Um elf Uhr abends. Which 24-hour time is it?")
  (right "23:00")
  (wrong "11:00"
    "11:00 is before noon: elf Uhr vormittags. Abends is the evening: 11 + 12 = 23.")
  (wrong "21:00"
    "21:00 is neun Uhr abends. Elf Uhr abends is 23:00.")
  (hint "Add 12."))
```

```check
(text
  (ask "Write \"this evening\" in German. (two words)")
  (accept "heute Abend")
  (accept "Heute Abend")
  (case)
  (wrong-if "heute abend" "After heute, the part of the day keeps its capital: heute Abend.")
  (wrong-if "heute abends" "After heute, use the noun: heute Abend, with no -s.")
  (hint "heute + the evening"))
```

Now you can name the parts of the day and use them with times and with heute.
