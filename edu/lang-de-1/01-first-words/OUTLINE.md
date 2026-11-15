# Outline: First words

Part `01-first-words` of `lang-de-1`, German 1: 6 units, 30 lessons. This file has no number, so learn ignores it. Each lesson has exactly the file name and objective below; the keywords are the terms it teaches, each defined in bold in the step where it first appears. No `(standards ...)` anywhere (the CEFR has no codes for single objectives); each unit's `index.md` names the A1 abilities it serves.

## Order

Sounds and spelling first (with typing as the unit's last lesson, so every later typed answer can use ä, ö, ü and ß), then greetings, introductions, the personal pronouns and sein, the numbers to 100, and last the alphabet's letter names, spelling a name and age, which use the numbers and sein.

## Figures

Own procedures in `lib/de1.scm` only, every name starting with `de1-` (under 5 KB):

- `de1-word` -- the German word for a number from 0 to 100.
- `de1-build` -- a number from 21 to 99 with its word built from parts (ones, und, tens) and lines from each digit to its part: the ones are said first.
- `de1-kbd` -- the letter keys of a US keyboard with what the `de` layout, or `us-intl` with AltGr, types on the keys that matter for German.

Built-in: `label`, `caption`. Most lessons need no figure; tables of forms are Markdown tables.

## Words this part may not use

Parts 2 and 3 teach these terms: **verb**, **infinitive**, **stem (of a verb)**, **ending (of a verb)**, **conjugate**, **present tense**, **singular**, **plural**, **noun**, **article** (definite, indefinite), **gender (of nouns)**, **masculine**, **feminine**, **neuter**, **compound noun**, **subject**, **nominative**, **question word**, **object (of a verb)**, **case (of a noun)**, **accusative**, **modal verb**, **decimal comma**, **ordinal number**. Do not write them (and not the plain English words "case", "object", "ending", "subject" in another sense either: terms.py cannot tell). Say "word", "form", "der, die or das (the)", "one person", "more than one".

Grammar later parts teach: present-tense verb forms beyond the fixed phrases below; haben; word-order rules (verb second, verb first in yes/no questions: use such sentences only as fixed phrases, never state the rule); nouns, gender and plurals (give each word with der, die or das, never explain why); nicht and kein (only in the fixed phrases "Nicht so gut" and "Kein Problem"); mein/dein/Ihr (only in "Mein Name ist", "Wie ist Ihr Name?", "Wie ist deine/Ihre Telefonnummer?", "Meine Nummer ist"); the accusative, modal verbs, the time, prices.

Fixed phrases with a verb that this part teaches as phrases: ich heiße, Wie heißt du?, Wie heißen Sie?; ich komme aus, Woher kommst du?, Woher kommen Sie?; ich wohne in, Wo wohnst du?, Wo wohnen Sie?; ich spreche, Sprechen Sie ...?, Sprichst du ...?; Wie geht's?, Es geht., Es tut mir leid., Freut mich., Ich weiß.; Wie sagt man ... auf Deutsch?, Wie schreibt man das?, Buchstabieren Sie bitte. ("man" appears only in those two phrases: part 3 teaches it.)

Words parts 2 and 3 teach as new (their OUTLINE.md files), never used here, not even in readings: the verbs they list; das Buch, der Tisch, das Haus, die Tür, das Fenster, der Mann, die Frau (as "woman": "Frau Weber" as a title is used), das Kind, das Mädchen, der Junge, der Freund, die Freundin, der Lehrer, die Lehrerin, die Leute, groß, klein, hier, dort, schon, noch (but "Noch einmal, bitte"), wieder, bald, wer, nicht, kein, müde, krank, viel (but "Viel Spaß", "Vielen Dank", "Viele Grüße"), gern, das Wort, das Problem (but "Kein Problem"), langsam, family and home words, food and drink, die Uhr, heute, morgen, der Tag (but "Guten Tag"), der Morgen, der Abend, die Nacht (but the greetings), das Jahr (but "... Jahre alt"), der Geburtstag, die Zeit, die Schule, die Stadt, die Straße, das Wetter, ein bisschen, zu Hause, man.

Words that parts 2 and 3 each take as known from the other, and that this part teaches so that they are known: schön, neu, da, zusammen, toll, kalt, warm, Mir ist kalt, das Handy.

## Typed answers

`(accents nearly)` on every `text` check in this part (a missing umlaut is "nearly"); always accept `ss` for ß; at most 8 `(accept ...)`; commas and capitals: accept with and without a comma where one is optional, and case is ignored (no `(case)` here: Sie and sie are taught with choices). No German in `say` blocks. Cards: front German, back short English; `(typed)` on single words.

## Terms known from part 1 (for parts 2 and 3)

vowel, consonant, umlaut, syllable, stress (of a word), keyboard layout, dead key, formal, informal, pronoun, personal pronoun.

## 01-sounds/ -- Sounds and spelling

Read German words aloud from their spelling, and type ä, ö, ü and ß.

1. `01-vowels.md` -- Read the five vowels a, e, i, o, u, long and short, and the weak e at the end of a word.  
   Keywords: "vowel", "consonant". New words: ja, gut, alt, und, oder, der Name, das Hotel, das Taxi.
2. `02-umlauts.md` -- Read and write ä, ö and ü, and see that an umlaut changes a word.  
   Keywords: "umlaut". New words: schön, für, der Schüler, die Schülerin, Tschüss, Österreich, München, Dänemark.
3. `03-vowel-pairs.md` -- Read ei, ie, au and eu (äu), and tell ei from ie.  
   Keywords: (none new). New words: nein, wie, Wien, die Schweiz, aus, der Urlaub, Deutsch, neu.
4. `04-ch-and-sch.md` -- Read the two sounds of ch, and sch, tsch, sp and st.  
   Keywords: (none new). New words: ich, auch, Ach so!, die Sprache, Englisch, Französisch, der Sport.
5. `05-w-v-z-j-s-r.md` -- Read w, v, z, j, s and r, and b, d and g at the end of a word.  
   Keywords: (none new). New words: wo, was, Herzlich willkommen!, der Vorname, die Zahl, jung, sehr.
6. `06-eszett-and-stress.md` -- Write ß or ss by the vowel before it, and read a word aloud with its stress on the right syllable.  
   Keywords: "syllable", "stress (of a word)". New words: Viele Grüße, Viel Spaß!, das Büro, die Information, die Adresse, Ich weiß.
7. `07-typing-german.md` -- Type ä, ö, ü and ß on Zeitlos with the de or us-intl layout, switch layouts with Super+Space, and use the keyboard app.  
   Keywords: "keyboard layout", "dead key". New words: (none: practice with earlier words).

## 02-greetings/ -- Greetings and goodbyes

Greet people and say goodbye at any time of day, choose du or Sie, ask how someone is, and say please, thank you and sorry.

1. `01-hello-and-goodbye.md` -- Greet someone and say goodbye at the right time of day, and know the greetings of Austria and Switzerland.  
   Keywords: (none new). New words: Hallo, Guten Morgen, Guten Tag, Guten Abend, Gute Nacht, Auf Wiedersehen, Grüß Gott, Grüezi, Servus.
2. `02-du-and-sie.md` -- Choose du or Sie for the person you speak to, and greet people by name with Herr and Frau.  
   Keywords: "formal", "informal". New words: du, Sie, Herr ..., Frau ..., der Kollege, die Kollegin.
3. `03-how-are-you.md` -- Ask how someone is with du and with Sie, and answer.  
   Keywords: (none new). New words: Wie geht's?, Wie geht es dir?, Wie geht es Ihnen?, danke, Mir geht es gut., Es geht., Nicht so gut., Und dir? / Und Ihnen?
4. `04-please-and-thank-you.md` -- Say please, thank you, you're welcome, excuse me and sorry, and ask someone to say something again.  
   Keywords: (none new). New words: bitte, Danke schön., Vielen Dank!, Bitte schön., Entschuldigung!, Es tut mir leid., Kein Problem., Wie bitte?

## 03-introductions/ -- Introductions

Say your name, where you come from, where you live and what languages you speak, ask others the same, and introduce someone.

1. `01-my-name-is.md` -- Say your name and ask someone's, with du and with Sie.  
   Keywords: (none new). New words: Ich heiße ..., Wie heißt du?, Wie heißen Sie?, Mein Name ist ..., Wie ist Ihr Name?, Ich bin ..., Freut mich., Und du? / Und Sie?
2. `02-where-from.md` -- Say which country you come from and ask others.  
   Keywords: (none new). New words: Ich komme aus ..., Woher kommst du?, Woher kommen Sie?, Deutschland, England, Kanada, Australien, aus der Schweiz, aus den USA.
3. `03-where-you-live.md` -- Say which town or city you live in and ask others, and know German names of cities.  
   Keywords: (none new). New words: Ich wohne in ..., Wo wohnst du?, Wo wohnen Sie?, das Land, Berlin, Hamburg, Köln.
4. `04-languages.md` -- Say which languages you speak, ask others, and ask how to say a word in German.  
   Keywords: (none new). New words: Ich spreche ..., Sprechen Sie Englisch?, Sprichst du Deutsch?, Spanisch, Italienisch, auf Deutsch, Wie sagt man ... auf Deutsch?
5. `05-introducing-people.md` -- Introduce yourself in a few sentences and introduce someone else with Das ist.  
   Keywords: (none new). New words: Das ist ..., der Kurs, Ich bin neu.

## 04-pronouns-and-sein/ -- Pronouns and sein

Use the personal pronouns and every form of sein (to be) to say who and where people are and what they are like.

1. `01-ich-du-er-sie-es.md` -- Use ich, du, er, sie and es for one person or thing.  
   Keywords: "pronoun", "personal pronoun". New words: er, sie (she), es, aber.
2. `02-wir-ihr-sie.md` -- Use wir, ihr, sie (they) and Sie, and tell sie (she), sie (they) and Sie (you) apart.  
   Keywords: (none new). New words: wir, ihr, sie (they), alle.
3. `03-ich-bin-du-bist.md` -- Say ich bin, du bist and er, sie, es ist, and say "I am cold" the German way.  
   Keywords: (none new). New words: sein, ich bin, du bist, er/sie/es ist, kalt, warm, Mir ist kalt.
4. `04-wir-sind-ihr-seid.md` -- Say wir sind, ihr seid, sie sind and Sie sind, and know all of sein.  
   Keywords: (none new). New words: wir sind, ihr seid, sie sind / Sie sind, zusammen, da.
5. `05-using-sein.md` -- Ask and answer with sein: Was ist das?, Wo ist ...?, Ich bin aus ..., and tell she from they by the form of sein.  
   Keywords: (none new). New words: Was ist das?, Wo ist ...?, Ich bin aus ..., toll.

## 05-numbers/ -- Numbers

Count, read and write the numbers from 0 to 100, and say and understand phone numbers.

1. `01-zero-to-twelve.md` -- Say, read and write the numbers 0 to 12.  
   Keywords: (none new). New words: null, eins, zwei, drei, vier, fünf, sechs, sieben, acht, neun, zehn, elf, zwölf.
2. `02-thirteen-to-twenty.md` -- Say, read and write 13 to 20, with the short forms sechzehn and siebzehn.  
   Keywords: (none new). New words: dreizehn, vierzehn, fünfzehn, sechzehn, siebzehn, achtzehn, neunzehn, zwanzig.
3. `03-tens.md` -- Say, read and write the tens 30 to 100, with dreißig and the -ig sound.  
   Keywords: (none new). New words: dreißig, vierzig, fünfzig, sechzig, siebzig, achtzig, neunzig, hundert.
4. `04-twenty-one-to-ninety-nine.md` -- Say, read and write 21 to 99, ones first: einundzwanzig.  
   Keywords: (none new). New words: einundzwanzig, fünfundzwanzig, achtundvierzig, neunundneunzig (as models of the pattern).
5. `05-phone-numbers.md` -- Give and understand a phone number, digit by digit, with zwo.  
   Keywords: (none new). New words: die Telefonnummer, die Nummer, das Handy, Wie ist deine Telefonnummer?, Wie ist Ihre Telefonnummer?, Meine Nummer ist ..., zwo, Noch einmal, bitte.

## 06-spelling-and-age/ -- Spelling and age

Say the German alphabet, spell your name, say your age, and give your details for a form.

1. `01-the-alphabet.md` -- Say the names of the German letters, and the ones English speakers mix up.  
   Keywords: (none new). New words: das Alphabet, der Buchstabe, and the letter names A to Z, Ä, Ö, Ü and ß (Eszett).
2. `02-spelling-a-name.md` -- Spell your name letter by letter and ask how a name is written.  
   Keywords: (none new). New words: Wie schreibt man das?, Buchstabieren Sie bitte., der Familienname, der Nachname, A-Umlaut.
3. `03-how-old.md` -- Ask someone's age with du and Sie and say your own.  
   Keywords: (none new). New words: Wie alt bist du?, Wie alt sind Sie?, Ich bin ... Jahre alt., das Alter.
4. `04-all-about-you.md` -- Give your details for a simple form and in a short introduction.  
   Keywords: (none new). New words: das Formular, der Wohnort, die Postleitzahl, die Hausnummer.

## Running vocabulary list

Every word this part teaches as new, and its lesson (unit/lesson):

- 1/1 ja, gut, alt, und, oder, der Name, das Hotel, das Taxi
- 1/2 schön, für, der Schüler, die Schülerin, Tschüss, Österreich, München, Dänemark
- 1/3 nein, wie, Wien, die Schweiz, aus, der Urlaub, Deutsch, neu
- 1/4 ich, auch, Ach so!, die Sprache, Englisch, Französisch, der Sport
- 1/5 wo, was, Herzlich willkommen!, der Vorname, die Zahl, jung, sehr
- 1/6 Viele Grüße, Viel Spaß!, das Büro, die Information, die Adresse, Ich weiß.
- 1/7 (none)
- 2/1 Hallo, Guten Morgen, Guten Tag, Guten Abend, Gute Nacht, Auf Wiedersehen, Grüß Gott, Grüezi, Servus
- 2/2 du, Sie, Herr ..., Frau ..., der Kollege, die Kollegin
- 2/3 Wie geht's?, Wie geht es dir?, Wie geht es Ihnen?, danke, Mir geht es gut., Es geht., Nicht so gut., Und dir? / Und Ihnen?
- 2/4 bitte, Danke schön., Vielen Dank!, Bitte schön., Entschuldigung!, Es tut mir leid., Kein Problem., Wie bitte?
- 3/1 Ich heiße ..., Wie heißt du?, Wie heißen Sie?, Mein Name ist ..., Wie ist Ihr Name?, Ich bin ..., Freut mich., Und du? / Und Sie?
- 3/2 Ich komme aus ..., Woher kommst du?, Woher kommen Sie?, Deutschland, England, Kanada, Australien, aus der Schweiz, aus den USA
- 3/3 Ich wohne in ..., Wo wohnst du?, Wo wohnen Sie?, das Land, Berlin, Hamburg, Köln
- 3/4 Ich spreche ..., Sprechen Sie Englisch?, Sprichst du Deutsch?, Spanisch, Italienisch, auf Deutsch, Wie sagt man ... auf Deutsch?
- 3/5 Das ist ..., der Kurs, Ich bin neu.
- 4/1 er, sie (she), es, aber
- 4/2 wir, ihr, sie (they), alle
- 4/3 sein, ich bin, du bist, er/sie/es ist, kalt, warm, Mir ist kalt.
- 4/4 wir sind, ihr seid, sie sind / Sie sind, zusammen, da
- 4/5 Was ist das?, Wo ist ...?, Ich bin aus ..., toll
- 5/1 null, eins, zwei, drei, vier, fünf, sechs, sieben, acht, neun, zehn, elf, zwölf
- 5/2 dreizehn, vierzehn, fünfzehn, sechzehn, siebzehn, achtzehn, neunzehn, zwanzig
- 5/3 dreißig, vierzig, fünfzig, sechzig, siebzig, achtzig, neunzig, hundert
- 5/4 einundzwanzig, fünfundzwanzig, achtundvierzig, neunundneunzig
- 5/5 die Telefonnummer, die Nummer, das Handy, Wie ist deine Telefonnummer?, Wie ist Ihre Telefonnummer?, Meine Nummer ist ..., zwo, Noch einmal, bitte.
- 6/1 das Alphabet, der Buchstabe, the letter names
- 6/2 Wie schreibt man das?, Buchstabieren Sie bitte., der Familienname, der Nachname, A-Umlaut
- 6/3 Wie alt bist du?, Wie alt sind Sie?, Ich bin ... Jahre alt., das Alter
- 6/4 das Formular, der Wohnort, die Postleitzahl, die Hausnummer

## Words known from part 1

Everything in the running list above, and the terms in "Terms known from part 1".
