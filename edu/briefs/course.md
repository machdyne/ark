<!-- The brief a contributor's agent follows to write one whole course.
     Contributors paste the short prompt in ../CONTRIBUTING.md, which
     names COURSE-ID and YOUR-NAME and links here. -->

# Brief: writing a whole Ark course

You have been asked to write one course for the Ark's education
library, for **learn**, the lesson app of Zeitlos. Your user gave you
two things: the course id (**COURSE-ID** below) and the name to credit
(**YOUR-NAME**). Credit the course to YOUR-NAME and to yourself (your
model's name) in its `course.cfg`. If either is missing, ask once
before you begin.

Work in an empty folder. Each step below is short; the details are in
the three briefs it names, which hold every rule -- follow them exactly.

1. **Setup.** In the folder where you cloned the Ark (so that `ark/` is
   there; clone it now if not), get the Zeitlos tree, which has the
   format's docs and the checking tools, and build the tools:

   ```
   git clone https://github.com/machdyne/zeitlos
   cd zeitlos
   git submodule update --init sw/ext/ms     # Machdyne Scheme: figures run in it
   make -C tools/learn/learncheck            # builds /tmp/learncheck
   make -C tools/learn/preview               # builds /tmp/learn_preview
   ```

   It needs `git`, a C compiler, `make` and Python 3 with Pillow. In a
   cloud workspace, install what is missing yourself if you can
   (`pip install pillow`); on your user's computer, tell them what to
   install. Then read
   `ark/edu/CONTRIBUTING.md` and the three briefs next to this one
   (`outline.md`, `author.md`, `factcheck.md`). Paths in them are
   relative to the folder holding `zeitlos/` and `ark/`; shell commands
   run from `zeitlos/`.

2. Check that COURSE-ID is in ../ark/edu/curriculum.md and not already
   in ../ark/edu/. If it is there already, stop and tell your user.

3. Outline: following briefs/outline.md, write ../ark/edu/COURSE-ID/
   course.cfg, index.md, the part and unit folders with their index.md,
   and an OUTLINE.md per part. Show your user the outline (parts, units,
   lesson counts) before writing lessons, unless they said to go straight
   on.

4. Lessons: for each part, start one author (a sub-agent if you can,
   all parts in parallel, at most 4 at a time) with briefs/author.md,
   the course id, its part folder and its lib file and prefix from the
   OUTLINE.md. Each writes every lesson of its part, runs the checks
   after each unit, and reports.

5. Fact-check: for each finished part, a SEPARATE agent (a fresh
   sub-agent, never the part's author) with briefs/factcheck.md, the
   course id, the part and its lib file. It fixes what is wrong and
   reports. If you cannot start sub-agents, do this yourself only after
   clearing your context of the writing (a new session), lesson by
   lesson.

6. Final checks, from zeitlos/: /tmp/learncheck ../ark/edu/COURSE-ID
   must show 0 errors and 0 warnings; tools/learn/terms.py
   ../ark/edu/COURSE-ID must show 0 warnings; the preview (see
   briefs/author.md) must answer every question rightly. Look at the
   pictures of a sample of steps with figures.

7. Hand-in. Write a report: lessons per part; the fact-checks'
   findings by kind; the three check lines; anything you were unsure
   of or left out; tokens used. Then, whichever fits where you work:
   - **On your user's computer, with git:** in `ark/`, make a branch
     `course/COURSE-ID`, commit only `edu/COURSE-ID/` (no other file)
     with the report as the commit message. If `gh` is set up and your
     user has a fork, push the branch there and open a pull request to
     machdyne/ark titled "Course: COURSE-ID" with the report as its
     body; otherwise tell them the commands.
   - **In a cloud workspace (the Claude app) or without push access:**
     zip `edu/COURSE-ID/` from inside `ark/`, so the zip unzips at the
     Ark root, and give your user the file and the report. Tell them:
     unzip it in their clone of the Ark and open a pull request titled
     "Course: COURSE-ID" with the report, or attach the zip and the
     report to their `Course: COURSE-ID` issue on machdyne/ark.

Never invent a source, a quotation, a statistic or a standard code;
when unsure, leave the claim out. Never delete files you did not make.
