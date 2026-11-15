# Sentences with modal verbs

```lesson
(objective "Build statements, questions and negatives with any of the six modal verbs.")
(minutes 25)
```

In this lesson you choose the right modal verb and build any sentence with it: **Ich kann leider nicht kommen. Ich muss arbeiten.**

Here are the ones you use most, with what they say. For mögen, the form you use with an infinitive is möchte:

| modal verb | ich, er | says |
|---|---|---|
| können | kann | can, is able to |
| müssen | muss | must, has to |
| wollen | will | wants to |
| möchten (from mögen) | möchte | would like to |
| dürfen | darf | may, is allowed to |
| sollen | soll | should, is supposed to |

All of them put the infinitive at the end, and ich and er always have the same form: ich kann, er kann; ich möchte, er möchte.

```check
(choice
  (ask "You want to say that something is allowed. Which modal verb?")
  (right "dürfen")
  (wrong "können"
    "Können says you are able to. In everyday speech it can also ask permission, but allowed is dürfen.")
  (wrong "sollen"
    "Sollen says what someone should do, not what is allowed.")
  (hint "May I ...?"))
```

---

## Three kinds of sentence

The modal verb moves; the infinitive stays at the end.

| | |
|---|---|
| statement | Du kannst gut kochen. |
| yes/no question | Kannst du gut kochen? |
| W-question | Was kannst du gut kochen? |

In a statement and a W-question the modal verb is second. In a yes/no question it is first.

```check
(choice
  (ask "Which W-question is right?")
  (right "Was möchtest du trinken?")
  (wrong "Was du möchtest trinken?"
    "In a W-question the verb comes second, right after the question word.")
  (wrong "Was möchtest du trinkst?"
    "Only the modal verb is conjugated. Trinken stays in the infinitive.")
  (hint "Question word, verb, subject, ... infinitive."))
```

---

## Saying yes and no

```cards
(card "Lust haben" "to feel like it" (typed) (note "To feel like doing something. Hast du Lust? Ich habe keine Lust."))
(card "schade" "too bad" (typed) (note "Also: a pity."))
(card "klar" "sure" (typed) (note "Also: of course."))
```

**Hast du Lust?** asks if someone feels like it. Answers:

> Ja, klar! (Yes, sure!)

> Ich habe leider keine Lust. (I don't feel like it, sorry.)

> Ich kann leider nicht. - Schade!

After a modal verb you can leave out the infinitive when it is clear: **Ich kann leider nicht** (come is understood).

```check
(choice
  (ask "Your friend says: Ich kann heute leider nicht. What fits best?")
  (right "Schade!")
  (wrong "Klar!"
    "Klar means sure, of course. Your friend cannot come, so say: Schade! Too bad.")
  (wrong "Lust!"
    "Lust alone is not an answer. Use it in Lust haben: Hast du Lust?")
  (hint "too bad"))
```

---

## A worked example

```example
(example
  (problem "Say in German: Do you (du) want to play tennis today?")
  (step "want: wollen. du willst.")
  (step "A yes/no question: the modal verb first, then du.")
  (step "heute and Tennis, then the infinitive spielen at the end.")
  (answer "Willst du heute Tennis spielen?"))
```

---

## Now you finish one

Say: We are not allowed to take photos. **Wir ___ nicht fotografieren.**

```check
(text
  (ask "Type the form of the right modal verb.")
  (accept "dürfen")
  (wrong-if "müssen" "Müssen nicht means we don't have to. Not allowed is dürfen nicht.")
  (wrong-if "können" "Können nicht says we are not able to. Not allowed is dürfen nicht.")
  (wrong-if "darf" "Darf is for ich and er. For wir it is dürfen.")
  (hint "not allowed: dürfen; wir takes the infinitive form."))
```

---

## A message

Tom writes to his friend Jana.

> Hallo Jana, willst du heute ins Kino gehen? Es gibt einen Film mit Musik. (with) Ich möchte ihn sehen. Hast du Lust? Tom

Jana writes back.

> Hallo Tom, ich habe Lust, aber ich kann heute leider nicht. Ich muss für eine Prüfung lernen. Und ich soll meine Oma besuchen. Schade! Jana

```check
(choice
  (ask "Why can't Jana go?")
  (right "She has to study for an exam, and she should visit her grandma.")
  (wrong "She does not feel like it."
    "Jana writes: ich habe Lust. She would like to, but she cannot.")
  (wrong "She does not like movies."
    "She has Lust, but she must study and visit her grandma.")
  (hint "Read the sentences with muss and soll."))
```

```check
(choice
  (ask "In Tom's message, who is ihn in Ich möchte ihn sehen?")
  (right "the movie")
  (wrong "Jana"
    "Jana is a woman: she would be sie. Ihn is a masculine object: der Film.")
  (wrong "the movie theater"
    "Das Kino is neuter: it would be es. Ihn is masculine: der Film.")
  (hint "Which noun before it is masculine?"))
```

---

## Practice

```check
(text
  (ask "___ ich hier parken? (May I ...) Type the modal verb.")
  (accept "Darf")
  (wrong-if "Muss" "Muss ich asks if you have to. To ask permission, use Darf ich ...?")
  (wrong-if "Soll" "Soll ich offers to do it. To ask permission, use Darf ich ...?")
  (wrong-if "Kann" "People do say Kann ich ...? in everyday speech, but kann means can. For May I ...?, the polite way, use Darf ich ...?")
  (hint "to ask permission"))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Meine Schwester will nicht kochen.")
  (wrong "Meine Schwester will kochen nicht."
    "Nicht goes before the infinitive: will nicht kochen.")
  (wrong "Meine Schwester willst nicht kochen."
    "Willst is for du. For sie (my sister) it is will.")
  (hint "nicht before the infinitive; she = er form."))
```

```check
(choice
  (ask "Ihr müsst heute nicht arbeiten. What does it mean?")
  (right "You don't have to work today.")
  (wrong "You must not work today."
    "Must not is dürft nicht. Müsst nicht means there is no need.")
  (wrong "You can't work today."
    "Can't is könnt nicht. Müsst nicht means you don't have to.")
  (hint "müssen with nicht."))
```

```check
(text
  (ask "Was ___ du trinken? (would like) Type the form.")
  (accept "möchtest")
  (wrong-if "möchte" "Möchte is for ich and er. For du: möchtest.")
  (wrong-if "möchten" "Möchten is for wir, sie and Sie. For du: möchtest.")
  (hint "du form of möchten."))
```

Now you can choose among the six modal verbs and build statements, questions and negatives with them.
