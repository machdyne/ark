# gern

```lesson
(objective "Say what you like doing and how often with gern, immer, manchmal and viel.")
(minutes 25)
```

To say you like doing something, German puts **gern** after the verb:
Ich koche gern means "I like cooking".

- Ich spiele gern Fußball. (I like playing soccer.)
- Sie malt gern. (She likes painting.)
- Wir lachen gern. (We like to laugh.)

The verb gets its usual ending, and gern never changes. Some people
say gerne; it means the same.

```sources
(source "Duden, Deutsches Universalwörterbuch: gern")
```

```check
(text
  (ask "Write \"I like cooking.\" in German.")
  (accept "Ich koche gern.") (accept "Ich koche gerne.") (accept "Gern koche ich.") (accept "Gerne koche ich.")
  (wrong-if "Ich gern koche." "The verb comes right after ich, and gern after the verb: Ich koche gern.")
  (wrong-if "Ich kochen gern." "kochen is the infinitive. With ich, the verb takes -e: Ich koche gern.")
  (hint "Ich + the verb with its ending + gern."))
```

---

## How often

These words also go after the verb:

| German | English |
|---|---|
| immer | always |
| manchmal | sometimes |
| viel | a lot |

- Er lacht immer. (He always laughs.)
- Wir spielen manchmal Fußball. (We sometimes play soccer.)
- Du arbeitest viel. (You work a lot.)

Look at the first one. English puts "always" before the verb; German
puts immer after it.

```check
(text
  (ask "Write \"She always laughs.\" in German.")
  (accept "Sie lacht immer.") (accept "Immer lacht sie.")
  (wrong-if "Sie immer lacht." "German puts immer after the verb: Sie lacht immer.")
  (wrong-if "Sie lachen immer." "sie (she) takes -t: lacht. lachen is they.")
  (hint "Sie + lacht + immer."))
```

---

## Music and soccer

As in English, music and soccer have no "the" in front here:

- Ich höre Musik. (I listen to music.)
- Ich spiele Fußball. (I play soccer.)

In most of the world, Fußball is called football. US English says
soccer.

```check
(choice
  (ask "\"Wir hören viel Musik.\" What does it mean?")
  (right "We listen to a lot of music.")
  (wrong "We like listening to music."
    "That would be Wir hören gern Musik. viel means a lot.")
  (wrong "We always listen to music."
    "always is immer. viel means a lot.")
  (hint "viel = a lot."))
```

---

## Worked example

```example
(example
  (problem "Say \"You (du) like playing soccer.\"")
  (step "spielen with du: du spielst.")
  (step "gern comes after the verb: du spielst gern.")
  (step "Then what you play: Fußball.")
  (answer "Du spielst gern Fußball."))
```

```example
(example
  (problem "Say \"They sometimes paint.\"")
  (step "malen with sie (they): sie malen.")
  (step (choice (ask "Where does manchmal go?")
          (right "after the verb: Sie malen manchmal.")
          (wrong "before the verb: Sie manchmal malen." "In German, manchmal never goes between sie and the verb, as English \"sometimes\" does: Sie malen manchmal.")))
  (answer "Sie malen manchmal."))
```

---

## Read

- Lena: Was machst du gern, Paul?
- Paul: Ich spiele gern Fußball. Und ich höre viel Musik.
- Lena: Ich koche gern. Und ich male manchmal.
- Paul: Malst du gut?
- Lena: Ja, sehr gut!

```check
(choice
  (ask "What does Lena sometimes do?")
  (right "She paints.")
  (wrong "She plays soccer."
    "That is Paul: Ich spiele gern Fußball. Lena says Ich male manchmal.")
  (wrong "She listens to music."
    "That is Paul too: Ich höre viel Musik. Lena: Ich male manchmal.")
  (hint "Find manchmal."))
```

---

## Practice

```check
(text
  (ask "Write \"He likes learning.\" in German.")
  (accept "Er lernt gern.") (accept "Er lernt gerne.") (accept "Gern lernt er.") (accept "Gerne lernt er.")
  (wrong-if "Er lernen gern." "With er, the verb takes -t: lernt.")
  (wrong-if "Er gern lernt." "gern comes after the verb: Er lernt gern.")
  (hint "Er + lernt + gern."))
```

```check
(choice
  (ask "Which sentence says \"We always work a lot\"?")
  (right "Wir arbeiten immer viel.")
  (wrong "Wir immer arbeiten viel."
    "immer goes after the verb, not before it: Wir arbeiten immer viel.")
  (wrong "Wir arbeitet immer viel."
    "-et is for er, sie, es and ihr. wir takes -en: arbeiten.")
  (hint "wir + the verb + immer viel."))
```

---

```check
(text
  (ask "Write \"I sometimes listen to music.\" in German.")
  (accept "Ich höre manchmal Musik.") (accept "Manchmal höre ich Musik.")
  (wrong-if "Ich manchmal höre Musik." "manchmal goes after the verb: Ich höre manchmal Musik.")
  (wrong-if "Ich höre manchmal die Musik." "die Musik is \"the music\", some music in particular. For music in general, German says just Musik, as English does.")
  (hint "Ich höre ... Musik."))
```

```check
(choice
  (ask "\"Anna kocht gern.\" What does it mean?")
  (right "Anna likes cooking.")
  (wrong "Anna cooks well."
    "Well is gut. gern after the verb means she likes doing it.")
  (wrong "Anna cooks a lot."
    "A lot is viel. gern means she likes it.")
  (hint "gern = gladly, with pleasure."))
```

```cards
(card "gern" "gladly" (typed) (note "with a verb: like to. Ich koche gern. = I like cooking."))
(card "immer" "always" (typed))
(card "manchmal" "sometimes" (typed))
(card "viel" "a lot" (typed) (note "also: much"))
(card "die Musik" "music" (typed))
(card "der Fußball" "soccer" (typed) (note "football outside the US. Ich spiele Fußball."))
```

So: put gern after the verb to say you like doing something, and
immer, manchmal and viel after the verb to say how often or how much.
