# Outline: Sentences

Part `02-sentences` of `lang-de-1`, German 1: 6 units, 30 lessons. This file has no number, so learn ignores it. Each lesson has exactly the file name and objective below; the keywords are the terms it teaches, each defined in bold in the step where it first appears. No `(standards ...)` anywhere (the CEFR has no codes for single objectives); each unit's `index.md` names the A1 abilities it serves.

## Order

The part plan lists verbs, haben, vowel changes, word order, nouns, plurals, nicht and kein, family and home. Here the nouns come second: haben and the vowel-change verbs need things to have, read and see, and every noun is learned with its article. So: 1 verbs, 2 nouns and gender, 3 haben and verbs that change, 4 word order and questions, 5 plurals, nicht and kein, 6 family and home.

## Figures

Own procedures in `lib/de2.scm` only, every name starting with `de2-` (under 5 KB):

- `de2-slots` -- a sentence as boxes in a row, one word group a box, the verb's box picked out, with "1", "2" ... over them (word order).
- `de2-person`, `de2-link` -- a small family tree: boxes with a name and who the person is, and the lines between them.
- `de2-room` -- a flat's floor plan: rooms as labelled rectangles.

Built-in: `label`, `caption`. Most lessons need no figure; conjugation tables are Markdown tables.

## Known from part 1 (01-first-words)

Terms: vowel, consonant, umlaut, syllable, stress (of a word), keyboard layout, dead key, formal, informal, pronoun, personal pronoun. Words: everything in part 1's running vocabulary list, notably ja, nein, gut, alt, neu, schön, toll, da, und, oder, aber, auch, sehr, wie, wo, was, aus, für, alle, zusammen, kalt, warm, Mir ist kalt, das Handy, der Name, das Land, die Sprache, Deutsch, Englisch, Herr, Frau (as a title), the greetings, ich heiße / ich komme aus / ich wohne in / ich spreche (as phrases), Das ist ..., Was ist das?, Wo ist ...?, Ich weiß, the personal pronouns, sein in all persons, the numbers 0-100. Part 1 does not teach "verb", "singular" or "plural": this part does.

## Words this part may not use

- Part 3 (03-everyday) teaches the terms **accusative**, **nominative**, **case**, **object (of a verb)**, **modal verb**, **decimal comma**, **ordinal number**: do not write them, not even the plain English words "case" and "object" (write "thing" or "word").
- Words part 3 teaches as new (its OUTLINE.md), not to be used here: suchen, brauchen, finden, kaufen, besuchen, fragen, verstehen, lieben, schwimmen, singen, tanzen, warten, schreiben, reisen, schlafen, kosten, bestellen, bezahlen, beginnen, parken, frühstücken, duschen; the modal verbs (können, müssen, wollen, möchten, dürfen, sollen, mögen); der Schlüssel, der Stift, die Tasche, die Stadt, die Frage, das Fahrrad, die Zeit, die Gitarre, die Hausaufgaben, der Film, die Schule, die Arbeit, die Uhr, der Zug, der Bus; clothes, food and drink, prices, the time and the date (heute, morgen, Woche, days, months, seasons); das Wetter, die Sonne, heiß; interessant, langweilig, laut, leise, leider, natürlich, vielleicht, jetzt, dann, zuerst, oft, meistens, gleich, früh, spät, frei, es gibt, zu Hause, nach Hause, man. (schön, neu, toll, zusammen, kalt, warm, Mir ist kalt and das Handy are taught in part 1, so they may be used.)
- Avoid the prepositions with articles (in der, im, ins, mit dem ...): the dative and prepositions are German 2. Allowed: "nach + city or country" (no article), "aus" and "in" + city or country (part 1).
- Nominative only. With haben and other verbs, the thing had, read or seen is a feminine, neuter or plural noun, or a noun with no article (Ich habe ein Auto, eine Katze, zwei Brüder; Ich höre Musik; Ich spiele Fußball). **Never a masculine noun with an article after a verb other than sein**: einen, den and keinen come in part 3.
- Each noun card is written "der Tisch, die Tische" (front) and "the table" (back) from unit 2 on.
- `text` answers: default strict accents; always accept ss for ß; `(case)` only in 02-nouns/01. Accept with and without the article where the question allows, du and Sie forms where both fit, and every right word order.
- No German in `say` blocks.

## 01-verbs/ -- Verbs in the present

Say what you and others do with regular verbs in the present tense.

1. `01-verbs-and-infinitives.md` -- Recognise a verb, its infinitive ending in -en, and find its stem.  
   Keywords: "verb", "infinitive", "stem (of a verb)". New words: spielen, lernen, machen, gehen, hören, kochen.
2. `02-ich-du-er.md` -- Conjugate a regular verb with ich, du and er, sie, es in the present tense (-e, -st, -t).  
   Keywords: "ending (of a verb)", "conjugate", "present tense". New words: sagen, kennen, glauben, malen.
