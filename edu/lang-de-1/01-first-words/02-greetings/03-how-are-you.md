# How are you?

```lesson
(objective "Ask how someone is with du and with Sie, and answer.")
(minutes 20)
```

In this lesson you learn to ask "How are you?" and to answer it.

## Asking

| To ask | du | Sie |
|---|---|---|
| How are you? | Wie geht es dir? | Wie geht es Ihnen? |

**Wie geht's?** is the short, casual form: geht's is geht es, said together. Use it with friends.

Ihnen goes with Sie, and dir goes with du. Like Sie, Ihnen has a capital letter.

```check
(choice
  (ask "You meet Frau Berger, your neighbor. You say Sie to her. How do you ask how she is?")
  (right "Wie geht es Ihnen?")
  (wrong "Wie geht es dir?"
    "dir goes with du. You say Sie to Frau Berger, so ask: Wie geht es Ihnen?")
  (wrong "Wie geht's?"
    "Wie geht's is casual, for friends. With someone you say Sie to, use the full form with Ihnen.")
  (hint "Which word goes with Sie: dir or Ihnen?"))
```

---

## Answering

- **Gut, danke.** Fine, thanks. (**danke** is thanks.)
- **Sehr gut, danke.** Very well, thanks.
- **Mir geht es gut.** I am fine.
- **Es geht.** So-so. It's all right.
- **Nicht so gut.** Not so good.

```check
(choice
  (ask "Lea asks Wie geht's? Tom answers Es geht. How is Tom?")
  (right "So-so")
  (wrong "Very well"
    "Very well is sehr gut. Es geht means so-so: not bad, not great.")
  (wrong "He is leaving"
    "geht can mean goes, but Es geht answers how you are: so-so.")
  (hint "Es geht is in the middle, between gut and nicht so gut."))
```

---

## Not "Ich bin gut"

English says "I'm good", but the usual German answer is not **Ich bin gut**: that is a word-for-word copy of the English. In German, Ich bin gut usually means "I am good at something", as in a sport or at school. Say **Gut, danke** or **Mir geht es gut**.

```check
(text
  (ask "Answer in two words: Fine, thanks.")
  (accept "Gut, danke")
  (accept "Gut danke")
  (accept "Danke, gut")
  (accept "Danke gut")
  (accents nearly)
  (wrong-if "Ich bin gut" "Ich bin gut copies the English I'm good. In German it usually means I am good at something. Say Gut, danke.")
  (wrong-if "Gut, bitte" "bitte means please. thanks is danke.")
  (hint "gut, then the word for thanks.")
  (hint "Gut, danke."))
```

---

## Asking back

To ask back, say **Und dir?** (to someone you say du to) or **Und Ihnen?** (to someone you say Sie to). Both mean "And you?" here.

```check
(choice
  (ask "Herr Wolf asks you: Wie geht es Ihnen? You say Sie to each other. What do you answer?")
  (right "Gut, danke. Und Ihnen?")
  (wrong "Gut, danke. Und dir?"
    "dir goes with du. You say Sie to Herr Wolf, so ask back with Ihnen.")
  (wrong "Ich bin gut. Und Ihnen?"
    "Und Ihnen is right, but Ich bin gut is not the usual way to say you are fine. Say Gut, danke.")
  (hint "Use the same form he used."))
```

```sources
(source "Goethe-Institut, Goethe-Zertifikat A1: Start Deutsch 1, Wortliste (the A1 words and phrases)")
(source "Duden, entry gehen: es geht (jemandem) gut")
```

---

## Your words

```cards
(card "Wie geht's?" "How are you?" (note "casual"))
(card "Wie geht es dir?" "How are you?" (note "with du"))
(card "Wie geht es Ihnen?" "How are you?" (note "with Sie"))
(card "danke" "thanks" (typed))
(card "Mir geht es gut." "I am fine.")
(card "Es geht." "So-so.")
(card "Nicht so gut." "Not so good.")
(card "Und dir? / Und Ihnen?" "And you?" (note "dir with du, Ihnen with Sie"))
```

