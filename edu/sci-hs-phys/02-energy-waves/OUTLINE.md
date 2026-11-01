# Outline: Energy, momentum and waves

Part `02-energy-waves` of `sci-hs-phys`, High School Physics: 7 units, 45 lessons. This file has no number, so learn ignores it. Write each lesson with exactly the file name, objective and standards below; the keywords are the terms the lesson teaches, each defined in bold in the step where it first appears.

Standards: NGSS HS-PS codes where a performance expectation fits, and CCSS math codes on lessons that compute. NGSS has no performance expectation for the period of a spring or a pendulum, so those lessons carry CCSS math codes only.

## Figures

Your own figure procedures go in `lib/wave.scm` only, every name starting with `wv-`. Keep that file at most 7 KB (the course has 24 KB for all three parts). Do not edit the other parts' lib files. You may not call part 1's `mc-` procedures (another author may change them); copy what you need under your own prefix.

Built-in procedures that suit this part (learn_figures.md, "The library"):

- `bar-chart` -- energy bar charts: kinetic, potential and thermal energy before and after
- `graph`, `graph-axes`, `plot`, `plot-point` -- position against time as a sine curve, kinetic and potential energy against time, period against length, a wave's shape at one moment, a cooling curve
- `arrow`, `line`, `label` -- velocities and momenta before and after a collision, rays of light, the normal to a surface
- `angle-mark` -- angles of incidence, reflection and refraction, a pendulum's swing
- `number-line`, `nl-mark` -- the electromagnetic spectrum (a line of powers of 10), the range of hearing, temperature scales
- `caption`

Sliders suit: mass, height and speed; spring constant and mass; pendulum length; amplitude, frequency and wavelength; the angle of a ray and the two indexes of refraction; the source's speed for the Doppler effect. Animation suits: a pendulum, a mass on a spring, a cart rolling on a track with its energy bars, two carts colliding, a transverse and a longitudinal wave, a standing wave, wavefronts from a moving source. Put fixed parts (the support, axes, the track, the medium's rest positions) in `still`, and keep a moving figure under about 60 points a frame (a wave drawn as a `path` of 40-60 points).

Procedures you may want to write in `lib/wave.scm` (suggestions; name them as you like, with the prefix):

- `wv-pendulum` -- a support, string and bob at angle $theta(t) = theta_0 cos(2 pi t / T)$
- `wv-spring` -- a zigzag spring from a wall to a block at position x
- `wv-wave` -- a sine wave $y = A sin(2 pi (x/lambda - f t))$ as a path, with markers on a few particles of the medium
- `wv-carts` -- two carts on a track, before and after a collision, with velocity arrows
- `wv-ray` -- a ray meeting a boundary, with its normal and the reflected and refracted rays

**Every figure is physically true.** It models the physics, not a picture of it:

- A pendulum's period is $T = 2 pi sqrt(L/g)$ for small swings (up to about 15 degrees); it does not depend on the mass, and larger swings take a little longer: say so if a slider allows them. A mass on a spring has $T = 2 pi sqrt(m/k)$. Position is a cosine of time; the speed is greatest at the middle and zero at the ends.
- With no friction, kinetic plus potential energy stays the same at every moment; with friction or damping, the missing energy shows up as thermal energy, and the amplitude shrinks.
- Momentum before equals momentum after in every collision; kinetic energy stays the same only in an elastic collision.
- Waves: $v = f lambda$. In one medium the speed is fixed, so a higher frequency gives a shorter wavelength. At a boundary the frequency stays the same, and the speed and wavelength change. The particles of the medium move up and down (transverse) or back and forth (longitudinal) about their rest positions; they do not travel with the wave. Nodes of a standing wave are half a wavelength apart.
- Light: the angle of reflection equals the angle of incidence, both measured from the normal; refraction follows $n_1 sin(theta_1) = n_2 sin(theta_2)$; past the critical angle, all the light reflects. Rays through a lens follow the lens's real focal points.
- Sound: the Doppler effect for a moving source is $f' = f v / (v - v_s)$ approaching and $f v / (v + v_s)$ leaving.
- An animation runs in real time, or the caption says how much it is slowed; a wave of light or sound is always shown slowed, and the caption says so.

Use these values in every part, so answers agree: $g = 9.8$ m/s^2 (32 ft/s^2); the speed of sound in dry air at 20 degrees C is 343 m/s (about 1,125 ft/s); the speed of light in a vacuum is $c = 3.00 * 10^8$ m/s; water's specific heat capacity is 4,186 J/(kg K) (say "about 4,200" where rounded); 1 hp = 746 W; 1 lb (force) = 4.45 N. Say "about" where a value is rounded.

