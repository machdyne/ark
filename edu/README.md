# Ark edu

Courses for **learn**, the lesson app of
[Zeitlos](https://github.com/machdyne/zeitlos): school (K-12), college,
languages and life skills, for offline computers. Every course is CC0
and names its authors.

**Write a course with your spare AI tokens:** pick one from the map,
send Claude (or your own agent) a two-line prompt, and it writes,
checks and fact-checks the course for you to submit. See
[CONTRIBUTING.md](CONTRIBUTING.md).

- [curriculum.md](curriculum.md) is the map the courses are written
  against: every course's place, level, units, review class and
  prerequisites. Written so far: `math-3`.
- The format, the checks and the app are Zeitlos's:
  [learn_format.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn_format.md)
  (the course format and the review classes),
  [learn_authoring.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn_authoring.md)
  (how to write one, and the rules from the first courses taken through
  on a board),
  [learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md)
  (the app and its packs).
- Courses about Zeitlos itself (`zeit-` ids) are not here: they change
  with the system and are the `edu-zeitlos` pack in the Zeitlos tree.

## Layout

```
edu/
  README.md          this
  CONTRIBUTING.md    how to write and submit a course
  curriculum.md      the map
  briefs/            what the agents that write and check a course follow
  lib/*.scm          optional: figure procedures every course of a pack can use
  <course-id>/       a course, exactly as learn reads it: course.cfg, index.md,
                     numbered parts, units and lessons (learn_format.md)
```

A course's folder name is its id from the map (`math-3`, `life-knots`)
and never changes once published.

## Packs

Zeitlos's `tools/learn/pack.py` builds the packs from a checkout of
this repo (the one `tools/ask` keeps, or `$ASK_CACHE/ark`). A recipe
in the Zeitlos tree names the courses:

```
repo   = ark https://github.com/machdyne/ark      # ref=<commit> to pin a release
source = @ark/edu
name   = edu
course = math-3
...
```

```
./tools/learn/pack.py build --update tools/learn/packs/edu.cfg
```

It runs `learncheck --release` and `terms.py` on every course, checks
every path against the card's filesystem, and writes the pack as the
card has it (`/opt/ark/<pack>/`), which `release/` ships.

## Before a course is added

The steps in `learn_authoring.md` (which [CONTRIBUTING.md](CONTRIBUTING.md)
and [briefs/](briefs/) carry out): an outline reviewed first; the
lessons; `learncheck` with no errors or warnings, `terms.py` with no
warnings, every step looked at in `tools/learn/preview`; an independent
fact-check; and a person's review (a qualified one for class B) in
`course.cfg`'s `reviewer` lines.
