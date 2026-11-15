# Typing German

```lesson
(objective "Type ä, ö, ü and ß on Zeitlos with the de or us-intl layout, switch layouts with Super+Space, and use the keyboard app.")
(minutes 25)
(keywords "keyboard layout" "dead key")
```

In this lesson you learn to type ä, ö, ü and ß on Zeitlos, so you can write German the way Germans do.

A **keyboard layout** decides which character each key types. Your keys stay the same; the layout changes what they type. Zeitlos has many layouts. Two are good for German:

- `de`: the layout of German keyboards;
- `us-intl`: a US layout that adds ä, ö, ü and ß.

You can have several layouts. **Super+Space** steps to the next one, and its two letters (US, DE ...) show for a moment over the right end of the dock. Read more in [keyboard layouts](docs:keyboard_layouts).

```check
(choice
  (ask "You have the layouts us and de. What does Super+Space do?")
  (right "It switches to the next layout: from US to DE, or back")
  (wrong "It types a space with an umlaut"
    "Super+Space is not a character. It switches between your keyboard layouts.")
  (wrong "It opens the settings app"
    "The layouts are chosen in settings, but Super+Space only switches between the ones you chose.")
  (hint "Super+Space steps through your layouts."))
```

---

## Choosing your layouts

In **settings**, on the **Keyboard** page, the row **Keyboard layouts** has an **Edit** button. Type the names of the layouts you want, with commas between them: `us,de` or `us,us-intl`. The first one is the one Zeitlos starts in. The change works from the next key you press.

us and us-intl both show US, so type a test letter to see which one you are in.

```try
(try (app "settings")
  (task "Open the Keyboard page, find the row Keyboard layouts, press Edit, and type us,de (or us,us-intl). Then press Super+Space a few times and watch the two letters over the right end of the dock. Come back to learn by clicking its window.")
  (check (choice
    (ask "Which layout does Zeitlos start in, with us,de?")
    (right "us, the first in the list")
    (wrong "de, the last in the list"
      "The first name in the list is the one Zeitlos starts in. Super+Space steps to the next.")
    (hint "Read the list from the left."))))
```

```sources
(source "Zeitlos docs: settings_app.md, Editing the keyboard layouts; keyboard_layouts.md, Using it")
```

---

## The de layout

With `de` on a US keyboard, these keys type something new (the heavy keys):

```figure
(de1-kbd 0)
(caption "de on US keys: ' is ä, ; is ö, [ is ü, - is ß; Y and Z swap.")
```

Hold Shift for Ä, Ö and Ü. On de, the question mark is Shift and the ß key, the mark ' is Shift and the backslash key (above Enter), and Y and Z trade places, as on a German keyboard.

```check
(choice
  (ask "With the de layout on a US keyboard, which key types ö?")
  (right "The ; key")
  (wrong "The ' key"
    "The ' key types ä on de. ö is the key just left of it, ;.")
  (wrong "The O key"
    "O still types o. The umlauts have keys of their own on the right.")
  (hint "Look at the heavy keys in the middle row."))
```

---

## The us-intl layout

`us-intl` keeps every key of a US keyboard where it was. For German letters, hold **AltGr** (the right Alt key):

```figure
(de1-kbd 1)
(caption "us-intl with AltGr: Q is ä, P is ö, Y is ü, S is ß.")
```

Add Shift for Ä, Ö and Ü.

There is a second way. On us-intl, ' and " are **dead keys**: a dead key types nothing at first, and waits for the next key. " then a gives ä, " then O gives Ö.

Careful: ' then Space gives an accent mark, like the one on é, not '. For the mark ' itself, press AltGr and '.

```check
(choice
  (ask "On us-intl, you press \" and then u. What do you get?")
  (right "ü")
  (wrong "\"u"
    "\" is a dead key on us-intl. It waits for the next letter and puts two dots on it: ü.")
  (wrong "Nothing"
    "The dead key types nothing at first, but with the next letter it makes ü.")
  (hint "A dead key waits for the next key."))
```

```sources
(source "Zeitlos source: sw/common/zkbd_layouts.c (the de and us-intl tables) and docs/keyboard_layouts.md, Dead keys")
```

---

## The keyboard app

The **keyboard** app draws a keyboard on the screen, labelled for the layout you have now. Each key shows what it types. Its **Lay** key (bottom right) steps through every layout. Start it from its dock icon, with Super+K, or with the button below. Read more in [the keyboard app](docs:keyboard_app).

You can also type with it: click into an answer box in learn, then click the keys of the keyboard app. The keys go to learn, because the keyboard app never takes the typing focus.

```try
(try (app "keyboard")
  (task "Switch to de (Super+Space, or the Lay key) and find ä, ö, ü and ß on the keyboard app. Then come back to learn by clicking its window.")
  (check (choice
    (ask "On the de layout, which key is ß on?")
    (right "The key right of 0, where US has -")
    (wrong "The S key"
      "S still types s on de. ß has its own key, right of 0.")
    (wrong "The B key"
      "ß looks a little like B, but it has its own key, right of 0.")
    (hint "Look at the top row, after 0."))))
```

---

## Practice typing

Use the layout you chose. If you have no layout with umlauts, write ae, oe, ue and ss: learn takes those too in this course.

```check
(text
  (ask "Type the German name of Munich.")
  (accept "München")
  (accept "Muenchen")
  (accents nearly)
  (wrong-if "Munich" "That is the English name. In German it is München, with ü.")
  (hint "On de, ü is the [ key. On us-intl, AltGr+Y, or \" then u.")
  (hint "M, ü, n, c, h, e, n."))
```

---

```check
(text
  (ask "Type the German word for beautiful.")
  (accept "schön")
  (accept "schoen")
  (accents nearly)
  (hint "On de, ö is the ; key. On us-intl, AltGr+P, or \" then o.")
  (hint "s, c, h, ö, n."))
```

---

```check
(text
  (ask "Type Viel Spaß! (Have fun!), with ß.")
  (accept "Viel Spaß")
  (accept "Viel Spass")
  (accents nearly)
  (wrong-if "Viel Spas" "After the long a, the sharp s is ß (or ss): Spaß.")
  (hint "On de, ß is the key right of 0. On us-intl, AltGr+S.")
  (hint "Viel, a space, then S, p, a, ß."))
```

---

## Read: Lea writes back

> Hallo Tom,

> Wien ist sehr schön! Das Hotel ist alt, aber schön.

> Viele Grüße aus Wien,

> Lea

(aber = but)

```check
(choice
  (ask "What does Lea say about the hotel?")
  (right "It is old but beautiful")
  (wrong "It is new and beautiful"
    "Lea writes: Das Hotel ist alt, aber schön. alt means old, and aber means but.")
  (wrong "It is old and not nice"
    "aber schön means but beautiful. Lea likes it.")
  (hint "alt = old, aber = but, schön = beautiful."))
```

```check
(text
  (ask "Type the line Lea ends with, before her name: Viele Grüße aus Wien.")
  (accept "Viele Grüße aus Wien")
  (accept "Viele Grüße aus Wien,")
  (accept "Viele Grüsse aus Wien")
  (accept "Viele Gruesse aus Wien")
  (accents nearly)
  (hint "Grüße has ü and ß.")
  (hint "Viele Grüße, then aus Wien."))
```

So: choose de or us-intl in settings, switch with Super+Space, and type ä, ö, ü and ß; the keyboard app shows where each one is.
