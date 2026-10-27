# learn: the curriculum map

*Draft 1, 2026-10-26. A plan, not content. The courses are for
**learn**, the lesson app of [Zeitlos](https://github.com/machdyne/zeitlos):
its design ([learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md)), the course format
([learn_format.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn_format.md)) and the authoring guide
([learn_authoring.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn_authoring.md)) live there; the courses and this
map live here, in the Ark (`edu/`, see [README.md](README.md)).*

This is the map that courses are written against, by people and by
models. It exists so that thousands of lessons, written at different
times by different authors, land in one coherent school rather than a
pile: every course has a place, a level, prerequisites, a list of units
and a review class before its first lesson is drafted. It is also the
list from which the first courses will be chosen (see the end).

All courses are for English speakers to begin with; courses in other
languages come later and get maps of their own. Every course is CC0
and names its authors.

## How to read the map

**Course ids** are `area-level-name` and never change once published:
`math-3` (grade 3 math), `sci-hs-phys` (high school physics),
`col-calc1`, `life-survival`, `lang-ja-1`, `zeit-start`. A course's
folder has the same name: `edu/<course-id>/` here. The `zeit-` courses
are not in this map's packs: they teach Zeitlos itself, change with it,
and are the `edu-zeitlos` pack in the Zeitlos tree (below).

**Courses, parts, units, lessons.** A year-long school course is
divided into **parts** of a few weeks each -- grade 3 math's fractions
are one part (`math-3/fractions`), with six units of its own -- so a
learner works on, and the home screen shows, a part at a time. Shorter
courses (most of Life, Languages and Using Zeitlos) have units only.
The units column below lists a course's parts, or its units where it
has no parts.

**Levels**: `K`, `1`..`12` (US grades; ages are grade + 5 or 6),
`ms` (grades 6-8), `hs` (grades 9-12), `col` (first and second year
of college), `life` and `zeit` (any age; each course gives its own
minimum age).

**Lessons** are estimates. A lesson is 15-30 minutes: one objective,
a warm-up from review, a few teaching steps each followed by a check,
practice, and a closing check. A school year is roughly 140 lessons a
subject.

**Standards.** School courses are aligned with the US frameworks most
American schools and home-schoolers use -- Common Core State Standards
for math and English (CCSS), the Next Generation Science Standards
(NGSS), the C3 framework for social studies and the CSTA standards for
computing -- so that a parent or teacher can map a course onto what a
school expects. Each unit carries its standard codes
(`3.NF.A.3d`). Alignment is a tag, not a dependency: the content is
written to be right for any English-speaking learner, and other
countries' frameworks can be tagged later.

**Review class** -- how a course is checked before it is marked
reviewed (details in [learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md#accuracy)):

| Class | Kind of content | Before it is marked reviewed |
|---|---|---|
| **A** | Settled knowledge, low harm if misread: arithmetic, grammar, most science | mechanical checks, an independent fact-check of every claim, a human review |
| **B** | Safety-critical: first aid, survival, health, food safety, electricity, chemistry done at home, money and law | as A, plus review by a qualified person (an EMT for first aid, a wilderness instructor for survival...). **Not shipped before that review.** |
| **C** | Time-sensitive: laws, tax rules, medical guidelines, statistics about the present | as A or B, every such claim dated ("as of 2026") and sourced, and re-reviewed on a schedule |
| **D** | Contested or value-laden: recent history, politics, ethics, religion in history | as A, with competing views presented fairly and sourced, reviewed by more than one reviewer |

A course can be several classes (`B, C`). Courses touching puberty,
sexual health or drugs are also marked **parent opt-in**: hidden from a
learner profile unless the parent turns them on.

**Uses** names the Zeitlos apps a course launches beside its lessons
(`try` steps, [learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md#the-lesson-format)), and **media** what
it needs beyond drawn figures: `img` (photographs or plates, from
public-domain or CC0 sources), `audio` (recorded speech or music),
`map`.

## The size of it

| Area | Courses | Lessons (estimate) |
|---|---|---|
| School, K-12 | 76 | 7,530 |
| College | 49 | 2,500 |
| Languages | 4 (+ later levels) | 360 |
| Life | 32 | 950 |
| Using Zeitlos | 12 | 230 |
| **Total** | **173** | **about 11,600** |

At 5-10 KB a lesson (text, questions and figures written as Scheme,
see [learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md)), that is 60-120 MB before pictures and
recordings -- an ordinary microSD card, in the same tier as Ark Medium.
Most of the work is not storage but **writing and review**: the
accuracy process in learn.md is what decides how fast courses can be
released, not how fast they can be drafted.

---

## School: mathematics

The spine of the map: almost every science course depends on it, and
it is where a step-by-step, mastery-based machine helps most.

| Id | Course | Units | Lessons | Standards | Class |
|---|---|---|---|---|---|
| `math-k` | Kindergarten math | counting to 10; counting to 20; tens to 100; comparing numbers; adding and taking away within 10; teen numbers as ten and some ones; measuring and sorting; flat and solid shapes; where things are | 110 | CCSS K.CC, K.OA, K.NBT, K.MD, K.G | A |
| `math-1` | Grade 1 math | adding and subtracting within 20; word problems; tens and ones to 120; adding within 100; measuring length; telling time to the half hour; picture graphs; shapes, halves and quarters | 130 | CCSS 1.OA, 1.NBT, 1.MD, 1.G | A |
| `math-2` | Grade 2 math | facts within 20; adding and subtracting within 100; place value to 1000; within 1000; inches and centimetres; time to 5 minutes; money; bar graphs and line plots; even and odd; arrays; shapes and equal shares | 140 | CCSS 2.OA, 2.NBT, 2.MD, 2.G | A |
| `math-3` | Grade 3 math | what multiplication means; what division means; facts and properties; two-step problems; rounding; **fractions** (equal parts, unit fractions, on a number line, equivalent, comparing, whole numbers as fractions); area; perimeter; time and elapsed time; mass and volume; graphs; quadrilaterals | 140 | CCSS 3.OA, 3.NBT, 3.NF, 3.MD, 3.G | A |
| `math-4` | Grade 4 math | place value to a million; multi-digit adding and subtracting; multiplying (4x1, 2x2 digits); dividing with remainders; factors, multiples, primes; patterns; equivalent fractions; adding fractions; mixed numbers; fraction times whole; tenths and hundredths; converting units; angles and protractors; lines and symmetry | 140 | CCSS 4.* | A |
| `math-5` | Grade 5 math | powers of ten; decimals to thousandths; operations with decimals; multi-digit multiplying and dividing; fractions with unlike denominators; multiplying and dividing fractions; volume; the coordinate plane; expressions; classifying shapes; line plots | 140 | CCSS 5.* | A |
| `math-6` | Grade 6 math | ratios and rates; percent; dividing fractions; decimals; GCF and LCM; negative numbers; absolute value; four-quadrant plane; expressions and exponents; one-step equations and inequalities; area, surface area, volume; distributions, mean, median | 140 | CCSS 6.RP, 6.NS, 6.EE, 6.G, 6.SP | A |
| `math-7` | Grade 7 math | proportional relationships; percent problems (tax, tips, simple interest); rational number operations; expressions; multi-step equations and inequalities; scale drawings; angles; circles; prisms; sampling; comparing groups; probability | 140 | CCSS 7.* | A |
| `math-8` | Grade 8 math | irrational numbers; exponents and scientific notation; roots; linear equations; systems; functions; linear models; transformations; congruence and similarity; the Pythagorean theorem; cylinders, cones, spheres; scatter plots | 140 | CCSS 8.* | A |
| `math-hs-alg1` | Algebra 1 | expressions; linear equations and inequalities; functions; linear functions; systems; exponents and exponential functions; polynomials; factoring; quadratics; data and regression; sequences | 140 | CCSS HS A, F, S | A |
| `math-hs-geom` | Geometry | reasoning and proof; transformations; congruence; similarity; right triangles and trigonometry; circles; area and volume; coordinate geometry; constructions | 130 | CCSS HS G | A |
| `math-hs-alg2` | Algebra 2 | functions and transformations; quadratics and complex numbers; polynomials; rational functions; radicals; exponentials and logarithms; sequences and series; trigonometric functions; the normal distribution | 140 | CCSS HS N, A, F, S | A |
| `math-hs-precalc` | Precalculus | functions; polynomial and rational; exponential and log; the unit circle; identities; laws of sines and cosines; vectors; parametric and polar; matrices; conics; limits, informally | 120 | CCSS HS (+) | A |
| `math-hs-calc` | Calculus | limits and continuity; derivatives; rules; motion, related rates, optimisation; integrals; the fundamental theorem; substitution; area and volume; differential equations; series (optional) | 130 | -- | A |
| `math-hs-stats` | Statistics | exploring data; samples and experiments; probability; random variables; sampling distributions; confidence intervals; hypothesis tests; regression; chi-square | 110 | CCSS HS S | A |

**Uses**: `calc`, `sheet` (data and charts), figures throughout (number
lines, bars, areas, graphs, constructions drawn live). Mathematics is
where explorable figures earn the most: a slider on a parabola's
coefficient, a draggable triangle whose angles always add to 180.

## School: English language arts

Early reading is taught by **systematic phonics**, the approach the
research on teaching children to read supports most strongly; learn's
speech service (English) reads every word, and the youngest lessons
run on the 320x240 screen face in large type.

Literature is taken only from the **public domain** (Ark Medium carries
the Gutenberg CD, [ask_app.md](https://github.com/machdyne/zeitlos/blob/main/docs/ask_app.md)); a translation must be in
the public domain too. Each novel is read in the reader app (`read`) with
lessons around it, not reproduced inside lessons.

| Id | Course | Units | Lessons | Standards | Class |
|---|---|---|---|---|---|
| `ela-k` | Kindergarten reading | hearing sounds in words; letters and their sounds; blending three-sound words; first sight words; how books work; listening and retelling; writing letters and words | 150 | CCSS RF.K, RL.K, W.K | A |
| `ela-1` | Grade 1 reading | digraphs (sh, ch, th); blends; silent e; vowel teams; decodable stories; reading smoothly; what a story is about; writing sentences; capitals and full stops | 160 | CCSS RF.1, RL.1, RI.1, W.1, L.1 | A |
| `ela-2` | Grade 2 reading | r-controlled vowels; ou, oi, aw; long words in parts; fluency; stories and facts; paragraphs; nouns, verbs, adjectives; spelling patterns | 160 | CCSS *.2 | A |
| `ela-3` | Reading 3 | prefixes and suffixes; fables (Aesop) and myths; finding the main idea; text features; opinion, informative and story writing; grammar; using a dictionary | 150 | CCSS *.3 | A |
| `ela-4` | Reading 4 | a novel (e.g. *Just So Stories*); poetry; informational reading; research basics; essays; verb tenses; commas; Greek and Latin roots | 150 | CCSS *.4 | A |
| `ela-5` | Reading 5 | novels (*The Wind in the Willows*, *Black Beauty*); figurative language; comparing texts; research and notes; essays; clauses; vocabulary | 150 | CCSS *.5 | A |
| `ela-6` | English 6 | *Treasure Island*; myths; poetry; argument writing; research; grammar and usage | 140 | CCSS *.6 | A |
| `ela-7` | English 7 | *The Call of the Wild*; Poe's stories; speeches (Lincoln); argument; citing sources; usage | 140 | CCSS *.7 | A |
| `ela-8` | English 8 | *A Christmas Carol*; *Anne of Green Gables*; poetry forms; rhetoric; research paper; media literacy | 140 | CCSS *.8 | A |
| `ela-hs-9` | English 9 | literary analysis; *Romeo and Juliet*; *The Odyssey* (Butler's translation); the short story; argument | 130 | CCSS 9-10 | A |
| `ela-hs-10` | English 10 | *Antigone*; *Macbeth*; *Frankenstein*; world literature in translation; research writing | 130 | CCSS 9-10 | A |
| `ela-hs-11` | American literature | Franklin; Douglass; Hawthorne; Dickinson and Whitman; Twain; *The Great Gatsby*; rhetoric of American speeches | 130 | CCSS 11-12 | A, D |
| `ela-hs-12` | British literature | *Beowulf* (a public-domain translation); Chaucer; *Hamlet*; Austen; the Brontës; Dickens; Wilde | 130 | CCSS 11-12 | A |
| `ela-hs-comp` | Composition | the writing process; clarity and style; argument; research and citation; editing; writing for work | 90 | CCSS W | A |
| `ela-hs-speech` | Speaking and listening | preparing a talk; delivery; discussion; listening well | 40 | CCSS SL | A |

**Uses**: `read` (the books), `text` (writing), speech (reading aloud),
`print` (worksheets). **Media**: `audio` would help early phonics (the
synthesised voice says words, but a recorded voice says sounds better).

## School: science

Organised as NGSS organises it: a course a grade in elementary school,
then Physical, Life and Earth and Space in middle school, then the
four classic high-school courses. Experiments are **virtual first**
(simulations drawn as figures); a hands-on activity is marked and is
class B if it involves heat, chemicals, electricity or tools.

| Id | Course | Units | Lessons | Standards | Class |
|---|---|---|---|---|---|
| `sci-k` | Kindergarten science | pushes and pulls; weather; what living things need; the sun's warmth | 40 | NGSS K | A |
| `sci-1` | Grade 1 science | light and sound; plant and animal parts; parents and young; the sky: sun, moon, stars, daylight | 50 | NGSS 1 | A |
| `sci-2` | Grade 2 science | materials and their properties; what plants need; seeds and pollination; habitats; fast and slow changes to land; maps of land and water | 60 | NGSS 2 | A |
| `sci-3` | Grade 3 science | forces and magnets; life cycles; traits; adaptation and fossils; **weather and climate**; natural hazards | 70 | NGSS 3 | A |
| `sci-4` | Grade 4 science | energy and motion; waves; light and seeing; how bodies are built; senses; rocks, erosion, landforms; resources and hazards | 70 | NGSS 4 | A |
| `sci-5` | Grade 5 science | particles of matter; mixtures and reactions; food webs; where plants get their matter; Earth's spheres; water on Earth; gravity; the sun and stars; day, night and seasons | 70 | NGSS 5 | A |
| `sci-ms-phys` | Physical science | atoms and matter; chemical reactions; forces and motion; energy; waves; electricity and magnetism | 100 | NGSS MS-PS | A |
| `sci-ms-life` | Life science | cells; body systems; reproduction and genetics; ecosystems; natural selection | 100 | NGSS MS-LS | A |
| `sci-ms-earth` | Earth and space science | the solar system and gravity; Earth's history; plate tectonics; the water cycle and weather; climate; resources and human impact | 100 | NGSS MS-ESS | A, C |
| `sci-hs-bio` | Biology | the chemistry of life; cells; photosynthesis and respiration; DNA and genetics; evolution; ecology; the human body | 130 | NGSS HS-LS | A |
| `sci-hs-chem` | Chemistry | measurement; atoms; the periodic table; bonding; reactions and stoichiometry; gases; solutions, acids and bases; energy in reactions; rates and equilibrium; nuclear chemistry | 130 | NGSS HS-PS1 | A, B |
| `sci-hs-phys` | Physics | motion; forces; energy and momentum; circular motion and gravity; **oscillations** and waves; sound and light; circuits; magnetism; modern physics | 130 | NGSS HS-PS2-4 | A |
| `sci-hs-earth` | Earth and space | Earth's structure; plate tectonics; minerals and rocks; the atmosphere and weather; climate science; oceans; stars, galaxies and the universe | 110 | NGSS HS-ESS | A, C |
| `sci-hs-env` | Environmental science | ecosystems; populations; resources; energy; pollution; climate change and responses | 90 | NGSS HS-ESS3 | A, C, D |

**Uses**: figures (simulations: a pendulum, a circuit, orbits, a
food web, a weather map), `sheet` (data), `logic` and `bench` (circuits),
`gpio` (real sensors, for those with modules). **Media**: `img` for
biology and geology (specimens, micrographs, rocks), from public-domain
sources (NASA, USGS, NOAA, *Gray's Anatomy* 1918 plates).

## School: social studies

The expanding-horizons sequence (self, family, community, region,
nation, world) in elementary school, then world and US history,
government and economics. History courses are class D wherever events
are recent or contested: sourced, with the strongest versions of
competing interpretations, reviewed by more than one person.

| Id | Course | Units | Lessons | Standards | Class |
|---|---|---|---|---|---|
| `soc-k` | Me and my world | me and my family; rules and why; helpers and jobs; maps of my room | 40 | C3 | A |
| `soc-1` | Families and communities | families now and long ago; communities; maps and globes; needs and wants | 50 | C3 | A |
| `soc-2` | Neighbourhoods | city, suburb, country; goods and services; landforms and maps; who makes the rules | 60 | C3 | A |
| `soc-3` | Communities of the world | communities on every continent; local government; producers and consumers; money; geography skills | 70 | C3 | A |
| `soc-4` | Regions of the United States | the regions; landforms and climate; native nations; explorers; how a state works | 70 | C3 | A, D |
| `soc-5` | Early America | the first peoples; colonies; the Revolution; the Constitution; westward to 1850 | 90 | C3 | A, D |
| `soc-6` | Ancient world | world geography; Mesopotamia; Egypt; India; China; Greece; Rome | 100 | C3 | A |
| `soc-7` | Medieval and early modern world | Byzantium; the Islamic world; Mali and Songhai; medieval Europe; China and Japan; the Americas; Renaissance and Reformation; the age of exploration | 100 | C3 | A, D |
| `soc-8` | The United States to 1877 | the Revolution; the Constitution in depth; the early republic; reform; the Civil War; Reconstruction | 100 | C3 | A, D |
| `soc-hs-world` | World history | 1450 to 1750; revolutions; industrialisation; empires; the world wars; the cold war; since 1990 | 130 | C3 | A, D |
| `soc-hs-us` | US history | Reconstruction to the present | 130 | C3 | A, D |
| `soc-hs-gov` | Government and civics | foundations; the Constitution; the three branches; rights; elections; state and local government; comparing governments | 90 | C3 | A, C, D |
| `soc-hs-econ` | Economics | scarcity and choice; markets; firms; money and banking; inflation and unemployment; government and the economy; trade | 90 | C3 | A, C, D |
| `soc-hs-geo` | World geography | maps and projections; physical geography; population; cultures; cities; regions of the world | 90 | C3 | A, C |
| `soc-hs-psych` | Psychology | research methods; the brain; perception; learning and memory; development; personality; disorders and treatment | 80 | -- | A, B |

**Media**: `map` everywhere (the CIA World Factbook's maps in Ark
Medium are public domain; historical maps from public-domain atlases),
`img` for history (public-domain photographs and art).

## School: computing

The track nobody else can offer: the learner's own computer is the
subject, from the first program to the gates the CPU is made of.

| Id | Course | Units | Lessons | Standards | Class |
|---|---|---|---|---|---|
| `cs-k2` | Computers and me | the mouse and keys; windows; following and giving steps; sorting; patterns | 30 | CSTA 1A | A |
| `cs-35` | First programs | sequences, loops, choices; drawing with BASIC; bits and numbers; how the internet carries messages; staying safe online | 50 | CSTA 1B | A |
| `cs-ms` | Programming and data | BASIC to Scheme; variables, procedures, lists; data and charts; networks (ping, DNS); logic gates on a bench | 70 | CSTA 2 | A |
| `cs-hs-prog` | Programming in C | C with `zcc`; types and memory; arrays and strings; structs; files; a game in a window | 90 | CSTA 3A | A |
| `cs-hs-algo` | Algorithms and data structures | searching and sorting; recursion; lists, stacks, queues; trees; hashing; graphs; how fast is fast | 80 | CSTA 3B | A |
| `cs-hs-sys` | How computers work | bits and logic; the CPU (Zeitlos32, RISC-V); memory and buses; the framebuffer; the operating system; files; the network stack | 80 | CSTA 3A | A |
| `cs-hs-sec` | Networks and security | packets; TCP/IP; DNS; encryption and signatures; passwords; threats and defence | 60 | CSTA 3A | A, C |
| `cs-hs-fpga` | Digital logic and FPGAs | gates; combinational logic; flip-flops; state machines; Verilog; building the design with `zfpga` | 60 | -- | A |

**Uses**: `basic`, `repl`, `zcc`, `term`, `bench`, `logic`, `zfpga`, `hex`.
This track is also the bridge to the Using Zeitlos courses and to the
college computing courses below.

## School: health and physical education

| Id | Course | Units | Lessons | Class |
|---|---|---|---|---|
| `health-k5` | Healthy me | washing hands; food that helps you grow; sleep; safety at home and on the road; feelings; asking for help | 40 | A, B |
| `health-ms` | Health 6-8 | the body; nutrition; physical activity; growing up (parent opt-in); drugs, alcohol, tobacco (facts); mental health; safety and first aid basics | 60 | B, C |
| `health-hs` | Health 9-12 | nutrition and fitness; mental health; substances; relationships and consent (parent opt-in); reproductive health (parent opt-in); first aid and CPR awareness | 60 | B, C, D |
| `pe-k8` | Moving every day | warm-ups; balance and coordination; games for a room; stretching; why exercise matters | 30 | B |

## School: the arts

| Id | Course | Units | Lessons | Class | Media |
|---|---|---|---|---|---|
| `music-k5` | Music for children | beat and rhythm; high and low; singing games; instruments of the orchestra; making a tune | 50 | A | audio |
| `music-theory` | Music theory | notation; rhythm; scales and keys; intervals; chords; harmony; ear training | 80 | A | audio |
| `art-k5` | Art for children | lines and shapes; colour (on the screen face); pattern; drawing what you see; pictures that tell stories | 40 | A | img |
| `art-draw` | Drawing | line, shape, value; perspective; proportion; the figure; composition | 50 | A | img |
| `art-history` | Art history | prehistory to the present, through public-domain works | 80 | A, D | img |

**Uses**: `draw`, `pix`, `midi`, `track`, the audio mixer. **Media**:
art history needs photographs of the works; the Metropolitan Museum's
and the National Gallery of Art's open-access images are CC0.

---

## College

First- and second-year courses: the common core of a degree in the
sciences, engineering and the humanities. Each assumes the school
course it names, so a learner can come up through the map.

### Mathematics

| Id | Course | Units | Lessons | Needs |
|---|---|---|---|---|
| `col-calc1` | Calculus I | limits; derivatives; applications; integrals; the fundamental theorem | 60 | `math-hs-precalc` |
| `col-calc2` | Calculus II | techniques of integration; applications; sequences and series; Taylor series; parametric and polar | 60 | `col-calc1` |
| `col-calc3` | Multivariable calculus | vectors and space; partial derivatives; multiple integrals; vector calculus; Green, Stokes, divergence | 60 | `col-calc2` |
| `col-linalg` | Linear algebra | systems; matrices; vector spaces; determinants; eigenvalues; orthogonality; applications | 55 | `col-calc1` |
| `col-diffeq` | Differential equations | first-order; second-order linear; Laplace transforms; systems; numerical methods | 50 | `col-calc2` |
| `col-discrete` | Discrete mathematics | logic and proof; sets; induction; counting; relations; graphs; number theory | 55 | `math-hs-alg2` |
| `col-prob` | Probability | counting; conditional probability; random variables; distributions; limit theorems | 45 | `col-calc2` |
| `col-stats` | Statistics for science | data; inference; regression; experimental design; doing it with `sheet` and Scheme | 50 | `math-hs-alg2` |
| `col-proof` | Introduction to proof | logic; direct, contrapositive, contradiction; induction; sets and functions; cardinality | 40 | `col-discrete` |

### Sciences

| Id | Course | Units | Lessons | Needs | Class |
|---|---|---|---|---|---|
| `col-phys1` | Physics I: mechanics | kinematics; Newton's laws; energy; momentum; rotation; gravitation; oscillations | 60 | `col-calc1` | A |
| `col-phys2` | Physics II: electricity and magnetism | charge and field; potential; circuits; magnetism; induction; Maxwell's equations | 60 | `col-phys1` | A |
| `col-phys3` | Physics III: waves and modern physics | waves; optics; relativity; quantum ideas; atoms and nuclei | 50 | `col-phys2` | A |
| `col-chem1` | General chemistry I | atoms; molecules; stoichiometry; gases; thermochemistry; quantum structure; bonding | 60 | `math-hs-alg2` | A |
| `col-chem2` | General chemistry II | kinetics; equilibrium; acids and bases; thermodynamics; electrochemistry; nuclear | 60 | `col-chem1` | A |
| `col-ochem` | Organic chemistry I | structure; stereochemistry; reactions and mechanisms; spectroscopy | 60 | `col-chem2` | A |
| `col-bio1` | Biology I: molecules and cells | biomolecules; cells; metabolism; DNA, genes, expression; cell division | 60 | `sci-hs-bio` | A |
| `col-bio2` | Biology II: organisms and ecology | evolution; diversity of life; plants; animals; ecology | 60 | `col-bio1` | A |
| `col-anat` | Anatomy and physiology | tissues; skeleton; muscle; nerves; senses; endocrine; heart and blood; lungs; digestion; kidneys | 80 | `col-bio1` | A, B (img) |
| `col-astro` | Astronomy | the sky; light and telescopes; the solar system; stars; galaxies; cosmology | 45 | `math-hs-alg2` | A |
| `col-geol` | Physical geology | minerals; rocks; plate tectonics; earthquakes; volcanoes; surface processes; geologic time | 45 | -- | A (img) |
| `col-env` | Environmental science | systems; energy; climate; water; soils; biodiversity; policy | 45 | -- | A, C, D |
| `col-nutr` | Nutrition | nutrients; digestion; energy balance; life stages; evaluating claims | 40 | `sci-hs-bio` | A, B, C |

### Computing and engineering

The Zeitlos tree itself is the laboratory: the CPU, the OS, the network
stack, the compiler and the FPGA toolchain are all on the machine, in
source, documented in `docs/`.

| Id | Course | Units | Lessons | Needs |
|---|---|---|---|---|
| `col-cs1` | Programming in Scheme | expressions; procedures; recursion; data abstraction; higher-order procedures; state; interpreters | 60 | `math-hs-alg1` |
| `col-cs2` | Data structures in C | memory; pointers; lists; trees; hash tables; heaps; graphs; analysis | 60 | `col-cs1` |
| `col-algo` | Algorithms | divide and conquer; dynamic programming; greedy; graphs; NP-completeness | 50 | `col-cs2`, `col-discrete` |
| `col-org` | Computer organisation | number representation; RISC-V assembly; datapath; pipelining; caches (`docs/icache.md`); I/O | 55 | `col-cs2` |
| `col-logic` | Digital design | Boolean algebra; combinational; sequential; Verilog; FPGAs; a small CPU | 55 | `col-org` |
| `col-os` | Operating systems | processes; scheduling; memory and the MTU; messaging; files; drivers -- read in the Zeitlos kernel | 55 | `col-org` |
| `col-net` | Computer networks | layers; Ethernet; IP; TCP; DNS; TLS -- read in Zeitlos's `net` | 50 | `col-cs2` |
| `col-cc` | Compilers | lexing; parsing; trees; code generation for RISC-V -- read in `zcc` | 50 | `col-cs2`, `col-org` |
| `col-crypto` | Applied cryptography | hashing; symmetric ciphers; public keys; signatures; key exchange; post-quantum -- read in `docs/montmul.md`, `docs/mlkem.md` | 45 | `col-discrete` |
| `col-circ` | Electric circuits | DC; theorems; capacitors and inductors; AC; filters; op-amps | 55 | `col-calc2`, `col-phys2` |

### Humanities and social sciences

| Id | Course | Units | Lessons | Class |
|---|---|---|---|---|
| `col-comp` | College composition | the essay; argument; research; style; revision | 45 | A |
| `col-lit` | Introduction to literature | fiction; poetry; drama; criticism (public-domain works) | 45 | A |
| `col-phil` | Introduction to philosophy | knowledge; mind; free will; God (arguments on each side); ethics; politics | 45 | A, D |
| `col-logic-f` | Formal logic | arguments; propositional logic; truth tables; proofs; predicate logic | 40 | A |
| `col-ethics` | Ethics | consequences; duties; virtues; applied problems | 40 | D |
| `col-psych` | Introduction to psychology | methods; biology of behaviour; sensation; learning; memory; development; social; disorders | 50 | A, B |
| `col-soc` | Introduction to sociology | culture; socialisation; groups; inequality; institutions; change | 45 | A, D |
| `col-micro` | Microeconomics | supply and demand; elasticity; consumers; firms; market structures; market failure | 45 | A |
| `col-macro` | Macroeconomics | output; growth; unemployment; inflation; money; fiscal and monetary policy; trade | 45 | A, C, D |
| `col-acct` | Financial accounting | the accounting equation; transactions; statements; assets; liabilities; analysis (with `sheet`) | 45 | A |
| `col-civ1` | World civilisations I | to 1500 | 50 | A, D |
| `col-civ2` | World civilisations II | since 1500 | 50 | A, D |
| `col-ushist1` | US history I | to 1877 | 45 | A, D |
| `col-ushist2` | US history II | since 1877 | 45 | A, D |
| `col-gov` | American government | the Constitution; federalism; Congress; the presidency; courts; parties; elections; opinion | 45 | A, C, D |
| `col-anth` | Cultural anthropology | culture; fieldwork; kinship; economy; religion; change | 40 | A, D |
| `col-ling` | Linguistics | sounds; words; sentences; meaning; language change; how children learn language | 45 | A |

Later, as the earlier ones are done: real analysis, abstract algebra,
numerical methods, signals and systems (with the SDR work), organic
chemistry II, genetics, microbiology, statistics II, macro/micro II.

---

## Languages

Beginning and intermediate courses, for English speakers. The method is
the same as every course's -- small steps, retrieval, spaced review --
with **comprehensible input** at the centre: many short readings and
dialogues just above the learner's level, read and heard, with
vocabulary reviewed by spaced repetition.

| Id | Course | Units | Lessons | Reaches | Media |
|---|---|---|---|---|---|
| `lang-ja-1` | Japanese 1 | hiragana; katakana; greetings and introductions; numbers, time, dates; desu and masu sentences; particles wa, ga, o, ni, de; adjectives; past tense; about 100 kanji; about 800 words | 90 | roughly JLPT N5 | audio, kana and kanji font |
| `lang-ja-2` | Japanese 2 | plain form; te-form and its uses; giving and receiving; potential; conditionals; comparisons; polite speech; about 300 kanji in all; about 1,500 words | 90 | roughly JLPT N4 | audio |
| `lang-de-1` | German 1 | sounds and spelling; introductions; sein and haben; present tense; word order; nouns and gender; the accusative; modal verbs; numbers, time; about 600 words | 90 | CEFR A1 | audio |
| `lang-de-2` | German 2 | the dative; prepositions; the perfect; separable verbs; adjective endings; the past of modals; subordinate clauses; about 1,300 words | 90 | CEFR A2 | audio |

Later: `lang-ja-3` (N3), `lang-de-3` (B1), and the other direction --
English courses for speakers of other languages, written in those
languages.

What languages need that other courses do not (details in
[learn_ui.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn_ui.md#findings)):

- **Recorded native speech.** Zeitlos's speech service speaks English
  only. Recordings must be CC0 or public domain, or made for the course.
- **A teaching-quality Japanese font.** The 12x12 bitmap font is right
  for text on the desktop, but a kana card or a stroke-order lesson
  needs large, smooth glyphs: vector kana and the course's kanji.
  KanjiVG's stroke data is CC BY-SA, which a CC0 pack cannot include;
  the options are a separately licensed pack or strokes drawn for the
  course.
- **Dictionaries.** JMdict (Japanese) is CC BY-SA and so is Wiktionary;
  word lists for the courses can be written CC0, and a full dictionary
  can be a separate, separately licensed pack.

---

## Life

Courses for the things school often leaves out, for any age from the
minimum each gives. Most are class B: wrong advice here hurts people,
so these are never shipped before a qualified person has reviewed them.
Where rules differ by country (money, law, driving, medicine), a course
teaches the principles and has a dated **regional supplement**
(`life-money-us`, `life-money-uk`, ...).

| Id | Course | Units | Lessons | Ages | Class | Uses |
|---|---|---|---|---|---|---|
| `life-survival` | Wilderness survival | priorities and staying calm; trip plans and telling someone; keeping warm and dry; shelter; fire; water; signalling and being found; navigation and staying put; first aid in the wild; why food comes last; weather and hazards; knots and tools | 41 | 12+ | B | figures (knots, shelters, a compass) |
| `life-firstaid` | First aid | is it safe, calling for help; CPR and defibrillators; choking; bleeding; burns; broken bones and sprains; shock; poisoning; allergic reactions; heat and cold; head injuries; stroke and heart attack signs | 36 | 12+ | B, C | -- |
| `life-prepare` | Emergency preparedness | kits and plans; power cuts; floods; earthquakes; fire; communicating when networks fail | 24 | 10+ | B | `mesh` |
| `life-money` | Personal finance | needs and wants; budgeting; banks; saving and compound interest; borrowing and credit; insurance; investing principles; scams; big purchases; retirement | 44 | 14+ | B, C | `sheet` |
| `life-conflict` | Conflict resolution | listening; saying what you need; calming things down; interests, not positions; apologising; at home, at school, at work; online; mediation; when to get help | 24 | 10+ | A, B | -- |
| `life-cook` | Cooking basics | kitchen and food safety; knives; measuring; methods; recipes; nutrition; cooking on a budget; preserving food | 32 | 10+ | B, C | `calc`, `sheet` |
| `life-home` | Home repair | tools and safety; walls and paint; plumbing basics; electrical basics (and what needs an electrician); doors and windows; heating and saving energy | 30 | 14+ | B | -- |
| `life-bike-car` | Bicycles and cars | fixing a flat; chains and brakes; car fluids, tyres, a flat battery, warning lights | 20 | 12+ | B | -- |
| `life-garden` | Growing food | soil; seeds; water; pests; compost; seasons and climate zones | 24 | 8+ | A | -- |
| `life-study` | Learning how to learn | retrieval practice; spacing; mixing practice; sleep; notes; exams; attention -- the methods learn itself uses | 18 | 10+ | A | -- |
| `life-think` | Thinking clearly | arguments; fallacies; chance and risk; numbers in the news; evaluating sources; how science knows; biases | 28 | 12+ | A, D | `sheet` |
| `life-health` | Your body and mind | sleep; exercise; eating; stress and mental health; when to see a doctor | 24 | 14+ | B, C | -- |
| `life-work` | Work and careers | finding work; CVs and cover letters; interviews; the first job; rights at work; starting a small business | 26 | 15+ | B, C | `text`, `sheet` |
| `life-civics` | Citizenship in practice | how to vote; local government; contacting representatives; juries; reading a law; public records | 18 | 14+ | C, D | -- |
| `life-parent` | Caring for babies and children | safe sleep; feeding; development; safety at home; illness; play | 24 | adult | B, C | -- |
| `life-digital` | Digital safety | passwords and keeping them; scams and phishing; backups; privacy; sharing online | 18 | 10+ | B, C | `backup` |
| `life-typing` | Typing | home row; the rows; numbers and symbols; speed and accuracy | 40 | 8+ | A | -- |
| `life-nav` | Map and compass | reading a map; contours; the compass; taking a bearing; finding yourself; in bad weather | 18 | 10+ | B | figures, map |
| `life-weather` | Reading the weather | clouds; fronts; pressure; forecasts; storms and safety | 16 | 10+ | A, B | -- |
| `life-sky` | Stargazing | the sky's motion; constellations; the moon; planets; using binoculars | 16 | 8+ | A | figures |
| `life-radio` | Amateur radio | how radio works; licences; operating; antennas; emergency communication; exam preparation | 30 | 12+ | A, C | `mesh` |
| `life-electronics` | Electronics for makers | voltage, current, resistance; breadboards; LEDs and buttons; sensors; I2C and SPI; a project | 30 | 12+ | A, B | `bench`, `gpio`, `i2c` |
| `life-sew` | Sewing and mending | tools; hand stitches; buttons; patching; hems; using a machine | 16 | 10+ | A | -- |
| `life-knots` | Knots | stopper, bend, hitch, loop; a dozen useful knots and when to use them | 12 | 8+ | A | figures |
| `life-pets` | Caring for animals | dogs; cats; small animals; feeding; health signs; training | 16 | 8+ | A, B | -- |
| `life-speak` | Speaking in public | planning; practising; nerves; delivery; questions | 12 | 12+ | A | -- |
| `life-write` | Writing at work | emails; reports; instructions; being brief | 14 | 14+ | A | `text` |
| `life-read` | Reading for adults | learning to read as an adult, by systematic phonics, with adult material | 80 | adult | A | speech |
| `life-numeracy` | Everyday maths for adults | numbers; fractions and percentages; money; measurement; reading charts | 50 | adult | A | `calc` |
| `life-hse` | High school equivalency preparation | reasoning through language arts; mathematical reasoning; science; social studies -- built on the school courses | 120 | 16+ | A, C | -- |
| `life-chess` | Chess | the rules; tactics; openings; endgames; planning | 30 | 7+ | A | `chess` |
| `life-ethics-everyday` | Everyday ethics | honesty; fairness; promises; kindness; hard choices -- the arguments, not answers | 16 | 12+ | D | -- |

Wilderness survival in particular teaches against two dangerous
habits of older survival material: confident plant identification from
a picture (the course teaches why not to eat a plant you cannot
identify with certainty, and does not teach foraging by picture), and
first-aid steps that guidelines have since changed (those steps come
from the current first-aid guidance, dated, and cross-reference
`life-firstaid`).

---

## Using Zeitlos

Courses about Zeitlos itself (Getting started, Timeless Computing,
Writing, Programming in BASIC, Scheme and C, Inside Zeitlos, ...) are
the `edu-zeitlos` pack, kept in the Zeitlos tree
(`sw/data/learn/edu-zeitlos/`) because they change with the system; see
[learn.md, "Packs"](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md#packs). `zeit-` ids are theirs; the pack
tool refuses them here. A pathway here may name one (`zeit-tc`).

---|---|---|---|---|
| `zeit-start` | Getting started | the desktop; mouse and keys; windows and workspaces; the dock; files; settings; help (F1) | 16 | everything |
| `zeit-tc` | Timeless Computing | the book ([tc.md](https://github.com/machdyne/zeitlos/blob/main/docs/tc.md)), a unit a chapter: why; electricity; information; digital logic; the computer; ... (Information first) | 60 | `logic`, `basic`, `hex` |
| `zeit-write` | Writing | `text`; Markdown; reading with `read`; finding in files; printing | 14 | `text`, `read`, `files`, `print` |
| `zeit-sheet` | Records and numbers | `sheet`: cells, formulas, formats, charts; a budget; a log | 16 | `sheet` |
| `zeit-make` | Making things | `slide` (cards and shows); `draw`; `pix`; a deck that is an app | 20 | `slide`, `draw`, `pix` |
| `zeit-keep` | Keeping your work | where files live; USB sticks; `backup`; `update`; long-term storage | 12 | `files`, `backup`, `update` |
| `zeit-net` | The network | `web`; Gemini and Gopher; `irc`; the BBS; ssh; serving files | 16 | `web`, `irc`, `term`, `netserve` |
| `zeit-basic` | Programming in BASIC | the BASIC computer; printing and input; loops; graphics; sound; a game | 24 | `basic` |
| `zeit-scheme` | Programming in Scheme | the REPL; procedures; lists; the Zeitlos API; windows; slide scripts | 24 | `repl`, `slide` |
| `zeit-c` | C on Zeitlos | `zcc`; a program; a window; files; messages | 20 | `zcc`, `term` |
| `zeit-inside` | Inside Zeitlos | the SOC; the CPU; memory and the MTU; the GPU; the kernel; drivers; the boot | 24 | `info`, `hex` |
| `zeit-hw` | Connecting things | GPIO; PMOD; I2C and SPI; `bench`; Machdyne modules | 20 | `bench`, `i2c`, `sechs` |
| `zeit-fpga` | The FPGA | what an FPGA is; the gateware; building it with `zfpga`; changing it | 20 | `zfpga` |

---

## Pathways

A course's `needs` make a graph; these are its main roads, which the
catalogue shows as tracks a learner can follow:

| Track | Courses, in order |
|---|---|
| Mathematics | `math-k` .. `math-8`, `math-hs-alg1`, `math-hs-geom`, `math-hs-alg2`, `math-hs-precalc`, `math-hs-calc` / `col-calc1`, `col-calc2`, `col-linalg`, `col-calc3`, `col-diffeq` |
| Reading and writing | `ela-k` .. `ela-8`, `ela-hs-9` .. `ela-hs-12`, `ela-hs-comp`, `col-comp`, `col-lit` |
| How computers work | `cs-k2`, `cs-35`, `cs-ms`, `cs-hs-prog`, `cs-hs-sys`, `cs-hs-fpga`, `col-cs1`, `col-cs2`, `col-org`, `col-logic`, `col-os`, `col-net`, `col-cc` |
| Physical science | `sci-k` .. `sci-5`, `sci-ms-phys`, `sci-hs-chem`, `sci-hs-phys`, `col-phys1`, `col-phys2`, `col-phys3`, `col-chem1`, `col-chem2` |
| Life science and health | `sci-ms-life`, `sci-hs-bio`, `col-bio1`, `col-bio2`, `col-anat`, `col-nutr` |
| Outdoors | `life-knots`, `life-nav`, `life-weather`, `life-firstaid`, `life-survival`, `life-sky` |
| A second chance | `life-read`, `life-numeracy`, `life-hse`, `life-work`, `life-money` |

## Pictures, sounds and where they come from

Most figures are drawn by the lessons themselves (Scheme,
[learn.md](https://github.com/machdyne/zeitlos/blob/main/docs/learn.md#figures)), which keeps the pack small and every
figure editable, printable and correct at any size. Some things cannot
be drawn honestly and need a picture or a recording:

| Need | Where | Sources (CC0 or public domain) |
|---|---|---|
| Anatomy and medicine | `col-anat`, `sci-hs-bio`, `life-firstaid` | *Gray's Anatomy* (1918) plates; US government (NIH, CDC) images |
| Earth and space | science, `col-geol`, `col-astro`, `life-sky` | NASA, USGS, NOAA (US government works) |
| Maps | social studies, `life-nav` | CIA World Factbook (in Ark Medium); USGS topographic maps; public-domain historical atlases |
| Art | `art-history`, `art-draw` | open-access collections released as CC0 (the Metropolitan Museum of Art, the National Gallery of Art) |
| Plants and animals | science, `life-garden` | public-domain field guides and government sources |
| Speech | languages, early reading | recordings made for the courses; CC0 recordings |
| Music | `music-k5`, `music-theory` | played by the audio mixer from notation (`midi`); public-domain scores |

Every picture records its source and licence in the course, and the
fact-check covers captions as well as text.

## Choosing the first courses

To be decided with this map in hand. A first set should exercise every
part of the system before many courses depend on it -- the screen face,
explorable figures, typed answers, review, a class B review -- so a
format change is cheap. Candidates that would do that between them:

| Candidate | What it tests |
|---|---|
| `math-3`, the fractions units | figures drawn live, typeset fractions, misconception feedback, mastery, the CCSS tags |
| `math-k` or `ela-k`, a first unit | the 320x240 colour screen face, speech, pre-readers, mouse and gamepad alone |
| `sci-hs-phys`, oscillations | explorable figures with sliders, formulas, a simulation |
| `lang-ja-1`, hiragana | review by spaced repetition, a non-Latin script, the font and audio questions |
| `life-survival`, priorities | scenarios, safety notes, sources, and the whole class B review |
