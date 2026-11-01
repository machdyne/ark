# Outline: Mechanics

Part `01-mechanics` of `sci-hs-phys`, High School Physics: 7 units, 44 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

Standards: NGSS HS-PS codes where a performance expectation fits, and CCSS math codes on lessons that compute. NGSS has no performance expectation for measurement or for motion in two dimensions (HS-PS2-1 is limited to one dimension), so units 01 and 03 carry CCSS math codes only, and unit 06 uses HS-PS2-1 for F = ma beyond its one-dimensional boundary, as physics courses do.

## Figures

Your own figure procedures go in `lib/mech.scm` only, every name starting with `mc-`. Keep that file at most 7 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `graph`, `graph-axes`, `plot`, `plot-point` -- position-time and velocity-time graphs, a slope or an area under a line, a trajectory y against x, force against acceleration data, the inverse-square law
- `number-line`, `nl-mark`, `nl-jump` -- position on a line from a reference point, displacement as a signed jump
- `arrow`, `line`, `label` -- vectors, components, free-body diagrams (arrow lengths to scale)
- `angle-mark` -- launch angles, slopes, a vector's direction
- `ruler` -- measuring a length
- `caption` -- the scale ("1 grid square = 1 m") and the conditions ("no air")

Sliders suit: launch speed and angle, force and mass, slope angle, radius and speed in a circle, distance from a planet. Animation suits: a cart speeding up, a ball in free fall, a projectile (repeat its flight with the time taken modulo the time of flight), an object going round a circle, a satellite in orbit. Put fixed parts (axes, ground, the circle, the planet) in `still`, and keep a moving figure under about 60 points a frame.

Procedures you may want to write in `lib/mech.scm` (suggestions; name them as you like, with the prefix):

- `mc-vector` -- an arrow from a point with a length and a direction in degrees, labelled
- `mc-fbd` -- a box with labelled force arrows drawn to one scale
- `mc-launch` -- a projectile's path and the ball at time t, from speed, angle and g
- `mc-slope` -- a slope at an angle with a block on it
- `mc-circle` -- an object on a circle with its velocity and acceleration arrows
- `mc-orbit` -- a planet and a satellite on a circular orbit

**Every figure is physically true.** It models the physics, not a picture of it:

- Motion: $x = x_0 + v_0 t + 1/2 a t^2$, $v = v_0 + a t$; a position-time graph's slope is the velocity; the area under a velocity-time graph is the displacement.
- Free fall and projectiles, with no air: $x = v_0 cos(theta) t$, $y = v_0 sin(theta) t - 1/2 g t^2$; the horizontal velocity never changes; the range on level ground is $R = v_0^2 sin(2 theta) / g$, longest at 45 degrees. Draw a trajectory with the same scale on both axes so that angles look true.
- Forces: $a = F_net / m$; a free-body diagram's arrows are to scale and act on the one object; the two forces of a third-law pair act on different objects. Friction is at most $mu F_N$ while static.
- Circles: velocity is along the circle, acceleration toward the center, $a = v^2/r$; never a "centrifugal" arrow on a free-body diagram.
- Gravity: $F = G m_1 m_2 / r^2$; an orbit's speed is $v = sqrt(G M / r)$ and its period $T = 2 pi r / v$.
- An animation runs in real time, or the caption says how much it is slowed ("shown at 1/4 speed").

Use these values in every part, so answers agree: $g = 9.8$ m/s^2 (32 ft/s^2); $G = 6.67 * 10^-11$ N m^2/kg^2; Earth's mass $5.97 * 10^24$ kg and radius 6,370 km; 1 in = 2.54 cm exactly, 1 ft = 0.3048 m, 1 mi = 1.609 km, 1 lb (force) = 4.45 N. Say "about" where a value is rounded.

## Words