3. `03-wir-ihr-sie.md` -- Conjugate a regular verb with wir, ihr, sie and Sie (-en, -t, -en), and know the whole present tense of a regular verb.  
   Keywords: "singular", "plural". New words: bleiben, lachen, studieren, fliegen.
4. `04-arbeiten-and-sitzen.md` -- Conjugate verbs whose stem ends in -t or -d (du arbeitest) and in -s, -ß or -z (du sitzt).  
   Keywords: (none new). New words: arbeiten, antworten, sitzen.
5. `05-gern.md` -- Say what you like doing and how often with gern, immer, manchmal and viel.  
   Keywords: (none new). New words: gern, immer, manchmal, viel, die Musik, der Fußball (as "Fußball spielen", no article).

## 02-nouns/ -- Nouns and their gender

Name things and people with nouns and their articles: der, die, das and ein, eine.

1. `01-nouns-and-capitals.md` -- Recognise nouns and write every German noun with a capital letter.  
   Keywords: "noun". New words: das Buch, der Tisch, die Lampe, das Haus, die Tür, das Fenster, hier.
2. `02-der-die-das.md` -- Use der, die and das, and learn every noun with its article because its gender is part of the word.  
   Keywords: "article", "gender (of nouns)", "masculine", "feminine", "neuter". New words: der Mann, die Frau, das Kind, das Mädchen, der Junge, das Baby.
3. `03-ein-eine.md` -- Use ein and eine, and tell the definite from the indefinite article.  
   Keywords: "definite article", "indefinite article". New words: der Computer, das Telefon, die Brille, der Kuli, das Heft, die Zeitung.
4. `04-gender-clues.md` -- Guess a noun's gender from clues that almost always hold: -in, -ung, -chen and compound nouns.  
   Keywords: "compound noun". New words: der Lehrer, die Lehrerin, der Freund, die Freundin, der Student, die Studentin, die Übung, das Wörterbuch.
5. `05-er-sie-es.md` -- Replace a noun with er, sie or es by its gender, and describe things with sein.  
   Keywords: (none new). New words: groß, klein, lang, kaputt, dort.

## 03-haben-and-vowels/ -- haben and verbs that change

Use haben and the verbs whose vowel changes with du and er, sie, es.

1. `01-haben.md` -- Conjugate haben and say what you have.  
   Keywords: (none new). New words: haben, das Auto, die Katze, die Idee, das Problem, das Geschenk.
