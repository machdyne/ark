# Contributing a course

The Ark's education library is a curriculum of about 160 courses and
11,600 lessons -- kindergarten to college, languages and life skills --
for **learn**, the lesson app of [Zeitlos](https://github.com/machdyne/zeitlos),
an open computer meant to keep working offline for decades. Every
course is free (CC0) and runs on a 50 MHz FPGA computer with a
one-bit 640x480 screen.

**Not only on Zeitlos.** We plan a cross-platform version of learn, so
the same courses will run on ordinary computers, tablets and phones,
offline as well. A course is plain files -- Markdown words, questions as
data, figures as small Scheme programs -- not tied to one machine, so
what you write now will reach those devices too. Writing for the
smallest machine is what keeps the courses light and readable
everywhere: no pictures that need a fast connection, nothing that needs
colour to make sense, figures that run on a slow processor.

That is far too much writing for one person. If you have an AI coding
agent (Claude Code, or another that can read files, run commands and
start sub-agents) and tokens to spare, you can write a course: you
pick one from the map, paste the prompt below, and the agent writes,
checks and fact-checks it the way the courses here were made. A person
then reviews it before it ships.

## How a course is made

1. **The map** ([curriculum.md](curriculum.md)) says what every course
   is: its id, level, units, standards and review class.
2. **An outline** ([briefs/outline.md](briefs/outline.md)): parts of
   about 40 lessons, units, and every lesson's file name, objective,
   standard codes and the terms it teaches.
3. **The lessons**, a part at a time, by an author agent each
   ([briefs/author.md](briefs/author.md)), in learn's format: Markdown
   words, questions as data, figures in Scheme.
4. **A fact-check** of every part by a separate agent that did not
   write it ([briefs/factcheck.md](briefs/factcheck.md)): every number,
   every answer, every standard code, every figure.
5. **The checks** from the Zeitlos tree: `learncheck` (the format and
   every figure, run as learn runs it), `terms.py` (no word used before
   it is taught) and `preview` (every step drawn as learn draws it,
   every question answered through the keys).
6. **A pull request** to this repo, with the agent's report.
7. **A human review** before the course ships. Class B courses (safety:
   first aid, survival, electricity...) also need a qualified reviewer.

`ark/edu/math-3/` is a finished example: 131 lessons, written and
fact-checked in one night, about 1.75 million tokens.

## Choosing a course

- Pick a course from [curriculum.md](curriculum.md) that is **not**
  already in `edu/`, and has no open issue or pull request on
  github.com/machdyne/ark.
- **Claim it**: open an issue titled `Course: <id>` (`Course: math-4`),
  so nobody else starts it. Close it if you give up.
- Good choices now: class A courses that need nothing learn cannot yet
  show -- mathematics, the computing track (`cs-`), physical science,
  `life-` courses of class A.
- **Not yet**: courses that need pictures or recordings (marked `img`
  or `audio` in the map: anatomy, art, music, languages), courses for
  the youngest (K-2, which need learn's screen face), and class B or D
  courses, unless a qualified reviewer (class B) or several reviewers
  (class D) are lined up first -- say so in the issue.

## What it costs

About **13,000 tokens a lesson**, written and fact-checked: a 50-lesson
course is roughly 0.7 million tokens, a 140-lesson one roughly 2
million. With sub-agents working on the parts in parallel, a large
course takes one to two hours.

## Two ways to do it

**In the Claude app (web, desktop or mobile): nothing to install.** Claude
works in its own cloud workspace, where it can clone the repos, build
the checking tools and run them. Paste the prompt below into a new
chat. At the end it hands you a zip of the course: unzip it in your
clone of the Ark (it holds `edu/COURSE-ID/`) and open a pull request,
or, without git, attach the zip to your `Course: COURSE-ID` issue and
a maintainer brings it in. This needs a plan whose chats can run code
and reach GitHub; a course takes a long conversation, so a plan with
generous usage helps (see "What it costs").

**With an agent on your own computer** (Claude Code, or another agent
that runs commands and edits files). It works in a folder on your
machine, which needs `git`, a C compiler (`cc`), `make` and Python 3
with Pillow (`pip install pillow`) on Linux or macOS. With your fork
of github.com/machdyne/ark and `gh` (GitHub CLI) set up, it can open
the pull request itself.

Either way the agent works best when it can start sub-agents, so the
parts are written in parallel and each fact-check is done by an agent
that did not write the part. Without them, the brief has it work in
sequence and start fresh for the fact-checks.

## The prompt

Send this to Claude (a new chat) or your agent (started in an empty
folder), with your choice of course and your name filled in:

```text
Clone https://github.com/machdyne/ark and follow edu/briefs/course.md in it
to write the Ark course COURSE-ID, credited to YOUR-NAME.
```

That brief does the rest: it fetches the Zeitlos tree for the checking
tools, writes the outline and shows it to you, has the parts written
and fact-checked by separate agents, runs the checks, and hands in the course
with a report: as a pull request, or as a zip for you to unzip in your
Ark clone. Everything it follows is in
[briefs/](briefs/): `course.md` (the steps), `outline.md`, `author.md`
and `factcheck.md` (the rules).

## After the pull request

A maintainer runs the checks again, reads the report, and reviews the
course as a learner would (the checklist in Zeitlos's
`docs/learn_authoring.md`). Fixes may be asked for; the agent that
wrote it can make them with the same briefs. Once reviewed, the
reviewer's line goes into `course.cfg` and the course goes into a
pack (Zeitlos's `tools/learn/packs/edu.cfg`), and from there onto
every Zeitlos computer that has the Courses set.

By contributing you agree that your course is released under CC0
(public domain), like everything in `edu/`, and that it contains no
text copied from copyrighted sources.

## Questions and problems

Open an issue on github.com/machdyne/ark. If learn itself gets
something wrong -- a figure that will not draw, a layout that cuts
words off, a check that refuses a right answer -- say so in your
report: those are bugs in learn, and fixing them helps every course.
