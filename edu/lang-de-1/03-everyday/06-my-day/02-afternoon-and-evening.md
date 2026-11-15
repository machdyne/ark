# Afternoon and evening

```lesson
(objective "Say what you do in the afternoon and evening and when you go to bed.")
(minutes 25)
```

In this lesson you describe the rest of your day: **Um drei Uhr gehe ich nach Hause. Um zehn gehe ich ins Bett.**

Here is the rest of Jonas's day. Pick a time.

```figure
(define c (choice 'c '("15:00" "16:00" "19:00" "22:00") "time"))
(define h (list-ref '(15 16 19 22) c))
(define words (list-ref '("Ich gehe nach Hause." "Ich mache Hausaufgaben." "Wir essen zu Abend." "Ich gehe ins Bett.") c))
(de3-clock 160 100 80 h 0 words)
```

```cards
(card "nach Hause" "home" (typed) (note "Where you go: Ich gehe nach Hause."))
(card "zu Hause" "at home" (typed) (note "Where you are: Ich bin zu Hause."))
(card "ins Bett gehen" "to go to bed" (typed))
(card "spät" "late" (typed))
(card "zu Abend essen" "to have dinner" (typed) (note "Wir essen um sieben zu Abend."))
```

**zu Abend essen** means to have dinner: **Wir essen um sieben zu Abend.**

```check
(choice
  (ask "What does Jonas do at 22:00?")
  (right "He goes to bed.")
  (wrong "He goes home."
    "He goes home at 15:00. At 22:00: Ich gehe ins Bett.")
  (wrong "He has dinner."
    "Dinner is at 19:00. At 22:00 he goes to bed.")
  (hint "Pick 22:00 in the figure."))
```

---

## nach Hause or zu Hause?

- **nach Hause** answers "where to?": you go there. **Ich gehe nach Hause.**
- **zu Hause** answers "where?": you are there. **Ich bin zu Hause.**

English says "home" for both. German does not.

```check
(choice
  (ask "How do you say: I am at home.")
  (right "Ich bin zu Hause.")
  (wrong "Ich bin nach Hause."
    "Nach Hause is a direction: going home. Being at home is zu Hause.")
  (wrong "Ich bin Hause."
    "German needs zu here: Ich bin zu Hause.")
  (hint "Where are you? Not where are you going?"))
```

---

## How often?

You know **immer** and **manchmal**. Here are three more:

```cards
(card "oft" "often" (typed))
(card "meistens" "usually" (typed) (note "Also: mostly."))
(card "nie" "never" (typed))
```

From most to least: **immer, meistens, oft, manchmal, nie**. In a short sentence they come after the verb, or after the verb and its subject:

> Abends koche ich meistens. Ich gehe nie spät ins Bett.

```check
(choice
  (ask "Ich lese abends nie. What does it mean?")
  (right "I never read in the evening.")
  (wrong "I always read in the evening."
    "Always is immer. Nie means never.")
  (wrong "I read late in the evening."
    "Late is spät. Nie means never.")
  (hint "nie"))
```

---

## A worked example

```example
(example
  (problem "Say in German: In the evening I usually read.")
  (step "In the evening: abends. Put it first.")
  (step "The verb comes second: lese ich.")
  (step "How often comes after the verb and subject: meistens.")
  (answer "Abends lese ich meistens."))
```

---

## Now you finish one

Say: On Sunday I stay at home. **Am Sonntag bleibe ich ___.** (two words)

```check
(text
  (ask "Type the missing words.")
  (accept "zu Hause")
  (accept "zuhause")
  (wrong-if "nach Hause" "Bleiben is staying in a place, not going. Where you are is zu Hause.")
  (hint "where you are: zu ..."))
```

---

## Lena's evening

> Um vier Uhr kommt Lena nach Hause. Zuerst macht sie Hausaufgaben. Dann spielt sie Gitarre. Um sieben essen sie zu Abend. Abends sieht sie oft einen Film. Am Freitag darf sie spät ins Bett gehen. Aber meistens geht sie um zehn ins Bett.

```check
(choice
  (ask "When does Lena usually go to bed?")
  (right "at ten")
  (wrong "late, every day"
    "Only on Friday may she go to bed late. Meistens, usually, she goes at ten.")
  (wrong "at seven"
    "At seven the family has dinner.")
  (hint "Find meistens."))
```

```check
(choice
  (ask "What does Lena do first when she comes home?")
  (right "her homework")
  (wrong "play the guitar"
    "She plays the guitar after her homework: dann spielt sie Gitarre.")
  (wrong "watch a movie"
    "She often watches a movie in the evening, not first.")
  (hint "Find zuerst."))
```

---

## Practice

```check
(text
  (ask "Ich gehe um elf ___ Bett. Type the missing word.")
  (accept "ins")
  (wrong-if "in" "The fixed phrase is ins Bett gehen: ins.")
  (wrong-if "zu" "The fixed phrase is ins Bett gehen.")
  (hint "ins Bett gehen"))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Um drei gehe ich nach Hause.")
  (wrong "Um drei gehe ich zu Hause."
    "You go somewhere: nach Hause. Zu Hause is where you are.")
  (wrong "Um drei ich gehe nach Hause."
    "The verb comes second, after the time: gehe ich.")
  (hint "going home: nach Hause; verb second."))
```

```check
(choice
  (ask "Put them in order, from most to least often. Which list is right?")
  (right "immer, meistens, oft, manchmal, nie")
  (wrong "immer, oft, meistens, manchmal, nie"
    "Meistens, usually, is more than oft, often.")
  (wrong "nie, manchmal, oft, meistens, immer"
    "That is from least to most. The question asks from most to least.")
  (hint "Start with always, end with never."))
```

Now you can describe your afternoon and evening, say how often, and tell nach Hause from zu Hause.