2. `02-fahren-and-laufen.md` -- Conjugate verbs that change a to ä (and au to äu) with du and er, sie, es: fahren, tragen, laufen.  
   Keywords: (none new; "vowel" is part 1's). New words: fahren, tragen, laufen, nach, schnell, langsam.
3. `03-essen-and-sprechen.md` -- Conjugate verbs that change e to i: essen, sprechen, nehmen, vergessen.  
   Keywords: (none new). New words: essen, sprechen, nehmen, vergessen, das Wort.
4. `04-lesen-and-sehen.md` -- Conjugate verbs that change e to ie: lesen and sehen.  
   Keywords: (none new). New words: lesen, sehen, das Bild, die Geschichte, die E-Mail.
5. `05-which-verb.md` -- Tell regular verbs, haben, sein and the vowel-change verbs apart and use each rightly.  
   Keywords: (none new). New words: das Spiel, das Lied, die Party.

## 04-word-order/ -- Word order and questions

Put the verb in the right place in statements and questions.

1. `01-the-subject.md` -- Find the subject of a sentence and match the verb to it, also when the subject is a noun or a name.  
   Keywords: "subject" ("nominative" and "case" are part 3's, 03-everyday/01-accusative/01). New words: der Nachbar, die Nachbarin, die Leute, der Hund, das Tier.
2. `02-verb-second.md` -- Put the verb second in a statement, also when the sentence starts with something other than the subject.  
   Keywords: (none new). New words: bald, wieder, noch, schon, gerade.
3. `03-yes-no-questions.md` -- Ask a yes/no question with the verb first, and answer it.  
   Keywords: (none new). New words: das Klavier, das Tennis, das Schach, richtig, falsch.
4. `04-w-questions.md` -- Ask a question with a question word first and the verb second.  
   Keywords: "question word". New words: wer, wohin, das Hobby, die Antwort.
5. `05-asking-people.md` -- Ask and answer questions with du and Sie in a short conversation.  
   Keywords: (none new). New words: genau, wirklich, super.

## 05-plurals-and-negation/ -- Plurals, nicht and kein

Say how many with plurals, and say no with nicht and kein.

1. `01-plurals.md` -- Use die for every plural, and the plurals with -n, -en and -s.  
   Keywords: (none new). New words: die Blume, die Straße, das Foto, die Farbe.
2. `02-more-plurals.md` -- Use the plurals with -e, -er, an umlaut or no change, and count things.  
   Keywords: (none new). New words: der Baum, der Vogel, der Garten, das Dorf, der Berg, der See, das Meer, wie viele.
3. `03-nicht.md` -- Say no with nicht in the right place.  
   Keywords: (none new). New words: nicht, müde, krank, gesund, fertig, schwer, einfach.
4. `04-kein.md` -- Say no to a noun with kein and keine, and answer a no-question with doch.  
   Keywords: (none new). New words: kein, doch, das Radio, die Kamera, das Haustier.
5. `05-nicht-or-kein.md` -- Choose between nicht and kein.  
   Keywords: (none new). New words: der Platz, leer, voll.

## 06-family-and-home/ -- Family and home

Talk about your family and your home.

1. `01-my-family.md` -- Name your family with mein and meine.  
   Keywords: (none new). New words: der Vater, die Mutter, die Eltern, der Bruder, die Schwester, die Geschwister, der Sohn, die Tochter, mein/meine.
2. `02-your-family.md` -- Ask about someone's family with dein, deine and Ihr, Ihre.  
   Keywords: (none new). New words: dein/deine, Ihr/Ihre, die Familie, die Großeltern, der Opa, die Oma, der Onkel, die Tante, verheiratet.
3. `03-the-flat.md` -- Name the rooms of a home.  
   Keywords: (none new). New words: die Wohnung, das Zimmer, die Küche, das Bad, das Schlafzimmer, das Wohnzimmer, der Balkon.
4. `04-furniture.md` -- Name furniture and say what a room has and is like.  
   Keywords: (none new). New words: das Bett, der Schrank, das Sofa, der Stuhl, das Regal, hell, dunkel.
5. `05-my-home.md` -- Describe your family and your home in a few sentences.  
   Keywords: (none new). New words: ruhig, modern, praktisch.

## Running vocabulary list

Every word this part teaches as new, and its lesson (unit/lesson):

- 1/1 spielen, lernen, machen, gehen, hören, kochen
- 1/2 sagen, kennen, glauben, malen
- 1/3 bleiben, lachen, studieren, fliegen
- 1/4 arbeiten, antworten, sitzen
- 1/5 gern, immer, manchmal, viel, die Musik, der Fußball
- 2/1 das Buch, der Tisch, die Lampe, das Haus, die Tür, das Fenster, hier
- 2/2 der Mann, die Frau, das Kind, das Mädchen, der Junge, das Baby
- 2/3 der Computer, das Telefon, die Brille, der Kuli, das Heft, die Zeitung
- 2/4 der Lehrer, die Lehrerin, der Freund, die Freundin, der Student, die Studentin, die Übung, das Wörterbuch
- 2/5 groß, klein, lang, kaputt, dort
- 3/1 haben, das Auto, die Katze, die Idee, das Problem, das Geschenk
- 3/2 fahren, tragen, laufen, nach, schnell, langsam
- 3/3 essen, sprechen, nehmen, vergessen, das Wort
- 3/4 lesen, sehen, das Bild, die Geschichte, die E-Mail
- 3/5 das Spiel, das Lied, die Party
- 4/1 der Nachbar, die Nachbarin, die Leute, der Hund, das Tier
- 4/2 bald, wieder, noch, schon, gerade
- 4/3 das Klavier, das Tennis, das Schach, richtig, falsch
- 4/4 wer, wohin, das Hobby, die Antwort
- 4/5 genau, wirklich, super
- 5/1 die Blume, die Straße, das Foto, die Farbe
- 5/2 der Baum, der Vogel, der Garten, das Dorf, der Berg, der See, das Meer, wie viele
- 5/3 nicht, müde, krank, gesund, fertig, schwer, einfach
- 5/4 kein, doch, das Radio, die Kamera, das Haustier
- 5/5 der Platz, leer, voll
- 6/1 der Vater, die Mutter, die Eltern, der Bruder, die Schwester, die Geschwister, der Sohn, die Tochter, mein/meine
- 6/2 dein/deine, Ihr/Ihre, die Familie, die Großeltern, der Opa, die Oma, der Onkel, die Tante, verheiratet
- 6/3 die Wohnung, das Zimmer, die Küche, das Bad, das Schlafzimmer, das Wohnzimmer, der Balkon
- 6/4 das Bett, der Schrank, das Sofa, der Stuhl, das Regal, hell, dunkel
- 6/5 ruhig, modern, praktisch

## Words known from part 1

Everything in the running vocabulary list of `01-first-words/OUTLINE.md` (see "Known from part 1" above). sprechen is known there only as the phrases ich spreche, Sprichst du ...?, Sprechen Sie ...?; 03/3 teaches the whole verb.