## Words

- Uses from part 1: SI, mass, kilogram, conversion factor, scientific notation, significant figures, position, displacement, velocity, acceleration, free fall, vector, scalar, magnitude, component, resultant, sine, cosine, projectile, force, newton, net force, free-body diagram, Newton's three laws, equilibrium, weight, normal force, tension, friction, Hooke's law, spring constant, system, internal and external force, air resistance, period, frequency, hertz, field, gravitational field, orbit.
- SI first, US customary alongside where it is natural (degrees Fahrenheit beside Celsius, feet per second beside meters per second). Formulas in `$...$`; Greek letters by name ($lambda$, $theta$, $Delta$).
- Experiments are virtual: a simulation in a figure, or a table of data to read. Never ask the learner to heat, swing or shine anything.
- Do not use terms that part 3 teaches: "electric charge", "electric field", "voltage", "electric current", "circuit", "magnetic field", "photon", "nucleus", "isotope". Light is an electromagnetic wave: in 07-light/01, define "electromagnetic wave" as a wave of linked electric and magnetic fields that needs no medium ("field" is taught in part 1; "electric" and "magnetic" are everyday words here), and say that part 3 shows how such fields work. Do not describe light as a stream of particles: part 3 teaches photons.
- A term is used only after the lesson that teaches it, also inside this part: not "energy" in its physics sense before 01-energy/01; not "thermal energy" before 01-energy/07; not "heat" as a term before 02-thermal/02; not "wave" before 05-waves/01 (the oscillations unit is about springs and pendulums alone); not "wavelength" before 05-waves/03; not "reflection" or "refraction" before 05-waves/05; not "resonance" before 04-oscillations/06; not "sound wave" before 06-sound/01 (the waves unit may say "sound").
- Temperature is a measure of the average kinetic energy of the particles (exactly so for an ideal gas): do not say temperature "is" the energy, or that heat is something an object contains.
- High school words: sentences of 25 words or fewer, the subject's terms defined where they first appear, "you", present tense, numbers as digits, US spelling.

## 01-energy/ -- Work and energy

Compute work, kinetic energy, potential energy and power, and use the conservation of energy to predict motion. Standards: HS-PS3-1, HS-PS3-2, HSN-Q.A.1.

1. `01-work.md` -- Compute the work a force does as W = F d cos(theta), in joules, and say when a force does no work.  
   Standards: "HS-PS3-1". Keywords: "energy (in physics)", "work (in physics)", "joule".
2. `02-kinetic-energy.md` -- Compute kinetic energy as KE = 1/2 m v^2, and predict how it changes when the speed doubles.  
   Standards: "HS-PS3-1", "HS-PS3-2". Keywords: "kinetic energy".
3. `03-work-energy-theorem.md` -- Use the work-energy theorem: the net work on an object equals its change in kinetic energy.  
   Standards: "HS-PS3-1". Keywords: "work-energy theorem".
4. `04-potential-energy.md` -- Compute gravitational potential energy as PE = mgh from a chosen zero level.  
   Standards: "HS-PS3-2". Keywords: "potential energy", "gravitational potential energy".
5. `05-spring-energy.md` -- Compute the energy stored in a stretched or squeezed spring as 1/2 k x^2.  
   Standards: "HS-PS3-2". Keywords: "elastic potential energy".
6. `06-conservation-of-energy.md` -- Use the conservation of mechanical energy, with energy bar charts, to find speeds and heights.  
   Standards: "HS-PS3-1". Keywords: "conservation of energy", "mechanical energy", "isolated system".
7. `07-energy-and-friction.md` -- Account for the mechanical energy that friction turns into thermal energy.  
   Standards: "HS-PS3-1". Keywords: "thermal energy".
8. `08-power.md` -- Compute power as energy transferred per second, in watts and horsepower.  
   Standards: "HS-PS3-1", "HSN-Q.A.1". Keywords: "power (in physics)", "watt", "horsepower".

## 02-thermal/ -- Heat and temperature

Explain temperature by the motion of particles, compute heat flow, and explain why devices that convert energy are never 100% efficient. Standards: HS-PS3-2, HS-PS3-4, HS-PS3-3, HSN-Q.A.1, HSA-CED.A.4.

1. `01-temperature.md` -- Explain temperature by the motion of particles, and convert between degrees Celsius, degrees Fahrenheit and kelvins.  
   Standards: "HS-PS3-2", "HSN-Q.A.1". Keywords: "kelvin", "absolute zero".
