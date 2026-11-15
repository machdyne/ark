# Outline: Everyday German

Part `03-everyday` of `lang-de-1`, German 1: 6 units, 30 lessons. This
file has no number, so learn ignores it. Each lesson has exactly the
file name and objective below; the keywords are the terms it teaches,
each defined in bold in the step where it first appears. No
`(standards ...)` anywhere (the CEFR has no codes for single
objectives); each unit's `index.md` names the A1 abilities it serves.

## What this part takes as known

From part 1 (`01-first-words`): sounds and spelling, umlauts and ß,
typing them, greetings (Guten Morgen, Guten Tag, Guten Abend ...), du
and Sie, introductions as fixed phrases, the personal pronouns (ich, du,
er, sie, es, wir, ihr, sie, Sie) and sein, the numbers 0-100.

From part 2 (`02-sentences/OUTLINE.md`): regular present-tense verbs,
haben, the vowel-change verbs, verb second, yes/no and W-questions,
nouns and gender, der/die/das and ein/eine, plurals, nicht and kein
(with doch), mein/dein/Ihr, family and home, the weather (das Wetter,
kalt, warm, heiß, die Sonne, Mir ist kalt).

Terms used freely, as taught there: verb, infinitive, stem (of a verb),
ending (of a verb), conjugate, present tense, singular, plural, noun,
article, definite article, indefinite article, gender (of nouns),
masculine, feminine, neuter, compound noun, vowel, subject, question
word (part 2); umlaut, pronoun, personal pronoun, formal, informal
(part 1). Part 2 does **not** teach "nominative" or "case": this part
teaches them (01-accusative/01).

## Figures

Own procedures in `lib/de3.scm` only, every name starting with `de3-`
(at most 7 KB):

