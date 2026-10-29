<!-- The brief for an agent writing (part of) a course. Paths are relative to a work folder holding two clones side by
     side: zeitlos/ (github.com/machdyne/zeitlos) and ark/ (github.com/machdyne/ark).
     Shell commands run from zeitlos/. See ../CONTRIBUTING.md. -->

# Brief: writing an Ark edu course for learn

You are writing (part of) one course of the Ark's education library for
**learn**, the lesson app of Zeitlos, an FPGA computer and its operating
system. The Zeitlos tree is `zeitlos` (the app, its docs and the
tools). The Ark's courses live in the Ark repo checkout:
`ark/edu/<course-id>/`. They are built into packs by
`zeitlos/tools/learn/pack.py` and read from the card by learn on
a 50 MHz board with a 640x480 mono window.

Other authors write other courses, or other parts of yours, at the
same time. **Write only inside the folders your assignment names.** Do
not edit `zeitlos` at all, nor `ark/edu/lib/`, nor other
courses or parts. Do not rebuild the shared tools (`/tmp/learncheck`,
`/tmp/learn_preview`); just run them.

## Nothing may wait for approval

This may run with nobody watching (overnight, in the background). A
command that needs approval then waits for ever -- the first night run
of math-3 lost three hours to `rm -rf` in a preview command. So:

- **Never delete anything**: no `rm`, `rmdir`, `rm -rf`, `find -delete`,
  `git clean`, `mv` over an existing file. Make a new file or folder
  instead (a new name with the time in it).
- **Write and change files with the Write and Edit tools**, not shell
  redirection into existing files (`>`, `sed -i`, `tee`).
- **Use the shell only to run** `/tmp/learncheck`, `tools/learn/terms.py`,
  `/tmp/learn_preview`, `python3 tools/learn/topng.py`, and `python3`
  for arithmetic or reading files -- with no `sudo`, no installs, no
  network (`curl`, `git`, `pip`, web fetches), no `$(...)`, and no `&&`
  chains that start with anything else.
- Never ask a question; take the most reasonable reading and say so in
  your report.

## Read first, all of it, before writing

1. `zeitlos/docs/learn_authoring.md` -- the three rules, **"Rules
   from the first courses"**, the lesson shape, questions, words by
   level, figures, accuracy, the checklist.
2. `zeitlos/docs/learn_format.md` -- the format, exactly.
3. `zeitlos/docs/learn_figures.md` -- figures and the library.
4. `ark/edu/curriculum.md` -- the map: your course's row, its
   neighbours (what comes before and after it). Review classes:
   `zeitlos/docs/learn_format.md`, "Review classes".
5. A finished Ark course as a model: `ark/edu/math-3/` (outline
   files `*/OUTLINE.md`, lessons, `lib/`).
6. Model lessons (house style, tested on a board):
   `zeitlos/sw/data/learn/edu-zeitlos/zeit-tc/03-information/*.md`
   and `lib/bits.scm`, and `zeit-learn/`.
7. Your outline, if your assignment gives one: follow it exactly (unit
   and lesson file names, objectives, standards).

## What learn can do today (do not go beyond it)

- Questions: `choice` (one or several right), `number`, `fraction`,
  `text`. No order, match or point questions. One or two checks a step;
  they are answered in order.
- `example` (worked, step by step, then faded), `note`, `warn`, `say`,
  `sources`, `cards`, `try` (an Open button starts the Zeitlos app it names).
- Links: `lesson:`, `course:`, `docs:page`, `https:` (warned).
- **No pictures and no recordings yet.** Everything visual is a figure
  drawn in Scheme (number lines, fraction bars, shapes, graphs, clocks,
  diagrams with labels), or words. Where only a photograph would do,
  describe in words and leave the picture out; do not write image
  references.
- Figures: 320 x 240 units, sliders, toggles, choices, points to drag,
  animation; the built-in library in learn_figures.md. A course may
  have its own `lib/*.scm` (24 KB for all of a course's lib files
  together); if several authors share a course, each uses only the lib
  file the assignment names, with the prefix it names.