- SI first, US customary alongside where it is natural: "9.8 m/s^2 (32 ft/s^2)", "27 m/s (60 mph)". Formulas in `$...$`; Greek letters by name ($theta$, $mu$, $Delta$).
- Experiments are virtual: a simulation in a figure, or a table of data to read. Never ask the learner to build or drop anything.
- Words the learner knows from algebra 1 and middle school and may be used freely: slope, graph, equation, square root, average, rate, unit, meter, distance, direction, speed, atom, gravity, push, pull.
- Do not use terms that later parts teach: "energy", "kinetic", "potential", "work" (in the physics sense), "power" (in the physics sense), "momentum", "impulse", "oscillation", "amplitude", "wave", "wavelength", "electric charge", "electric field". Say "how fast", not "how much energy".
- A term is used only after the lesson that teaches it, also inside this part: not "mass" before 01-measurement/01; not "acceleration" before 02-motion/04; not "vector" before 03-vectors-projectiles/01 (motion in a line uses + and - for direction); not "force" before 04-forces/01 (projectiles "fall because of gravity", "speed up downward"); not "weight" before 04-forces/05 (in 01-measurement, convert masses in kilograms and grams, not kilograms to pounds); not "friction" before 04-forces/08; not "air resistance" before 05-using-forces/06 (say "ignoring the air"); not "system" before 05-using-forces/04; not "field" before 07-gravity/03.
- "Period", "frequency" and "hertz" are taught in 06-circular-motion/01 and used by part 2.
- Heavier objects do not fall faster when the air does not matter: say so where learners expect it, in 02-motion/07.
- High school words: sentences of 25 words or fewer, the subject's terms defined where they first appear, "you", present tense, numbers as digits, US spelling.

## 01-measurement/ -- Measuring in physics

Measure and compute with SI units, convert to and from US customary units, and write very large and very small numbers in scientific notation. Standards: HSN-Q.A.1, HSN-Q.A.3, 8.EE.A.4.

1. `01-si-units.md` -- Name the SI units of length, mass and time, and use the prefixes mega-, kilo-, centi-, milli- and micro-.  
   Standards: "HSN-Q.A.1". Keywords: "SI", "mass (of an object)", "kilogram", "second (of time)", "prefix (of a unit)".
2. `02-converting-units.md` -- Convert between units, metric and US customary, by multiplying by conversion factors and keeping track of the units.  
   Standards: "HSN-Q.A.1". Keywords: "conversion factor", "dimensional analysis".
3. `03-scientific-notation.md` -- Write and compute with numbers in scientific notation, and round a result to a sensible number of significant figures.  
   Standards: "HSN-Q.A.3", "8.EE.A.4". Keywords: "scientific notation", "significant figures".

## 02-motion/ -- Motion in a straight line

Describe motion along a line with position, velocity and acceleration, in words, graphs and equations. Standards: HS-PS2-1, HSN-Q.A.1, HSF-IF.B.6, HSA-CED.A.4.

1. `01-position.md` -- Give an object's position from a reference point, and find its displacement and the distance it travels.  
   Standards: "HSN-Q.A.1". Keywords: "position", "reference point", "displacement".
2. `02-speed-and-velocity.md` -- Compute average speed and average velocity, and tell them apart by direction.  
   Standards: "HSN-Q.A.1", "HSA-CED.A.4". Keywords: "average speed", "velocity", "average velocity".
3. `03-position-time-graphs.md` -- Read a position-time graph and find the velocity as the slope of the line.  
   Standards: "HS-PS2-1", "HSF-IF.B.6". Keywords: "position-time graph", "instantaneous velocity".
4. `04-acceleration.md` -- Compute average acceleration as the change in velocity over time, and tell speeding up from slowing down by the signs.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "acceleration".
5. `05-velocity-time-graphs.md` -- Read a velocity-time graph: the acceleration is its slope and the displacement is the area under it.  
   Standards: "HS-PS2-1", "HSF-IF.B.6". Keywords: "velocity-time graph".
6. `06-equations-of-motion.md` -- Use the equations for constant acceleration to find a missing quantity.  
   Standards: "HSA-CED.A.4". Keywords: "constant acceleration", "kinematic equations".