- `de3-clock` -- a clock face (the library's `clock-face`) with the time
  written under it in words.
- `de3-week` -- a row of the 7 days, Monday first, one picked out.
- `de3-month` -- a month as a calendar grid, Monday first, one day picked
  out.
- `de3-day` -- the parts of the day (Morgen ... Nacht) as bars on a line
  from 0 to 24 hours, with a time marked.

Built-in procedures that suit this part: `clock-face`, `label`,
`caption`. At most one clock a lesson. Most lessons need no figure;
conjugation tables are Markdown tables.

## Words and grammar this part may not use

German 2 (`lang-de-2`) teaches the dative, prepositions, the perfect,
separable verbs, adjective endings, the past of modals and subordinate
clauses. So: no perfect and no past at all (no gestern war); no
separable verbs (aufstehen, einkaufen, anrufen, fernsehen, anfangen,
mitkommen, einladen, aufräumen); no adjective endings (adjectives only
after sein or finden: "Der Rock ist schön"); no dative rules. A few fixed
phrases that hide a dative or a preposition are taught as phrases,
never analysed: am Montag, am ersten Mai, im Mai, im Sommer, um acht
Uhr, von ... bis, zu Hause, nach Hause, ins Kino, ins Konzert, ins
Bett, zum Frühstück, zu Abend essen, Herzlichen Glückwunsch zum
Geburtstag. Other prepositions in readings (mit, im Museum, auf dem
Tisch, in den Supermarkt) are glossed in brackets, at most three
glosses a reading.

Typed answers: strict accents, `ss` always accepted for ß, at most 8
`(accept ...)` forms (learn reads 8) each holding one answer.

## 01-accusative/ -- The accusative

Use the accusative for the object of a verb: den, einen, keinen, es
gibt, and the accusative pronouns.

1. `01-subject-and-object.md` -- Tell the subject from the object in a
   German sentence and change der to den for a masculine object.
   Keywords: "object (of a verb)", "case (of a noun)", "nominative",
   "accusative".
   New words: suchen, brauchen, kennen, der Stift (die Stifte), der Ball
   (die Bälle).
2. `02-einen-and-keinen.md` -- Use einen, keinen and meinen for a
   masculine object, and see that the other articles do not change.
   Keywords: (none new).
   New words: kaufen, der Pullover (die Pullover), die Jacke (die
   Jacken), die Hose (die Hosen), das Hemd (die Hemden), der Schuh (die
   Schuhe), das Kleid (die Kleider).
3. `03-es-gibt.md` -- Say what there is in a town with es gibt and the
   accusative.
   Keywords: (none new).
   New words: es gibt, der Park (die Parks), der Bahnhof (die
   Bahnhöfe), das Kino (die Kinos), die Bank (die Banken), der
   Supermarkt (die Supermärkte), das Restaurant (die Restaurants), das
   Museum (die Museen).
4. `04-haben-and-moechten.md` -- Use haben and möchten with an object
   in the accusative, and conjugate möchten.
   Keywords: (none new).
   New words: möchten, Hunger haben, Durst haben, die Zeit, das Geschenk
   (die Geschenke), das Eis.
5. `05-me-and-you.md` -- Use mich, dich, uns, euch and Sie as objects,
   and ask wen.
   Keywords: (none new).
   New words: wen, besuchen, lieben, die Party (die Partys).
6. `06-him-her-it.md` -- Use ihn, sie, es and sie for people and things,
   choosing by the noun's gender.
   Keywords: (none new).
   New words: Wie findest du ...?, interessant, langweilig, lustig, nett.

## 02-food-shopping/ -- Food, drink and shopping

Name food and drink, say what you like, ask what things cost, and buy
them at a market and in a café.

1. `01-food.md` -- Name everyday foods with their articles and plurals
   and say what you eat, with and without an article.
   Keywords: (none new).
   New words: das Brot (die Brote), das Brötchen (die Brötchen), der
   Käse, das Ei (die Eier), der Apfel (die Äpfel), das Obst, das
   Gemüse, das Fleisch.
2. `02-drinks-and-likes.md` -- Name drinks and meals and say what you
   like with mögen.
   Keywords: (none new).
   New words: trinken, der Kaffee, der Tee, das Wasser, die Milch, der
   Saft (die Säfte), mögen, das Frühstück, das Mittagessen, das
   Abendessen.
3. `03-prices.md` -- Read, write and say prices in euros with the
   decimal comma, and ask what something costs.
   Keywords: "decimal comma".
   New words: der Euro, der Cent, kosten, Was kostet ...?, teuer,
   billig, das Geld.
4. `04-at-the-market.md` -- Buy food at a market with quantities and the
   phrases of a shop.
   Keywords: (none new).
   New words: der Markt (die Märkte), der Laden (die Läden), das Kilo,
   der Liter, die Flasche (die Flaschen), die Tomate (die Tomaten), Ich
   hätte gern ..., Sonst noch etwas?
5. `05-in-the-cafe.md` -- Order in a café with Sie and pay the bill.
   Keywords: (none new).
   New words: das Café (die Cafés), das Stück (die Stücke), der Kuchen (die Kuchen), die Suppe
   (die Suppen), der Salat (die Salate), bestellen, bezahlen, die
   Rechnung (die Rechnungen), getrennt.

## 03-modal-verbs/ -- Modal verbs

Use the six modal verbs with an infinitive at the end of the sentence.

1. `01-koennen.md` -- Say what you can do with können and an infinitive
   at the end.
   Keywords: "modal verb".
   New words: können, kochen, malen, ein bisschen.
2. `02-muessen.md` -- Say what you have to do with müssen, and that muss
   nicht means "do not have to".
   Keywords: (none new).
   New words: müssen, heute, die Prüfung (die Prüfungen), üben.
3. `03-wollen-and-moechten.md` -- Say what you want with wollen and
   möchten plus an infinitive, and not mistake will for "will".
   Keywords: (none new).
   New words: wollen, der Film (die Filme), ins Kino gehen, das Konzert
   (die Konzerte).
4. `04-duerfen-und-sollen.md` -- Say what is allowed with dürfen and
   what someone should do with sollen, and that darf nicht means "must
   not".
   Keywords: (none new).
   New words: dürfen, sollen, man, parken, fotografieren, der Arzt (die
   Ärzte), die Ärztin (die Ärztinnen).
5. `05-modal-sentences.md` -- Build statements, questions and negatives
   with any of the six modal verbs.
   Keywords: (none new).
   New words: Lust haben, schade, klar.

## 04-time/ -- The time

Ask and tell the time on a clock and in 24-hour times, and say when
something happens.

1. `01-full-hours.md` -- Ask the time and say full hours with Uhr.
   Keywords: (none new).
   New words: die Uhr (die Uhren), Wie spät ist es?, Wie viel Uhr ist
   es?, die Stunde (die Stunden), die Minute (die Minuten).
2. `02-half-and-quarter.md` -- Say half and quarter hours: halb drei is
   2:30, Viertel nach, Viertel vor.
   Keywords: (none new).
   New words: halb, das Viertel, nach (with times), vor (with times).
3. `03-minutes.md` -- Say any time to five minutes on the clock, with
   nach, vor and halb.
   Keywords: (none new).
   New words: kurz vor, kurz nach, gleich.
4. `04-24-hour-times.md` -- Read and say 24-hour times and say when
   something happens with um.
   Keywords: (none new).
   New words: um (with times), wann, der Zug (die Züge), der Bus (die
   Busse), beginnen.
5. `05-parts-of-the-day.md` -- Name the parts of the day and use them
   with times.
   Keywords: (none new).
   New words: der Morgen, der Vormittag, der Mittag, der Nachmittag,
   der Abend, die Nacht, morgens, abends, heute Abend.

## 05-calendar/ -- Days, months and dates

Name the days, months and seasons, and say dates with ordinal numbers.

1. `01-days.md` -- Name the days of the week and say am Montag, montags,
   heute and morgen.
   Keywords: (none new).
   New words: der Tag (die Tage), die Woche (die Wochen), Montag,
   Dienstag, Mittwoch, Donnerstag, Freitag, Samstag, Sonntag, das
   Wochenende, morgen.
2. `02-months.md` -- Name the months and say im Mai.
   Keywords: (none new).
   New words: der Monat (die Monate), das Jahr (die Jahre), Januar to
   Dezember (12 cards).
3. `03-seasons.md` -- Name the seasons and say what the weather is like
   in each.
   Keywords: (none new).
   New words: die Jahreszeit (die Jahreszeiten), der Frühling, der
   Sommer, der Herbst, der Winter, Es regnet, Es schneit, der Grad.
4. `04-ordinal-numbers.md` -- Make the ordinal numbers and say today's
   date: Heute ist der erste Mai.
   Keywords: "ordinal number".
   New words: erste, zweite, dritte, siebte, achte, zwanzigste, Der
   Wievielte ist heute?, das Datum.
5. `05-birthdays-and-plans.md` -- Say when something happens with am
   ersten Mai, and make a plan for a day and a time.
   Keywords: (none new).
   New words: der Geburtstag (die Geburtstage), Herzlichen Glückwunsch,
   der Termin (die Termine), Das geht., frei.

## 06-my-day/ -- My day

Describe a day's routine with times, then review the part and read an
A1-style text.

1. `01-my-morning.md` -- Say what you do in the morning and when.
   Keywords: (none new).
   New words: frühstücken, duschen, die Schule (die Schulen), die
   Arbeit, zuerst, früh.
2. `02-afternoon-and-evening.md` -- Say what you do in the afternoon and
   evening and when you go to bed.
   Keywords: (none new).
   New words: nach Hause, zu Hause, ins Bett gehen, meistens, nie, spät,
   zu Abend essen.
3. `03-review.md` -- Use the accusative, modal verbs, prices and times
   together in short exchanges.
   Keywords: (none new).
   New words: (none).
4. `04-reading.md` -- Read short A1-style texts (a message, a notice, an
   advert) and find the facts in them.
   Keywords: (none new).
   New words: die Nachricht (die Nachrichten), geöffnet, geschlossen.

## Running vocabulary list (this part)

As written (the lists above, plus what the lessons added): 01/05 also
mich, dich, uns, euch (cards); 02/02 also trinken; 02/04 also Das ist
alles., Das macht ...; 02/05 also das Stück, Zusammen oder getrennt?;
04/05 also der Morgen and der Abend as nouns (known from the
greetings); 05/02 all twelve months as cards; 05/05 Herzlichen
Glückwunsch zum Geburtstag!; 06/02 also nie, zu Abend essen.

suchen, brauchen, kennen, der Stift, der Ball (01/01); kaufen, der
Pullover, die Jacke, die Hose, das Hemd, der Schuh, das Kleid (01/02);
es gibt, der Park, der Bahnhof, das Kino, die Bank, der Supermarkt, das
Restaurant, das Museum (01/03); möchten, Hunger haben, Durst haben, die
Zeit, das Geschenk, das Eis (01/04); wen, besuchen, lieben, die Party
(01/05); Wie findest du ...?, interessant, langweilig, lustig, nett
(01/06); das Brot, das Brötchen, der Käse, das Ei, der Apfel, das Obst,
das Gemüse, das Fleisch (02/01); der Kaffee, der Tee, das Wasser, die
Milch, der Saft, mögen, das Frühstück, das Mittagessen, das Abendessen
(02/02); der Euro, der Cent, kosten, Was kostet ...?, teuer, billig,
das Geld (02/03); der Markt, der Laden, das Kilo, der Liter, die
Flasche, die Tomate, Ich hätte gern ..., Sonst noch etwas? (02/04); das
Café, der Kuchen, die Suppe, der Salat, bestellen, bezahlen, die
Rechnung, getrennt (02/05); können, kochen, malen, ein bisschen
(03/01); müssen, heute, die Prüfung, üben (03/02); wollen, der Film,
ins Kino gehen, das Konzert (03/03); dürfen, sollen, man, parken,
fotografieren, der Arzt, die Ärztin (03/04); Lust haben, schade, klar
(03/05); die Uhr, Wie spät ist es?, Wie viel Uhr ist es?, die Stunde,
die Minute (04/01); halb, das Viertel, nach, vor (04/02); kurz vor,
kurz nach, gleich (04/03); um, wann, der Zug, der Bus, beginnen
(04/04); der Morgen, der Vormittag, der Mittag, der Nachmittag, der
Abend, die Nacht, morgens, abends, heute Abend (04/05); der Tag, die
Woche, Montag ... Sonntag, das Wochenende, morgen (05/01); der Monat,
das Jahr, Januar ... Dezember (05/02); die Jahreszeit, der Frühling,
der Sommer, der Herbst, der Winter, Es regnet, Es schneit, der Grad
(05/03); erste, zweite, dritte, siebte, achte, zwanzigste, Der
Wievielte ist heute?, das Datum (05/04); der Geburtstag, Herzlichen
Glückwunsch, der Termin, Das geht., frei (05/05); frühstücken, duschen,
die Schule, die Arbeit, zuerst, früh (06/01); nach Hause, zu Hause,
ins Bett gehen, meistens, spät (06/02); die Nachricht, geöffnet,
geschlossen (06/04).

## Words known from parts 1 and 2 (used, never taught here as new)

Part 2: spielen, lernen, machen, gehen, hören, schreiben, fragen, sagen,
singen, schwimmen, verstehen, bleiben, lachen, studieren, arbeiten,
finden, warten, antworten, tanzen, reisen, gern, oft, immer, viel,
zusammen, die Musik, der Fußball; das Buch, der Tisch, die Lampe, das
Haus, die Tür, das Fenster, der Mann, die Frau, das Kind, das Mädchen,
der Junge, die Stadt, der Computer, das Handy, die Tasche, der
Schlüssel, das Heft, die Zeitung, der Lehrer, die Lehrerin, der Freund,
die Freundin, der Student, die Studentin, die Übung, das Wörterbuch,
groß, klein, neu, schön, kaputt, hier, da; haben, das Auto, das
Fahrrad, die Katze, die Idee, das Problem, die Frage, fahren, schlafen,
laufen, nach, schnell, essen, sprechen, nehmen, vergessen, das Wort,
lesen, sehen, das Bild, die Geschichte, die E-Mail, das Spiel, das
Lied, die Hausaufgabe; der Nachbar, die Nachbarin, die Leute, der Hund,
das Tier, jetzt, dann, manchmal, natürlich, leider, die Gitarre, das
Klavier, Tennis, richtig, falsch, vielleicht, wer, wohin, das Hobby,
die Antwort, genau, wirklich, toll; die Blume, die Straße, das Foto,
der Baum, der Vogel, der Garten, das Dorf, der Berg, der See, das Meer,
wie viele, nicht, müde, krank, laut, leise, schwer, einfach, kein,
doch, das Radio, die Brille, das Haustier, das Wetter, die Sonne, kalt,
warm, heiß, Mir ist kalt; der Vater, die Mutter, die Eltern, der
Bruder, die Schwester, die Geschwister, der Sohn, die Tochter, die
Familie, die Großeltern, der Opa, die Oma, der Onkel, die Tante,
verheiratet, die Wohnung, das Zimmer, die Küche, das Bad, das
Schlafzimmer, das Wohnzimmer, der Balkon, das Bett, der Schrank, das
Sofa, der Stuhl, das Regal, hell, dunkel, ruhig, modern, praktisch.

Part 1 (`01-first-words/OUTLINE.md`, its running list): ja, nein, gut,
alt, jung, neu, schön, toll, und, oder, aber, auch, für, aus, wie, wo,
was, sehr, alle, da, zusammen, kalt, warm, Mir ist kalt, das Handy, der
Name, der Vorname, die Zahl, die Sprache, der Sport, der Urlaub, der
Kurs, das Land, das Büro, die Adresse, der Schüler, die Schülerin;
greetings (Hallo, Guten Morgen/Tag/Abend, Gute Nacht, Auf Wiedersehen,
Tschüss, Grüß Gott, Grüezi, Servus), Herr/Frau, Wie geht's?, bitte,
danke, Entschuldigung, Es tut mir leid, Kein Problem, Wie bitte?, Ich
heiße / komme aus / wohne in / spreche, Ich weiß, Viel Spaß, Viele
Grüße, sein, the personal pronouns, the numbers 0-100 (hundert), Ich
bin ... Jahre alt. Terms: vowel, consonant, umlaut, syllable, stress
(of a word), keyboard layout, dead key, formal, informal, pronoun,
personal pronoun.
