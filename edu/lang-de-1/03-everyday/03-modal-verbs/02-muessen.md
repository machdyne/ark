# müssen

```lesson
(objective "Say what you have to do with müssen, and that muss nicht means \"do not have to\".")
(minutes 25)
```

In this lesson you say what you have to do: **Ich muss heute lernen.** (I have to study today.)

**müssen** means "must" or "to have to". Like können, it puts the infinitive at the end.

| | müssen |
|---|---|
| ich | muss |
| du | musst |
| er, sie, es | muss |
| wir | müssen |
| ihr | müsst |
| sie, Sie | müssen |

The singular has no umlaut, and ich and er are both **muss**.

```cards
(card "müssen" "to have to" (typed) (note "Also: must. ich muss, du musst, er muss"))
(card "heute" "today" (typed))
(card "die Prüfung, die Prüfungen" "the exam" (typed) (note "Also: the test."))
(card "üben" "to practice" (typed))
(card "die Hausaufgaben" "the homework" (typed) (note "Plural in German: Hausaufgaben machen, to do homework. One task is die Hausaufgabe."))
(card "jetzt" "now" (typed))
```

```check
(text
  (ask "Du ___ Hausaufgaben machen. Type the form of müssen.")
  (accept "musst")
  (wrong-if "muss" "Muss is for ich and er. For du, add -t: musst.")
  (wrong-if "müsst" "Müsst is for ihr. For du there is no umlaut: musst.")
  (hint "du: m...st"))
```

---

## Time first, verb second

You can start with **heute**. The modal verb stays second, so the subject comes after it:

> Heute muss ich arbeiten.

The infinitive still goes to the end.

```check
(choice
  (ask "Which sentence is right?")
  (right "Heute muss ich üben.")
  (wrong "Heute ich muss üben."
    "The verb must be second. After heute comes the verb, then the subject: Heute muss ich üben.")
  (wrong "Heute muss ich üben muss."
    "The modal verb comes once, in second place. Only the infinitive goes to the end.")
  (hint "Verb second: heute, then muss."))
```

---

## muss nicht: no need

Here is a trap for English speakers. **Ich muss nicht arbeiten** does **not** mean "I must not work". It means "I do not have to work": there is no need.

> Heute habe ich keine Prüfung. Ich muss nicht lernen. (I don't have to study.)

To say that something is not allowed ("you must not"), German uses another modal verb, dürfen. It comes in a later lesson.

```check
(choice
  (ask "Du musst nicht kommen. What does it mean?")
  (right "You don't have to come.")
  (wrong "You must not come."
    "That is the English trap. Muss nicht means there is no need: You don't have to come.")
  (wrong "You can't come."
    "Can is können. Müssen nicht means don't have to.")
  (hint "muss nicht = no need."))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): müssen and its negation")
```

---

## A worked example

```example
(example
  (problem "Say in German: My sister has to practice today.")
  (step "The subject: meine Schwester. She is sie, so müssen is muss.")
  (step "heute comes after the verb when the subject starts the sentence.")
  (step "The infinitive üben goes to the end.")
  (answer "Meine Schwester muss heute üben."))
```

---

## Now you finish one

Say: We have to learn. **Wir müssen ___.**

```check
(text
  (ask "Type the missing word (to learn).")
  (accept "lernen")
  (wrong-if "lerne" "After a modal verb the second verb stays in the infinitive: lernen.")
  (wrong-if "lernt" "After a modal verb the second verb stays in the infinitive: lernen.")
  (hint "The infinitive of to learn."))
```

---

## No time

> Lukas: Hallo Sara! Hast du heute Zeit?

> Sara: Nein, leider nicht. Ich habe eine Prüfung. Ich muss lernen.

> Lukas: Und dein Bruder?

> Sara: Er muss heute nicht lernen. Aber er muss arbeiten.

```check
(choice
  (ask "Why does Sara have no time?")
  (right "She has an exam and has to study.")
  (wrong "She has to work."
    "Her brother has to work. Sara says: Ich habe eine Prüfung. Ich muss lernen.")
  (wrong "She has to wait."
    "Nobody waits. Sara has a Prüfung, an exam.")
  (hint "Read Sara's first answer."))
```

```check
(choice
  (ask "What about her brother?")
  (right "He doesn't have to study, but he has to work.")
  (wrong "He must not study."
    "Muss nicht lernen means he does not have to study. It does not forbid it.")
  (wrong "He has to study and work."
    "Er muss heute nicht lernen: he does not have to study today.")
  (hint "muss nicht = does not have to."))
```

---

## Practice

```check
(text
  (ask "Ihr ___ jetzt gehen. Type the form of müssen.")
  (accept "müsst")
  (wrong-if "musst" "Musst is for du. For ihr it is müsst, with the umlaut.")
  (wrong-if "müssen" "Müssen is for wir and sie. For ihr it is müsst.")
  (hint "ihr forms end in -t."))
```

```check
(choice
  (ask "How do you say: I don't have to cook today.")
  (right "Ich muss heute nicht kochen.")
  (wrong "Ich darf heute nicht kochen."
    "Darf nicht means you are not allowed. You only want to say there is no need: muss nicht.")
  (wrong "Ich muss heute kochen nicht."
    "Nicht goes before the infinitive: nicht kochen.")
  (hint "No need: muss nicht. Nicht before the infinitive."))
```

```check
(choice
  (ask "Er muss viel Klavier üben. What does he have to do?")
  (right "practice the piano")
  (wrong "play the piano in a concert"
    "Üben means to practice.")
  (wrong "buy a piano"
    "Kaufen is to buy. Üben means to practice.")
  (hint "üben"))
```

Now you can say what you have to do with müssen, and that muss nicht means there is no need.
