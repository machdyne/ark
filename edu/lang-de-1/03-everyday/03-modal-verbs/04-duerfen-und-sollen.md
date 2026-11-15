# dürfen and sollen

```lesson
(objective "Say what is allowed with dürfen and what someone should do with sollen, and that darf nicht means \"must not\".")
(minutes 25)
```

In this lesson you ask if something is allowed and say what someone should do: **Darf ich hier parken?** (May I park here?)

**dürfen** means "may" or "to be allowed to".

| | dürfen | sollen |
|---|---|---|
| ich | darf | soll |
| du | darfst | sollst |
| er, sie, es | darf | soll |
| wir | dürfen | sollen |
| ihr | dürft | sollt |
| sie, Sie | dürfen | sollen |

As with können, müssen and wollen, ich and er are the same, with no ending: **ich darf, er darf; ich soll, er soll**.

```cards
(card "dürfen" "to be allowed to" (typed) (note "Also: may. ich darf, du darfst, er darf"))
(card "parken" "to park" (typed))
(card "fotografieren" "to take photos" (typed))
```

```check
(text
  (ask "___ ich hier fotografieren? (May I ...?) Type the form of dürfen.")
  (accept "Darf")
  (wrong-if "dürfe" "Ich darf has no ending, and the singular has no umlaut: darf.")
  (wrong-if "kann" "Kann is from können, can. To ask for permission, use dürfen: Darf ich ...?")
  (hint "ich darf"))
```

---

## man

**man** means people in general: "you" or "one" in English. It takes the same verb form as er:

> Hier darf man parken. (You may park here.)

> Im Museum darf man nicht fotografieren. (In the museum, you may not take photos.)

```cards
(card "man" "one" (typed) (note "Also: you, people in general. man darf, man kann: the er form"))
```

Write man with one n. **der Mann** is a man; **man** is anyone.

```check
(choice
  (ask "Which sentence is right?")
  (right "Hier kann man gut schwimmen.")
  (wrong "Hier können man gut schwimmen."
    "Man takes the er form of the verb: man kann.")
  (wrong "Hier kann Mann gut schwimmen."
    "Der Mann, with two n and a capital, is one man. For people in general, write man.")
  (hint "man takes the er form."))
```

---

## darf nicht: must not

You met the trap: **muss nicht** means "do not have to". To say **must not**, German uses **darf nicht**:

> Hier darf man nicht parken. (You must not park here.)

> Du musst nicht kommen. (You don't have to come.)

```check
(choice
  (ask "A sign means: You must not take photos. Which is it?")
  (right "Hier darf man nicht fotografieren.")
  (wrong "Hier muss man nicht fotografieren."
    "Muss nicht means you don't have to. The sign forbids it, so it is darf nicht.")
  (wrong "Hier kann man fotografieren."
    "That says you can take photos. The sign forbids it: darf nicht.")
  (hint "Not allowed: dürfen with nicht."))
```

```sources
(source "Duden, Die Grammatik (Duden volume 4): the modal verbs dürfen and sollen, and nicht müssen")
```

---

## sollen

**sollen** means "should" or "to be supposed to". It often passes on what someone else wants:

> Die Ärztin sagt: Sie sollen viel schlafen. (The doctor says you should sleep a lot.)

**Soll ich ...?** offers to do something: **Soll ich kochen?** (Shall I cook?)

```cards
(card "sollen" "should" (typed) (note "Also: to be supposed to. ich soll, du sollst, er soll"))
(card "der Arzt, die Ärzte" "the doctor" (typed) (note "A man."))
(card "die Ärztin, die Ärztinnen" "the doctor" (typed) (note "A woman."))
(card "schlafen" "to sleep" (typed) (note "du schläfst, er schläft: a to ä, like fahren."))
(card "laut" "loud" (typed) (note "Also: loudly. Nicht so laut, bitte!"))
(card "leise" "quiet" (typed) (note "Also: quietly. Wir sollen leise sprechen."))
```

```check
(choice
  (ask "Soll ich das Fenster öffnen? (öffnen = to open) What does it mean?")
  (right "Shall I open the window?")
  (wrong "Must I open the window?"
    "Must is muss. Soll ich ...? offers to do it: Shall I ...?")
  (wrong "May I open the window?"
    "May is darf. Soll ich ...? offers to do it.")
  (hint "Soll ich ...? is an offer."))
```

---

## A worked example

```example
(example
  (problem "Say in German: You (du) must not sing loudly here.")
  (step "Must not: dürfen with nicht. du darfst.")
  (step "Start with hier, so the verb comes second: Hier darfst du ...")
  (step "Then nicht laut, and the infinitive singen at the end.")
  (answer "Hier darfst du nicht laut singen."))
```

---

## Now you finish one

The doctor says: He should drink a lot of water. **Er ___ viel Wasser trinken.**

```check
(text
  (ask "Type the form of sollen.")
  (accept "soll")
  (wrong-if "sollt" "Sollt is for ihr. For er it is soll, with no ending.")
  (wrong-if "sollen" "Sollen is for wir and sie. For er it is soll.")
  (hint "ich soll, er ..."))
```

---

## In the museum

> Leo: Entschuldigung, darf ich hier fotografieren?

> Frau Weber: Nein, im Museum darf man nicht fotografieren.

> Leo: Und darf ich hier essen?

> Frau Weber: Nein, das dürfen Sie auch nicht. Aber das Café ist da. Dort dürfen Sie essen. (there)

> Leo: Danke! Und wir sollen leise sprechen, nicht?

> Frau Weber: Ja, bitte.

```check
(choice
  (ask "Where may Leo eat?")
  (right "in the café")
  (wrong "in the museum"
    "Frau Weber says no: das dürfen Sie auch nicht. He may eat in the café.")
  (wrong "nowhere"
    "He may eat in the café: Dort dürfen Sie essen.")
  (hint "Find dürfen Sie essen."))
```

---

## Practice

```check
(text
  (ask "Kinder ___ hier nicht spielen. (are not allowed) Type the form of dürfen.")
  (accept "dürfen")
  (wrong-if "darf" "Kinder is plural, like sie: sie dürfen.")
  (wrong-if "dürft" "Dürft is for ihr. Kinder is plural, like sie: dürfen.")
  (hint "Kinder = sie (they)."))
```

```check
(choice
  (ask "Du musst nicht laut sprechen. What does it mean?")
  (right "You don't have to speak loudly.")
  (wrong "You must not speak loudly."
    "Must not is darf nicht. Muss nicht means there is no need.")
  (hint "muss nicht = no need."))
```

```check
(choice
  (ask "You offer to buy the bread. What do you say?")
  (right "Soll ich das Brot kaufen?")
  (wrong "Darf ich das Brot kaufen?"
    "Darf ich asks permission. To offer, ask Soll ich ...?")
  (wrong "Muss ich das Brot kaufen?"
    "Muss ich asks if you have to. To offer, ask Soll ich ...?")
  (hint "Shall I ...?"))
```

```check
(text
  (ask "Hier ___ man nicht parken. Type the form of dürfen.")
  (accept "darf")
  (wrong-if "dürfen" "Man takes the er form: man darf.")
  (wrong-if "darfst" "Darfst is for du. Man takes the er form: darf.")
  (hint "man = er form."))
```

Now you can ask what is allowed with dürfen, say must not with darf nicht, and say what someone should do with sollen.
