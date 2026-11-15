# arbeiten and sitzen

```lesson
(objective "Conjugate verbs whose stem ends in -t or -d (du arbeitest) and in -s, -ß or -z (du sitzt).")
(minutes 20)
```

Some stems end in a letter that makes the regular endings hard to say,
so German changes them a little.

arbeiten (to work) has the stem arbeit-. "arbeitst" and "arbeitt"
are hard to say, so German puts an e before the ending with du, er,
sie, es and ihr:

| | arbeiten | ending |
|---|---|---|
| ich | arbeite | -e |
| du | arbeitest | -est |
| er, sie, es | arbeitet | -et |
| wir | arbeiten | -en |
| ihr | arbeitet | -et |
| sie, Sie | arbeiten | -en |

Stems that end in d work the same way.

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the present tense, endings with e")
```

```check
(text
  (ask "Er ___ (arbeiten) in Hamburg. Write the right form.")
  (accept "arbeitet")
  (wrong-if "arbeitt" "The stem ends in t, so add an e before the ending: arbeitet.")
  (wrong-if "arbeit" "er needs an ending. The stem ends in t, so it is -et: arbeitet.")
  (hint "Stem arbeit-, then e, then the ending -t."))
```

---

## antworten

antworten (to answer) has the stem antwort-, which ends in t too:
du antwortest, er antwortet.

```check
(text
  (ask "du ___ (antworten). Write the right form.")
  (accept "antwortest")
  (wrong-if "antwortst" "The stem ends in t, so put an e before -st: antwortest.")
  (wrong-if "antwortet" "-et is for er, sie, es and ihr. du takes -est here.")
  (hint "Stem antwort-, then e, then -st."))
```

---

## Stems that end in s, ß or z

sitzen (to sit) has the stem sitz-. With du, the s of -st would be
lost in the z sound, so du adds only **-t**:

- du sitzt (not "sitzst")
- du heißt (you know it: Wie heißt du?)

So with these verbs, du and er look the same: du sitzt, er sitzt.

```check
(text
  (ask "du ___ (sitzen). Write the right form.")
  (accept "sitzt")
  (wrong-if "sitzst" "After z, du adds only -t: sitzt.")
  (wrong-if "sitzest" "The extra e is for stems that end in t or d. After z, du adds only -t: sitzt.")
  (hint "The stem ends in z.")
  (hint "du adds only -t."))
```

---

## Worked example

```example
(example
  (problem "Conjugate arbeiten with ihr.")
  (step "The stem arbeit- ends in t.")
  (step "ihr takes -t; with a t stem, put e before it: -et.")
  (answer "ihr arbeitet"))
```

```example
(example
  (problem "Conjugate heißen with du.")
  (step "The stem heiß- ends in ß.")
  (step (choice (ask "So which form?")
          (right "du heißt")
          (wrong "du heißst" "After ß, du adds only -t.")
          (wrong "du heißest" "The extra e is for t and d stems. After ß, du adds only -t.")))
  (answer "du heißt"))
```

---

## Read

> Herr Weber arbeitet in Hamburg. Frau Weber arbeitet in Köln. Paul ist
> 16. Er lernt Englisch und spielt Fußball (soccer). Und Lisa? Lisa ist 4. Sie
> sitzt da und malt.

```check
(choice
  (ask "Where does Mrs. Weber work?")
  (right "in Cologne (Köln)")
  (wrong "in Hamburg"
    "Herr Weber, Mr. Weber, works in Hamburg. Frau Weber arbeitet in Köln.")
  (wrong "She does not work."
    "The text says Frau Weber arbeitet in Köln: she works in Cologne.")
  (hint "Find Frau Weber arbeitet ..."))
```

---

## Practice

```check
(text
  (ask "Sie (she) ___ (antworten). Write the right form.")
  (accept "antwortet")
  (wrong-if "antwortt" "The stem ends in t: put e before the ending. antwortet.")
  (wrong-if "antworten" "-en is for they and formal Sie. sie (she) takes -et here.")
  (hint "Stem antwort- + e + t."))
```

```check
(text
  (ask "Write \"You (du) work.\" in German.")
  (accept "Du arbeitest.")
  (wrong-if "Du arbeitst." "The stem ends in t: du arbeitest.")
  (hint "du + arbeit- + est."))
```

---

```check
(choice
  (ask "Which form is right?")
  (right "wir sitzen")
  (wrong "wir sitzt"
    "Only du (and er, ihr) take -t. wir takes -en: wir sitzen.")
  (wrong "wir sitzet"
    "wir takes -en, as always: wir sitzen.")
  (hint "wir always takes -en."))
```

```check
(text
  (ask "Er ___ (sitzen) da. Write the right form.")
  (accept "sitzt")
  (wrong-if "sitzet" "The extra e is only for t and d stems. er sitzt.")
  (hint "Stem sitz- + -t."))
```

```cards
(card "arbeiten" "to work" (typed) (note "du arbeitest, er arbeitet"))
(card "antworten" "to answer" (typed) (note "du antwortest, er antwortet"))
(card "sitzen" "to sit" (typed) (note "du sitzt, er sitzt"))
```

So: stems that end in t or d put an e before -st and -t; stems that
end in s, ß or z take only -t with du.