2. `02-specific-heat.md` -- Compute the heat needed to change an object's temperature with Q = m c Delta T.  
   Standards: "HS-PS3-4", "HSA-CED.A.4". Keywords: "heat (in physics)", "specific heat capacity".
3. `03-thermal-equilibrium.md` -- Predict the final temperature when a hot and a cold object reach thermal equilibrium, and state the second law of thermodynamics.  
   Standards: "HS-PS3-4". Keywords: "thermal equilibrium", "second law of thermodynamics".
4. `04-efficiency.md` -- Compute the efficiency of a device that converts energy, and explain why it is always under 100%.  
   Standards: "HS-PS3-3". Keywords: "efficiency".

## 03-momentum/ -- Momentum and collisions

Use momentum and impulse to predict the outcome of collisions and to design ways of making collisions safer. Standards: HS-PS2-2, HS-PS2-3, HSA-CED.A.4.

1. `01-momentum.md` -- Compute momentum as p = mv, a vector in the direction of the velocity.  
   Standards: "HS-PS2-2", "HSA-CED.A.4". Keywords: "momentum".
2. `02-impulse.md` -- Use impulse, F Delta t = Delta p, to relate a force and its time to a change in momentum.  
   Standards: "HS-PS2-2", "HSA-CED.A.4". Keywords: "impulse".
3. `03-conservation-of-momentum.md` -- Use the conservation of momentum to find a velocity after two objects interact.  
   Standards: "HS-PS2-2". Keywords: "conservation of momentum".
4. `04-collisions.md` -- Tell elastic from inelastic collisions by checking kinetic energy, and solve a collision where the objects stick together.  
   Standards: "HS-PS2-2". Keywords: "elastic collision", "inelastic collision".
5. `05-recoil.md` -- Explain recoil and explosions: momentum is zero before and after, shared out in opposite directions.  
   Standards: "HS-PS2-2". Keywords: "recoil".
6. `06-safer-collisions.md` -- Design a way to reduce the force in a collision by making it last longer, as airbags, helmets and crumple zones do.  
   Standards: "HS-PS2-3". Keywords: "crumple zone".

## 04-oscillations/ -- Oscillations

Describe springs and pendulums that oscillate, predict their periods, and follow their energy as they swing. Standards: HS-PS2-1, HS-PS3-1, HSF-TF.B.5, HSA-CED.A.4, HSS-ID.B.6.

1. `01-periodic-motion.md` -- Describe an oscillation by its amplitude, period and frequency, and use f = 1/T.  
   Standards: "HSF-TF.B.5", "HSA-CED.A.4". Keywords: "oscillation", "equilibrium position", "amplitude".
2. `02-simple-harmonic-motion.md` -- Explain simple harmonic motion by a restoring force that grows with displacement, and graph position against time as a sine curve.  
   Standards: "HS-PS2-1", "HSF-TF.B.5". Keywords: "restoring force", "simple harmonic motion".
3. `03-mass-on-a-spring.md` -- Use T = 2 pi sqrt(m/k) to predict how mass and stiffness change a spring's period.  
   Standards: "HSA-CED.A.4", "HSF-TF.B.5". Keywords: (none new).
4. `04-pendulum.md` -- Use T = 2 pi sqrt(L/g) for small swings, and find from simulated data that the period does not depend on the mass.  
   Standards: "HSA-CED.A.4", "HSS-ID.B.6". Keywords: "simple pendulum".
5. `05-energy-in-oscillations.md` -- Follow kinetic and potential energy through one swing, and find the greatest speed from the amplitude.  
   Standards: "HS-PS3-1". Keywords: (none new).
6. `06-damping-and-resonance.md` -- Explain damping, and resonance when a push matches the natural frequency.  
   Standards: "HS-PS3-1". Keywords: "damping", "natural frequency", "resonance".

## 05-waves/ -- Waves

Describe waves by their wavelength, frequency and speed, use v = f lambda, and explain reflection, refraction, interference, standing waves and diffraction. Standards: HS-PS4-1, HSA-CED.A.4.

1. `01-waves.md` -- Describe a wave as a disturbance that carries energy through a medium without carrying the medium along.  
   Standards: "HS-PS4-1". Keywords: "wave", "medium (of a wave)", "mechanical wave".
2. `02-transverse-and-longitudinal.md` -- Tell transverse from longitudinal waves by how the medium moves.  
   Standards: "HS-PS4-1". Keywords: "transverse wave", "longitudinal wave".