- Limits: a lesson file 48 KB, 32 steps, 160 blocks.
- A `(unit "cm")` after an answer box, and choice answers that wrap to
  two lines, fit beside a figure (learn fixed both on 2026-10-29: do not
  work round them).
- Decimals in typed answers: accept every right way of writing them
  (`0.5`, `.5`, `1/2` where the question allows); state the rounding
  the question wants ("to the nearest tenth") and accept that answer.
- Learner keys: Space/Enter next or check, Backspace back, 1-6 choose,
  F5 hint (works while typing), F6 read aloud, F7 report a mistake,
  Esc leave, Left/Right a figure's control.
- Text: Latin-9 only (accented Latin letters, the euro sign; curly
  quotes and dashes are drawn plain). Symbols, Greek letters, times
  arrows: in formulas (`$3 * 4$` is drawn as a times sign; `÷`,
  `alpha`, `sqrt(x)`... see the format's Formulas section) or words.

## The rules that matter most

- **True at the level stated.** Every claim right for every
  English-speaking learner; a simplification leaves nothing false.
  Sources for everything beyond common knowledge at the level, in
  `sources` blocks: standard references, government publications,
  primary texts. **Never invent a source, quotation, statistic, date or
  name.** If unsure, leave the claim out. The final files contain no
  `CHECK` notes.
- **No term before it is taught.** Every lesson lists the terms of art
  it teaches in `(keywords ...)` and defines each **in bold** in the
  step where it first appears; terms from earlier lessons or from the
  courses in `needs` can be used freely. An everyday word used as a
  term gets a bracketed note: `"product (of numbers)"`.
- **Words for the level** (learn_authoring.md, "Words"): sentence and
  word limits by grade, US spelling and units (metric alongside in
  science), numbers as digits, "you", present tense.
- **Standards.** Each unit's `index.md` and each lesson's `lesson`
  block carry the standard codes it covers, `(standards "3.NF.A.1")`,
  from the framework the map names (CCSS, NGSS, C3, CSTA). Use only
  codes that exist, with the meaning they have.
- **Questions**: retrieval over recognition; distractors are real
  misconceptions at that age, each with feedback that answers the
  mistake (2-3 sentences); a ladder of hints; `(from ...)` on every
  computed number and `(true ...)` claims on arithmetic; typed answers
  accept every right way of writing them (`1/2` and `2/4` only where
  the question allows; `0.5`; units optional when the question gives
  them).
- **Figures** where they help; black and white with patterns and
  labels; modelling the idea truthfully (a fraction bar's parts are
  equal; a clock keeps time; a graph is to scale); cheap per frame.
- **Class B** content (safety): a `warn` block before the step that
  needs it, saying what can go wrong and what to do instead. **Class D**
  (contested): the strongest form of each main position, attributed,
  without choosing for the learner.
- **Lesson shape**: the point (first sentence), teach in small steps
  each with a check, a worked example then one to finish, practice of
  3-6 questions mixed, a one-sentence close. 15-30 minutes; about 6-10
  steps.

## Checks (run from the `zeitlos/` folder)

- `/tmp/learncheck ../ark/edu/<id>` -- 0 errors, 0 warnings (a
  warning about another author's part is theirs).
- `tools/learn/terms.py ../ark/edu/<id>` -- no warnings in your
  files.
- Preview:
  ```
  O=tools/learn/out/preview/<id>-<part>-1; mkdir -p $O      (then -2, -3, ... for each later run)
  /tmp/learn_preview ../ark/edu/<id> $O sw/data/font
  python3 tools/learn/topng.py $O
  ```
  (It previews the whole course; with several authors at work, other
  parts may be half-written: only your lessons' results matter.) Every
  question must be answered rightly. **Look at** (Read) the PNG of
  every step with a figure and at least one step of every lesson; fix
  words that run past a figure, overlapping labels, cut-off text, a
  figure that does not show what the step says.
- Then reread each lesson claim by claim against its sources and fix.

## Report (under 250 words)

Folders written and lesson count; the learncheck summary line; terms.py
warnings left (none); the preview line for your part; anything you
were unsure of or left out; any term you rely on from a course in
`needs`.
