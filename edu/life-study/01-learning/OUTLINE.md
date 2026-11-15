# Outline: Learning

Part `01-learning` of `life-study`, Learning How to Learn: 4 units, 18 lessons. This file has no number, so learn ignores it. Each lesson uses exactly the file name and objective below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. The course is a Life course (`level = life`, class A): no standard codes.

Every lesson ends with something to do this week. Where a lesson's idea is one learn uses, the lesson says what learn does, exactly as `zeitlos/docs/learn.md` and the source (`sw/apps/learn/lstep.c`, `lreview.c`) say:

- a lesson can start with a **warm-up** of up to 3 questions from its course that are due (Esc skips it);
- a question gets two tries (one for a choice of two), with feedback on each wrong answer, then the answer is shown;
- up to 3 hints (F5); a question answered after a hint, or missed, goes back to box 1 and comes back the next day;
- review is **5 Leitner boxes**: a question right the first time without a hint goes up a box and comes back after 1, 3, 7, 16 or 35 days by box; a new question answered right starts in box 2;
- **R** on the home screen reviews up to 20 questions, the longest-waiting first, courses taken in turn (mixed), each question alone without the teaching words, its choices in another order;
- F8 skips a question; it does not come back in review;
- `cards` blocks are shown in a lesson as a "To remember" list; they do not go into review yet (do not say they do).

## Evidence

Only what the research supports, at the strength it supports it. Sources (addendum): Dunlosky et al. (2013), Roediger & Karpicke (2006), Cepeda et al. (2006), Rohrer & Taylor (2007), Pashler et al. (2008), Brown, Roediger & McDaniel (2014), Paruthi et al. (2016). Also, where needed and sure: Ebbinghaus (1885) for the forgetting curve; Leitner (1972) for the boxes; Diekelmann and Born (2010), *Nature Reviews Neuroscience*, for sleep and memory; Monsell (2003), *Trends in Cognitive Sciences*, for the cost of switching tasks; Pauk, *How to Study in College*, for the question column. No effect sizes or percentages. A forgetting curve is always labelled a sketch, not data.

## Figures

Figure procedures go in `lib/st.scm`, every name starting with `st-` (under 7 KB):

- `st-curve` -- a sketched forgetting curve (memory against time), optionally with reviews that lift it and make it fall more slowly;
- `st-days` -- a row of days with study sessions marked, for massed and spaced plans;
- `st-seq` -- a row of practice problems as lettered boxes, blocked or mixed;
- `st-boxes` -- 5 Leitner boxes with their gaps in days.

Built-in procedures that suit the part: `bar-chart`, `graph`, `graph-axes`, `plot`, `label`, `caption`, `grid`.

## Words

- Grade 5-6 readers: sentences of 15-20 words at most, everyday words, "you", present tense, numbers as digits; US spelling, with both units where any appear.
- Do not use "spacing", "interleaving" or "consolidation" before the lesson that teaches them; before unit 2 say "spread out" and "mixed" only in their everyday sense.
- Terms of the course: retrieval practice, testing effect, forgetting curve, illusion of knowing, desirable difficulty, spaced practice, massed practice, interleaving, blocked practice, Leitner box, consolidation, switch cost, learning styles, elaborative interrogation, self-explanation.

## 01-memory/ -- Remembering

Explain why testing yourself helps you remember more than reading again, and test yourself in several ways.

1. `01-forgetting.md` -- Explain that memories fade without use, and that bringing them back slows the fading.  
   Keywords: "forgetting curve", "review (of what you learned)".
2. `02-feeling-and-knowing.md` -- Explain why rereading and highlighting feel like learning but help less than they seem to.  
   Keywords: "illusion of knowing".
3. `03-retrieval.md` -- Explain retrieval practice and what the testing effect experiment found.  
   Keywords: "retrieval practice", "testing effect".
4. `04-test-yourself.md` -- Use flashcards, a blank page and practice questions to test yourself, checking each answer.  
   Keywords: "flashcard", "free recall".
5. `05-hard-is-good.md` -- Explain why effort and mistakes, followed by feedback, help learning.  
   Keywords: "desirable difficulty", "feedback (on an answer)".

## 02-spacing-mixing/ -- Spacing and mixing

Spread practice out over days and mix kinds of problems, and plan reviews that do both.

1. `01-spacing.md` -- Explain why practice spread over days beats the same practice all at once.  
   Keywords: "spaced practice", "massed practice".
2. `02-gaps.md` -- Choose gaps between reviews that suit how long you need to remember.  
   Keywords: (none new).
3. `03-mixing.md` -- Explain what the mixed math practice experiment found, and why mixing helps.  
   Keywords: "interleaving", "blocked practice".
4. `04-what-to-mix.md` -- Choose what to mix: kinds of problems you must learn to tell apart.  
   Keywords: (none new).
5. `05-boxes.md` -- Run a set of Leitner boxes, on paper or in learn's review.  
   Keywords: "Leitner box".

## 03-mind/ -- Sleep and attention

Protect sleep and attention, and tell the evidence from three popular study myths.

1. `01-sleep.md` -- Say how much sleep people your age need and why sleep matters for memory.  
   Keywords: "consolidation (of memory)".
2. `02-all-nighters.md` -- Explain why staying up late to cram costs more than it gains.  
   Keywords: (none new).
3. `03-one-thing.md` -- Explain why doing two things at once makes your work slower and less accurate.  
   Keywords: "multitasking", "switch cost".
4. `04-learning-styles.md` -- Explain what research found about learning styles.  
   Keywords: "learning styles".

## 04-plan/ -- Notes, tests and a plan

Take notes you can test yourself on, prepare for a test, and make a study plan.

1. `01-notes.md` -- Take notes in your own words and turn them into questions.  
   Keywords: (none new).
2. `02-asking-why.md` -- Ask yourself why a fact is true, and explain each step of a worked example.  
   Keywords: "elaborative interrogation", "self-explanation".
3. `03-tests.md` -- Prepare for a test with a plan that starts early and uses practice tests.  
   Keywords: (none new).
4. `04-your-plan.md` -- Make a study plan for a week that uses retrieval, spacing, mixing and sleep.  
   Keywords: (none new).