3. `03-wave-properties.md` -- Read a wave's amplitude, wavelength, crests and troughs from a graph, and its period and frequency from how one point of the medium moves in time.  
   Standards: "HS-PS4-1". Keywords: "wavelength", "crest", "trough".
4. `04-wave-speed.md` -- Use v = f lambda to find a wave's speed, frequency or wavelength.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "wave speed".
5. `05-reflection-and-refraction.md` -- Explain reflection at a boundary, and refraction as a change of speed and wavelength in a new medium at the same frequency.  
   Standards: "HS-PS4-1". Keywords: "reflection (of a wave)", "refraction".
6. `06-interference.md` -- Add two waves by superposition, and tell constructive from destructive interference.  
   Standards: "HS-PS4-1". Keywords: "superposition", "constructive interference", "destructive interference".
7. `07-standing-waves.md` -- Explain a standing wave on a string, and find the wavelengths that fit between its fixed ends.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "standing wave", "node", "antinode".
8. `08-diffraction.md` -- Explain diffraction, and predict that it is strongest when a gap is about the size of the wavelength.  
   Standards: "HS-PS4-1". Keywords: "diffraction".

## 06-sound/ -- Sound

Explain sound as a longitudinal wave, compute with its speed, and relate pitch, loudness, the Doppler effect and musical notes to the wave. Standards: HS-PS4-1, HS-PS4-5, HSA-CED.A.4.

1. `01-sound-waves.md` -- Explain sound as a longitudinal wave of compressions and rarefactions that needs a medium.  
   Standards: "HS-PS4-1". Keywords: "sound wave", "compression (of a wave)", "rarefaction".
2. `02-speed-of-sound.md` -- Compute with the speed of sound in air, water and steel, and find a distance from an echo.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "echo".
3. `03-pitch-and-loudness.md` -- Relate pitch to frequency and loudness to intensity, and read sound levels in decibels.  
   Standards: "HS-PS4-1". Keywords: "pitch", "intensity (of a wave)", "decibel".
4. `04-doppler-effect.md` -- Explain the Doppler effect, and compute the frequency heard from a moving source.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "Doppler effect".
5. `05-musical-notes.md` -- Find the fundamental frequency and harmonics of a string from its standing waves.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "fundamental frequency", "harmonic".
6. `06-sound-technology.md` -- Explain how sonar, ultrasound imaging and noise-canceling headphones use echoes and interference.  
   Standards: "HS-PS4-5". Keywords: "sonar", "ultrasound".

## 07-light/ -- Light

Describe light as an electromagnetic wave, order the electromagnetic spectrum, and explain mirrors, refraction, lenses, optical fibers and the double-slit experiment. Standards: HS-PS4-1, HS-PS4-3, HS-PS4-5, HSA-CED.A.4.

1. `01-light-as-a-wave.md` -- Describe light as an electromagnetic wave that crosses empty space at the speed of light.  
   Standards: "HS-PS4-1", "HS-PS4-3". Keywords: "electromagnetic wave", "speed of light".
2. `02-electromagnetic-spectrum.md` -- Order the electromagnetic spectrum by wavelength and frequency, and compute with c = f lambda.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "electromagnetic spectrum", "visible light", "radio wave", "microwave", "infrared", "ultraviolet", "X-ray", "gamma ray".
3. `03-mirrors.md` -- Use the law of reflection to trace rays from a plane mirror and find where the image is.  
   Standards: "HS-PS4-5". Keywords: "ray (of light)", "normal (to a surface)", "angle of incidence", "law of reflection", "image (in optics)".
4. `04-refraction-of-light.md` -- Use the index of refraction and Snell's law to find how much light bends, and explain dispersion in a prism.  
   Standards: "HS-PS4-1", "HSA-CED.A.4". Keywords: "index of refraction", "Snell's law", "dispersion".
5. `05-lenses.md` -- Trace rays through a converging lens to find the image, as in an eye or a camera.  
   Standards: "HS-PS4-5". Keywords: "lens", "converging lens", "focal point", "focal length".
6. `06-total-internal-reflection.md` -- Find the critical angle, and explain how optical fibers carry light by total internal reflection.  
   Standards: "HS-PS4-5", "HSA-CED.A.4". Keywords: "total internal reflection", "critical angle", "optical fiber".
7. `07-double-slit.md` -- Explain how the bright and dark bands of the double-slit experiment are evidence for the wave model of light.  
   Standards: "HS-PS4-3". Keywords: "double-slit experiment".