```check
(text
  (ask "Type the casual way to ask a friend how they are.")
  (accept "Wie geht's")
  (accept "Wie gehts")
  (accept "Wie geht es dir")
  (accept "Wie geht es")
  (accents nearly)
  (wrong-if "Wie geht es Ihnen" "That is right with Sie. With a friend, say Wie geht's? or Wie geht es dir?")
  (hint "Wie geht's? is the short form.")
  (hint "Wie, geht, then 's."))
```

---

## Read: two meetings

(At school)

- **Lea:** Hallo, Tom! Wie geht's?
- **Tom:** Gut, danke. Und dir?
- **Lea:** Es geht.

(Later, at work)

- **Herr Wolf:** Guten Morgen, Frau Berger! Wie geht es Ihnen?
- **Frau Berger:** Sehr gut, danke! Und Ihnen?
- **Herr Wolf:** Nicht so gut.
- **Frau Berger:** Oh, das tut mir leid!

(das tut mir leid = I'm sorry to hear that)

```check
(choice
  (ask "How is Lea?")
  (right "So-so")
  (wrong "Fine"
    "Tom is fine: Gut, danke. Lea answers Es geht: so-so.")
  (wrong "Not so good"
    "That is Herr Wolf: Nicht so gut. Lea says Es geht, so-so.")
  (hint "Find Lea's second line."))
```

```check
(choice
  (ask "Why does Frau Berger say das tut mir leid?")
  (right "Herr Wolf is not so well")
  (wrong "She is late"
    "Nothing in the talk is about time. Herr Wolf says Nicht so gut, and she is sorry to hear it.")
  (wrong "She is not so well"
    "Frau Berger is sehr gut, very well. Herr Wolf is the one who is nicht so gut.")
  (hint "Read Herr Wolf's last line."))
```

---

## A short talk

```example
(example
  (problem "Your friend Max says: Hallo! Wie geht's? Answer that you are very well, and ask back.")
  (step "Very well: Sehr gut, danke.")
  (step "Max is a friend, so ask back with du: Und dir?")
  (answer "Sehr gut, danke. Und dir?"))
```

```example
(example
  (problem "Frau Berger says: Guten Tag! Wie geht es Ihnen? Answer that you are fine, and ask back.")
  (step "Fine: Gut, danke.")
  (step (choice (ask "She says Sie to you. How do you ask back?")
    (right "Und Ihnen?")
    (wrong "Und dir?"
      "dir is for du. She uses Ihnen, which goes with Sie: ask back with Und Ihnen?")))
  (answer "Gut, danke. Und Ihnen?"))
```

---

## Practice

```check
(text
  (ask "Type the German for thanks.")
  (accept "danke")
  (accents nearly)
  (wrong-if "bitte" "bitte means please. thanks is danke.")
  (wrong-if "thanks" "That is English. In German: danke.")
  (hint "It starts with d."))
```

---

```check
(choice
  (ask "Which answer means I am fine?")
  (right "Mir geht es gut.")
  (wrong "Ich bin gut."
    "Ich bin gut usually means I am good at something. To say you are fine: Mir geht es gut.")
  (wrong "Es geht."
    "Es geht is so-so. I am fine is Mir geht es gut.")
  (hint "It starts with Mir."))
```

---

```check
(text
  (ask "Ask your teacher, whom you say Sie to: How are you?")
  (accept "Wie geht es Ihnen")
  (accents nearly)
  (wrong-if "Wie geht es dir" "dir goes with du. With Sie, ask: Wie geht es Ihnen?")
  (wrong-if "Wie geht's" "Wie geht's is casual. With Sie, use the full form: Wie geht es Ihnen?")
  (hint "Wie geht es, then the word that goes with Sie."))
```

So: ask Wie geht es dir? or Wie geht's? with du and Wie geht es Ihnen? with Sie, answer Gut, danke, and ask back with Und dir? or Und Ihnen?
