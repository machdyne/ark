<!-- The brief for an agent writing a course's outline. Paths are relative to a work folder holding two clones side by
     side: zeitlos/ (github.com/machdyne/zeitlos) and ark/ (github.com/machdyne/ark).
     Shell commands run from zeitlos/. See ../CONTRIBUTING.md. -->

# Brief: the outline of an Ark course

You write the **outline** of one course, nothing more: the plan that
part authors then write lessons from, in parallel. A wrong outline is
the most expensive mistake, so take care.

Read first: `briefs/author.md` (what learn can do, the rules), the
course's row in `ark/edu/curriculum.md` and its neighbours (what comes
before and after it), `zeitlos/docs/learn_format.md` (course.cfg,
parts, units, review classes) and `zeitlos/docs/learn_authoring.md`.
The model to copy is `ark/edu/math-3/`: its `course.cfg`, `index.md`,
part and unit `index.md` files and each part's `OUTLINE.md`.

Write in `ark/edu/<id>/`:

- `course.cfg`: id, title, level, area, class (the map's), subject,
  ages, lang en, license CC0-1.0, version 1, format 1, standards, a
  summary, `author = ` your name and `author = ` the model's name
  ("Claude (Anthropic model)"); `needs` only for courses that exist in
  `ark/edu/` already -- otherwise say in `index.md` what the learner
  should know first.
- `index.md`: the course's title, two or three sentences on what it
  teaches, and what the learner should already know.
- **Parts** of about 40-45 lessons each (2-4 parts for a 100-160 lesson
  course; a course under 50 lessons can have units only), so that one
  author can write a part in one sitting. Each part's folder has an
  `index.md` (title) and its numbered **unit** folders, each with an
  `index.md`: title, a one-sentence objective, and its standard codes.
- One `OUTLINE.md` per part (no number, so learn ignores it), listing
  every lesson as its numbered file name (`01-equal-groups.md`) with a
  one-sentence objective, its standard code(s), and the terms it
  teaches (its keywords). Say in it which `lib/<prefix>.scm` file and
  prefix the part's author uses for figure procedures (one file per
  part, at most 7 KB), which of learn's built-in figure procedures
  suit the part (`zeitlos/docs/learn_figures.md`, "The library"), and
  which words a part may not use because a later part teaches them.

Lessons are 15-30 minutes. Follow the order of the standards where they
give one; every term is taught before it is used, across parts. Use
only standard codes that exist, with the meaning they have. Do not write
lessons. `/tmp/learncheck ../ark/edu/<id>` will warn about empty units;
that is expected. Report in under 150 words: parts, units, lesson
counts.
