# My morning

```lesson
(objective "Say what you do in the morning and when.")
(minutes 25)
```

In this lesson you describe your morning: **Um sieben Uhr frühstücke ich.** (At seven I have breakfast.)

Here is Jonas's morning. Pick a time.

```figure
(define c (choice 'c '("6:30" "7:00" "7:30" "8:00") "time"))
(define h (list-ref '(6 7 7 8) c))
(define m (list-ref '(30 0 30 0) c))
(define words (list-ref '("Zuerst dusche ich." "Dann frühstücke ich." "Ich nehme den Bus." "Die Schule beginnt.") c))
(de3-clock 160 100 80 h m words)
```

```cards
(card "frühstücken" "to have breakfast" (typed) (note "Regular: ich frühstücke, du frühstückst."))
(card "duschen" "to shower" (typed) (note "Ich dusche."))
(card "die Schule, die Schulen" "the school" (typed))
(card "die Arbeit, die Arbeiten" "the work" (typed) (note "Also: the job."))
(card "zuerst" "first" (typed) (note "In time: Zuerst dusche ich."))
(card "früh" "early" (typed))
```

```check
(choice
  (ask "What does Jonas do at 7:00?")
  (right "He has breakfast.")
  (wrong "He takes a shower."
    "He showers first, at 6:30. At 7:00: Dann frühstücke ich.")
  (wrong "He takes the bus."
    "The bus is at 7:30. At 7:00 he has breakfast: frühstücken.")
  (hint "Pick 7:00 in the figure."))
```

---

## Time first, verb second

A routine is a list of times. When the time comes first, the verb is still second and the subject comes after it:

> Um sieben Uhr frühstücke ich.

> Morgens dusche ich.

```check
(choice
  (ask "Which sentence is right?")
  (right "Um sechs Uhr dusche ich.")
  (wrong "Um sechs Uhr ich dusche."
    "The verb must be second. After the time comes the verb: dusche ich.")
  (wrong "Ich um sechs Uhr dusche."
    "The verb comes second: Ich dusche um sechs Uhr, or Um sechs Uhr dusche ich.")
  (hint "Verb second."))
```

---

## zuerst, dann

**zuerst** (first) and **dann** (then) put things in order. They count as the first place, so the verb comes next:

> Zuerst dusche ich, dann frühstücke ich.

**früh** means early: **Ich frühstücke früh.**

```check
(text
  (ask "Zuerst frühstücke ich, dann ___ ich den Bus. (nehmen) Type the verb.")
  (accept "nehme")
  (wrong-if "nimmst" "Nimmst is for du. For ich: nehme.")
  (wrong-if "nehmen" "With ich, the verb ends in -e: nehme.")
  (hint "ich nehme"))
```

---

## A worked example

```example
(example
  (problem "Say in German: At half past seven I take the bus.")
  (step "The time: 7:30 is halb acht. at: um halb acht.")
  (step "Put it first. The verb comes second: nehme ich.")
  (step "der Bus as an object: den Bus.")
  (answer "Um halb acht nehme ich den Bus."))
```

---

## Now you finish one

Say: My work begins at nine. **Meine Arbeit ___ um neun.**

```check
(text
  (ask "Type the form of beginnen.")
  (accept "beginnt")
  (wrong-if "beginne" "Beginne is for ich. Meine Arbeit is sie (it): beginnt.")
  (wrong-if "beginnen" "Beginnen is the infinitive. Meine Arbeit is one thing: beginnt.")
  (hint "die Arbeit = sie: sie beginnt."))
```

---

## Frau Schmidt's morning

> Frau Schmidt ist Lehrerin. Morgens hat sie wenig Zeit. (little) Um Viertel nach sechs duscht sie. Dann trinkt sie einen Kaffee. Sie frühstückt nicht. Um sieben nimmt sie den Zug. Die Schule beginnt um acht.

```check
(choice
  (ask "What does Frau Schmidt do after her shower?")
  (right "She drinks a coffee.")
  (wrong "She has breakfast."
    "Sie frühstückt nicht: she does not eat breakfast. She drinks a coffee.")
  (wrong "She takes the bus."
    "She takes the train, at seven: den Zug.")
  (hint "Find dann."))
```

```check
(text
  (ask "When does she shower? Write the time in numbers, like 9:15.")
  (accept "6:15")
  (accept "06:15")
  (accept "6.15")
  (accept "6:15 Uhr")
  (accept "06.15")
  (accept "6.15 Uhr")
  (wrong-if "5:45" "That is Viertel vor sechs. Nach is after: Viertel nach sechs is 6:15.")
  (wrong-if "6:45" "That is Viertel vor sieben. Viertel nach sechs is 6:15.")
  (hint "Viertel nach sechs"))
```

---

## Practice

```check
(choice
  (ask "Was machst du morgens? Which answer fits?")
  (right "Ich dusche und frühstücke.")
  (wrong "Ich habe am Montag Geburtstag."
    "That is a date, not what you do in the morning.")
  (wrong "Es ist halb acht."
    "That gives the time. The question asks what you do in the morning.")
  (hint "Was machst du? asks what you do."))
```

```check
(text
  (ask "Er ___ um sieben. (frühstücken) Type the verb.")
  (accept "frühstückt")
  (wrong-if "frühstücke" "Frühstücke is for ich. For er: frühstückt.")
  (wrong-if "fruhstuckt" "Frühstückt has two umlauts: frühstückt.")
  (hint "er: -t"))
```

```check
(choice
  (ask "Which is the right order?")
  (right "Zuerst dusche ich, dann frühstücke ich.")
  (wrong "Zuerst ich dusche, dann ich frühstücke."
    "Zuerst and dann take the first place, so the verb comes right after them.")
  (wrong "Zuerst dusche ich, dann ich frühstücke."
    "After dann, the verb comes next: dann frühstücke ich.")
  (hint "After zuerst and dann: the verb."))
```

Now you can describe your morning in order, with times, zuerst and dann.