7. `07-free-fall.md` -- Describe free fall with g = 9.8 m/s^2 (32 ft/s^2), and compute falling times and speeds.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "free fall", "acceleration due to gravity".
8. `08-motion-problems.md` -- Solve motion problems with several steps, using graphs and equations, and check the units and the size of the answer.  
   Standards: "HSN-Q.A.1", "HSA-CED.A.4". Keywords: (none new).

## 03-vectors-projectiles/ -- Vectors and projectiles

Add vectors and split them into components, and predict the path of a projectile launched horizontally or at an angle. Standards: HSN-VM.A.1, HSN-VM.B.4, HSN-VM.A.3, HSG-SRT.C.8, HSA-CED.A.4.

1. `01-vectors.md` -- Tell vectors from scalars, and draw a vector as an arrow with a magnitude and a direction.  
   Standards: "HSN-VM.A.1". Keywords: "vector", "scalar", "magnitude (of a vector)".
2. `02-adding-vectors.md` -- Add vectors tip to tail, along a line and at right angles, and find the resultant.  
   Standards: "HSN-VM.B.4". Keywords: "resultant".
3. `03-components.md` -- Split a vector into perpendicular components with sine and cosine, and put components back together.  
   Standards: "HSG-SRT.C.8". Keywords: "component (of a vector)", "sine (of an angle)", "cosine (of an angle)".
4. `04-relative-velocity.md` -- Find a velocity relative to the ground by adding velocities, for a boat on a river or a plane in the wind.  
   Standards: "HSN-VM.A.3". Keywords: "relative velocity".
5. `05-horizontal-launch.md` -- Predict the path of an object launched horizontally: a steady horizontal velocity and free fall downward, at the same time.  
   Standards: "HSN-VM.A.3", "HSA-CED.A.4". Keywords: "projectile", "trajectory".
6. `06-angled-launch.md` -- Split a launch velocity into components, and find the time of flight and the highest point.  
   Standards: "HSG-SRT.C.8", "HSN-VM.A.3". Keywords: "time of flight".
7. `07-range.md` -- Find the range on level ground, and show that 45 degrees gives the longest range when the air is ignored.  
   Standards: "HSN-VM.A.3", "HSA-CED.A.4". Keywords: "range (of a projectile)".
8. `08-projectile-problems.md` -- Solve projectile problems and test each prediction against a simulation.  
   Standards: "HSN-VM.A.3", "HSA-CED.A.4". Keywords: (none new).

## 04-forces/ -- Forces and Newton's laws

Use Newton's three laws to relate the forces on an object to its motion. Standards: HS-PS2-1, HSA-CED.A.4, HSN-Q.A.1.

1. `01-forces.md` -- Describe a force as a push or pull with a magnitude and a direction, measured in newtons, and find the net force.  
   Standards: "HS-PS2-1". Keywords: "force", "newton (unit)", "net force".
2. `02-free-body-diagrams.md` -- Draw a free-body diagram showing every force on one object.  
   Standards: "HS-PS2-1". Keywords: "free-body diagram".
3. `03-first-law.md` -- Use Newton's first law: with no net force, an object keeps its velocity, at rest or moving.  
   Standards: "HS-PS2-1". Keywords: "Newton's first law", "inertia", "equilibrium (of forces)".
4. `04-second-law.md` -- Use F = ma to find a net force, a mass or an acceleration, and find the law in a table of data.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "Newton's second law".
5. `05-weight.md` -- Compute weight as W = mg, tell weight from mass, and convert between newtons and pounds.  
   Standards: "HS-PS2-1", "HSN-Q.A.1". Keywords: "weight".
6. `06-third-law.md` -- Find the force pairs of Newton's third law and explain why they do not cancel.  
   Standards: "HS-PS2-1". Keywords: "Newton's third law", "force pair".
7. `07-normal-force-and-tension.md` -- Find the normal force from a surface and the tension in a rope.  
   Standards: "HS-PS2-1". Keywords: "normal force", "tension (in a rope)".
