# The verb comes second

```lesson
(objective "Put the verb second in a statement, also when the sentence starts with something other than the subject.")
(minutes 25)
```

In a German statement, the verb always stands in second place.

Count the places by word groups, not by single words. The subject
often comes first, and the verb second, as in the figure.

```figure
(de2-slots 90 '("Ich" "spiele" "gern Fußball") 2)
(caption "Place 1: the subject. Place 2: the verb.")
```

So words like gern go after the verb, never between the subject and
the verb, where English puts "often" in "I often play".

```sources
(source "Duden, Die Grammatik (10th edition, 2022): the position of the verb in the sentence")
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Ich spiele gern Fußball.")
  (wrong "Ich gern spiele Fußball."
    "Here the verb is in place 3. In a German statement it stands second: Ich spiele gern Fußball.")
  (wrong "Gern ich spiele Fußball."
    "The verb must be second, right after Gern: Gern spiele ich Fußball. Here it comes third.")
  (hint "Count the places. Where is the verb?"))
```

---

## Something else first

You can start with another word, such as hier, gern or manchmal. The
verb stays in place 2, so the subject moves to just after the verb.
Choose A, B or C under the figure to see three sentences.

```figure
(define c (choice 's '("A" "B" "C") "Sentence"))
(if (= c 0) (de2-slots 80 '("Anna" "wohnt" "hier") 2))
(if (= c 1) (de2-slots 80 '("Hier" "wohnt" "Anna") 2))
(if (= c 2) (de2-slots 80 '("Manchmal" "kocht" "Tom") 2))
(caption "Whatever is first, the verb is second.")
```

```check
(text
  (ask "\"Ich wohne hier.\" Write it starting with Hier.")
  (accept "Hier wohne ich.")
  (wrong-if "Hier ich wohne." "That is the English order. In German the verb stays second: Hier wohne ich.")
  (wrong-if "Hier ich wohne hier." "Start with Hier, then the verb, then ich: Hier wohne ich.")
  (hint "Hier, then the verb, then the subject."))
```

---

## A group in place 1

Place 1 can hold more than one word, if they belong together: In Wien
wohnt Anna. In Wien is one group, so wohnt is still second.

und, aber and oder do not take a place: they join two sentences. Ich
koche, und Tom spielt.

```check
(choice
  (ask "Which sentence is right?")
  (right "In Berlin wohnt Tom.")
  (wrong "In Berlin Tom wohnt."
    "In Berlin is place 1, so the verb comes next, then Tom: In Berlin wohnt Tom.")
  (wrong "In wohnt Berlin Tom."
    "In Berlin belongs together as one group, so it stays together in place 1.")
  (hint "In Berlin is one group."))
```

---

## Little words for time

| German | English |
|---|---|
| bald | soon |
| wieder | again |
| noch | still |
| schon | already |
| gerade | right now, at the moment |

- Bald fliegt Lena nach Kanada. (Soon Lena flies to Canada.)
- Tom lacht schon wieder. (Tom is laughing yet again.)
- Ich lerne noch. (I am still learning.)

```check
(text
  (ask "\"Wir fahren bald nach Graz.\" Write it starting with Bald.")
  (accept "Bald fahren wir nach Graz.")
  (wrong-if "Bald wir fahren nach Graz." "After Bald comes the verb, then the subject: Bald fahren wir nach Graz.")
  (hint "Bald, then fahren, then wir."))
```

---

## Worked example

```example
(example
  (problem "Start with Gern: Ich koche gern.")
  (step "Place 1: Gern.")
  (step "Place 2: the verb, koche.")
  (step "Then the subject, ich.")
  (answer "Gern koche ich."))
```

```example
(example
  (problem "Start with Manchmal: Sie malt manchmal.")
  (step "Place 1: Manchmal.")
  (step (choice (ask "What comes in place 2?")
          (right "malt")
          (wrong "sie" "The verb is always second. sie comes right after it.")))
  (answer "Manchmal malt sie."))
```

---

## Read

> Lena wohnt in Hamburg. Bald fliegt sie nach Kanada. Dort wohnt Ben,
> ein Freund. Ben lernt gerade Deutsch. Lena spricht schon gut
> Englisch.

```check
(choice
  (ask "What is Ben doing at the moment?")
  (right "He is learning German.")
  (wrong "He is flying to Canada."
    "Lena flies to Canada soon (Bald fliegt sie). Ben lives there: Dort wohnt Ben.")
  (wrong "He is learning English."
    "Lena already speaks good English (spricht schon gut Englisch). Ben lernt gerade Deutsch.")
  (hint "Find gerade."))
```

---

## Practice

```check
(text
  (ask "\"Tom spielt manchmal Fußball.\" Write it starting with Manchmal.")
  (accept "Manchmal spielt Tom Fußball.") (accept "Manchmal spielt Tom Fussball.")
  (wrong-if "Manchmal Tom spielt Fußball." "After Manchmal comes the verb: Manchmal spielt Tom Fußball.")
  (hint "Manchmal, the verb, Tom, Fußball."))
```

```check
(choice
  (ask "Which sentence is right?")
  (right "Dort arbeitet Herr Weber.")
  (wrong "Dort Herr Weber arbeitet."
    "The verb is in place 3 here. After Dort comes the verb: Dort arbeitet Herr Weber.")
  (wrong "Herr Weber dort arbeitet."
    "The verb must be second. Herr Weber arbeitet dort, or Dort arbeitet Herr Weber.")
  (hint "Find the verb. Is it second?"))
```

---

```check
(text
  (ask "Write \"I am still learning.\" in German.")
  (accept "Ich lerne noch.")
  (wrong-if "Ich noch lerne." "noch goes after the verb: Ich lerne noch.")
  (hint "Ich lerne ..."))
```

```check
(choice
  (ask "\"Gern höre ich Musik.\" What does it mean?")
  (right "I like listening to music.")
  (wrong "Do I like listening to music?"
    "It is a statement: Gern is in place 1, the verb second. A question has the verb first.")
  (wrong "She likes listening to music."
    "ich is I. The subject comes after the verb here, but it is still ich.")
  (hint "Who is the subject here?"))
```

```cards
(card "bald" "soon" (typed))
(card "wieder" "again" (typed))
(card "noch" "still" (typed))
(card "schon" "already" (typed))
(card "gerade" "right now" (typed) (note "also: at the moment"))
```

So: in a statement the verb is always second; when something else
comes first, the subject goes right after the verb.
