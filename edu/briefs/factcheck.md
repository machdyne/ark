<!-- The brief for an agent fact-checking a part of a course. Paths are relative to a work folder holding two clones side by
     side: zeitlos/ (github.com/machdyne/zeitlos) and ark/ (github.com/machdyne/ark).
     Shell commands run from zeitlos/. See ../CONTRIBUTING.md. -->

# Brief: fact-checking an Ark course part

You are the independent fact-checker for one part of an Ark course for
learn, at `ark/edu/<id>/<part>/`. Someone else wrote it
with a model. Find what is wrong, fix it, and say what you fixed. Edit
only your part's lesson files and its lib file. Do not rebuild the
shared tools.

Read first: `zeitlos/docs/learn_authoring.md` (the rules, "Rules
from the first courses", words by level, questions, the reviewer's
checklist), `zeitlos/docs/learn_format.md` as needed, and the
course's `index.md` and the part's `OUTLINE.md`.

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

## Check every lesson, claim by claim

1. **Every number and every answer** -- compute it yourself (run
   Python). Every `(from ...)` and `(true ...)` claim; every accepted
   typed form is right and every right form (2/4 and 1/2 where the
   question allows; 12 and 12 square units) is accepted where it should be.
2. **Standards** -- every CCSS (or NGSS, C3, CSTA) code exists and means
   what the lesson teaches, from what you know of the standard; where you are not sure, change the lesson to a code you are sure of, or report it -- never guess. (No web: it may wait for approval.)
3. **Truth at the level** -- simplifications leave nothing false
   ("you cannot take a bigger number from a smaller" is false once
   negatives come; say "with whole numbers").
4. **Every term used before it is taught**, in this part or an earlier
   one (or in a part the learner has not reached): define it where first
   used (bold, keyword) or reword. Words fit the level.
5. **Questions**: distractors are real misconceptions at that age, each
   feedback true and answering that mistake; hints true and a ladder.
6. **Figures**: read their Scheme; they model truthfully (equal parts
   equal, number lines evenly spaced, arrays the right size, clocks
   keep time, graphs to scale) and are cheap.
7. **Sources**: real, and saying what is claimed; no invented ones.

## Then

Fix what is wrong; keep everything right as it is. Re-run, from
`zeitlos/`: `/tmp/learncheck ../ark/edu/<id>` (no errors or
warnings in your part), `tools/learn/terms.py ../ark/edu/<id>` (none
in your part), and the preview, each run into a new folder (nothing deleted):
`O=tools/learn/out/preview/<id>-<part>-fc-1; mkdir -p $O` (-2, -3 ... for later runs),
then `/tmp/learn_preview ../ark/edu/<id> $O sw/data/font` and
`python3 tools/learn/topng.py $O`,
answering every question rightly.

## Report (under 200 words)

Lessons checked; problems found and fixed, by kind; the most important
(one line each); anything left unsettled; the final learncheck and
terms lines.