8. `08-friction.md` -- Compute static and kinetic friction with a coefficient of friction.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "friction", "static friction", "kinetic friction", "coefficient of friction".

## 05-using-forces/ -- Using Newton's laws

Solve force problems with springs, forces at angles, slopes, connected objects, elevators and air resistance. Standards: HS-PS2-1, HSG-SRT.C.8, HSA-CED.A.4.

1. `01-springs.md` -- Use Hooke's law, F = kx, to find a spring's force or its stretch.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "Hooke's law", "spring constant".
2. `02-forces-at-angles.md` -- Find the net force of forces at angles by adding their components.  
   Standards: "HS-PS2-1", "HSG-SRT.C.8". Keywords: (none new).
3. `03-slopes.md` -- Find the acceleration of an object on a slope, with and without friction.  
   Standards: "HS-PS2-1", "HSG-SRT.C.8". Keywords: "inclined plane".
4. `04-connected-objects.md` -- Treat connected objects as one system to find their acceleration, then the tension between them.  
   Standards: "HS-PS2-1". Keywords: "system (of objects)", "internal force", "external force".
5. `05-apparent-weight.md` -- Explain what a scale reads in an elevator that speeds up or slows down.  
   Standards: "HS-PS2-1". Keywords: "apparent weight".
6. `06-air-resistance.md` -- Describe air resistance and terminal velocity from a graph of a falling object's velocity.  
   Standards: "HS-PS2-1". Keywords: "air resistance", "terminal velocity".
7. `07-force-problems.md` -- Solve mixed force problems, from the free-body diagram to the answer.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: (none new).

## 06-circular-motion/ -- Circular motion

Explain motion in a circle at a steady speed with centripetal acceleration and the real forces that cause it. Standards: HS-PS2-1, HSA-CED.A.4.

1. `01-uniform-circular-motion.md` -- Describe motion in a circle at a steady speed, and find its period, frequency and speed.  
   Standards: "HSA-CED.A.4". Keywords: "uniform circular motion", "period (of motion)", "frequency", "hertz".
2. `02-centripetal-acceleration.md` -- Explain why the velocity changes in a circle, and compute the acceleration toward the center, a = v^2/r.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: "centripetal acceleration".
3. `03-centripetal-force.md` -- Find which real force pulls an object toward the center, and compute it with F = mv^2/r.  
   Standards: "HS-PS2-1". Keywords: "centripetal force".
4. `04-curves.md` -- Find the fastest safe speed around a flat curve from friction.  
   Standards: "HS-PS2-1", "HSA-CED.A.4". Keywords: (none new).
5. `05-vertical-circles.md` -- Find the forces at the top and bottom of a vertical circle, such as a loop or a swing.  
   Standards: "HS-PS2-1". Keywords: (none new).

## 07-gravity/ -- Gravity

Use Newton's law of universal gravitation to explain falling, the strength of gravity on other worlds, and orbits. Standards: HS-PS2-4.

1. `01-universal-gravitation.md` -- Compute the gravitational force between two masses with F = G m1 m2 / r^2.  
   Standards: "HS-PS2-4". Keywords: "Newton's law of universal gravitation", "gravitational constant".
2. `02-inverse-square.md` -- Predict how the force of gravity changes with distance by the inverse-square law.  
   Standards: "HS-PS2-4". Keywords: "inverse-square law".
3. `03-gravitational-field.md` -- Describe gravity as a field, and find g at a planet's surface from its mass and radius.  
   Standards: "HS-PS2-4". Keywords: "field (in physics)", "gravitational field".
4. `04-orbits.md` -- Explain an orbit as falling around a planet, and compute a circular orbit's speed and period.  
   Standards: "HS-PS2-4". Keywords: "orbit", "satellite".
5. `05-weightlessness.md` -- Explain why astronauts in orbit seem weightless although gravity still pulls on them.  
   Standards: "HS-PS2-4". Keywords: "apparent weightlessness".
