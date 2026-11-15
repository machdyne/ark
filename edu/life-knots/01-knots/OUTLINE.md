# Outline: Knots

Part `01-knots` of `life-knots`, Knots (ages 8+, class A): 4 units, 12 lessons. This file has no number, so learn ignores it. Each lesson has exactly the file name, objective and keywords below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears. `level = life`: no standard codes.

## Figures

The part's own procedures are in `lib/kn.scm`, every name starting with `kn-`:

- `kn-rope pts n` -- a rope through the first n control points: a thick ink outline with a white middle, later parts drawn over earlier ones.
- `kn-over pts i` -- lays piece i (the curve round point i) back on top, where the rope passes under it.
- `kn-tie pts stages overs s` -- a knot tied in steps (a `Step` slider), with a thin arrow for where the end goes next.

Built-in procedures that suit the part: `label`, `caption`, `arrow`, `line`, `rect`, `frame` (a post or a ring), `circle`.

Every crossing is drawn as the knot's standard diagrams show it (Ashley, *The Ashley Book of Knots*, 1944).

`kn-tie2 a aovers b stages bovers s` ties rope b in steps over rope a (the bends). Hitches on a rail are seen from the front: draw the parts of the rope that go behind first, then the rail (`rect` 'grey with a `frame`), then the front parts again with `kn-over`, last the one on top.

## Status (2026-11-15)

Written: 01-rope-basics (3), 02-bends/01-02, 03-hitches/01-02, 04-loops/03. Not yet written: `02-bends/03-fishermans-knot.md`, `03-hitches/03-taut-line-hitch.md`, `04-loops/01-bowline.md`, `04-loops/02-figure-eight-loop.md` -- each needs its figure's crossings worked out and checked against a standard diagram first. Note: the sheet bend's figure is the bowline's structure (rope 1's bight is the bowline's collar round the standing part); the figure-eight loop is the figure-eight knot's path drawn doubled.

## Words

- Ages 8+: short sentences (15 words or fewer where possible), "you", present tense, numbers as digits, inches with centimeters.
- Everyday words, not keywords: rope, string, end, knot, tie, untie, pull, post, ring, over, under.
- Do not name a knot before its lesson.
- Class A: no climbing, rescue or life-safety claims. Knots for climbing, or for lifting or holding a person, are learned from a qualified instructor.

## 01-rope-basics/ -- Rope basics and stoppers

Name the parts of a rope and the four kinds of knot, and tie the overhand and figure-eight stoppers.

1. `01-parts-of-a-rope.md` -- Name the working end, the standing part, a bight and a loop on a rope.  
   Keywords: "working end", "standing part", "bight", "loop (of rope)".
2. `02-kinds-of-knots.md` -- Tell a stopper, a bend, a hitch and a loop knot apart by what each one does.  
   Keywords: "stopper (knot)", "bend (knot)", "hitch", "loop knot".
3. `03-stopper-knots.md` -- Tie an overhand knot and a figure-eight knot, and say why the figure-eight is easier to untie.  
   Keywords: "overhand knot", "figure-eight knot", "jam (a knot)".

## 02-bends/ -- Bends

Join two ropes or two ends with the right bend, and know when a knot must not be used to join ropes.

1. `01-square-knot.md` -- Tie a square knot, tell it from a granny knot, and say why it must not join ropes that bear a load.  
   Keywords: "square knot", "granny knot", "binding knot".
2. `02-sheet-bend.md` -- Tie a sheet bend to join two ropes, even of different thickness.  
   Keywords: "sheet bend".
3. `03-fishermans-knot.md` -- Tie a fisherman's knot from two overhand knots to join two thin lines.  
   Keywords: "fisherman's knot".

## 03-hitches/ -- Hitches

Tie a rope to a post or a ring with the right hitch.

1. `01-clove-hitch.md` -- Tie a clove hitch round a post and say when it slips.  
   Keywords: "clove hitch".
2. `02-half-hitches.md` -- Tie a half hitch, two half hitches, and a round turn and two half hitches.  
   Keywords: "half hitch", "two half hitches", "round turn".
3. `03-taut-line-hitch.md` -- Tie a taut-line hitch and use it to tighten a line that can be adjusted.  
   Keywords: "taut-line hitch".

## 04-loops/ -- Loops

Tie a fixed loop or a loop that slips, and choose between them.

1. `01-bowline.md` -- Tie a bowline and say its strengths and its weakness.  
   Keywords: "bowline".
2. `02-figure-eight-loop.md` -- Tie a figure-eight loop and say when to choose it over a bowline.  
   Keywords: "figure-eight loop".
3. `03-slip-knot.md` -- Tie a slip knot and finish a tied parcel with half hitches.  
   Keywords: "slip knot".
