# Ableton Max for Live device: br.utility.monobass.2.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.utility.monobass.2.2, with all related files, can be found here: [https://github.com/guaguanco127/br.utility.monobass](https://github.com/guaguanco127/br.utility.monobass)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Credits](#Credits)  

## <a name="About"></a>About

Sums the bass of a stereo signal to mono and leaves the highs in stereo, click-free. A crossover splits each side at Freq: below it, Left + Right goes to both outputs; above it, each side stays as it was. Low notes carry most of the energy but are hard to place in space, and stereo or out-of-phase bass can thin out or disappear on mono systems (clubs, phones, vinyl), so mono bass keeps the low end solid everywhere. Works at any sample rate.

Switching Bass Mono on or off crossfades over 10 ms, Mix changes glide over 10 ms, and Freq glides over 30 ms, so nothing clicks while audio plays, even when you sweep the crossover.

Mix sets how much the low sum is turned down, because L + R adds up to a different level depending on the bass:

| Mix | Gain | Use it for | Why |
|---|---|---|---|
| 0 | 0 dB | Bass on one side only | The silent side adds nothing, so the level is already right |
| 1 | -3 dB | Stereo bass: L and R different | Different signals add up about 3 dB louder on average |
| 2 | -4.5 dB | A full mix: centered and wide parts together | Halfway between -3 and -6, the smallest error for both |
| 3 | -6 dB (default) | Centered bass: L and R the same (most bass) | Identical signals add up exactly twice as loud (+6 dB), so halving gives it back unchanged |

When in doubt use -6 dB: it is the only setting that can never clip.

**Off is not exactly the dry signal.** Both sides always run through the crossover, even with Bass Mono off, and switching only fades the lows between stereo and mono. That keeps the switch free of comb filtering. The cost: with Bass Mono off, the bass keeps a small phase shift around Freq at the same level. You won't hear it on its own; it only matters if you blend this output with the untouched signal (for example on a parallel bus).

Out-of-phase bass (one side upside down) cancels when summed, just as it would on a mono system: monobass lets you hear that problem rather than hide it.

A stereo audio effect with a Bass Mono button (lit = mono bass, dark = stereo), a Freq dial (20 to 1000 Hz) and a Mix menu. Ableton's own Utility has a Bass Mono switch with a frequency; this device also lets you choose how the two sides are combined. Bass Mono, Freq and Mix are Live parameters, so you can automate them or map them to a controller.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.utility.monobass.2.2.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.

## <a name="Credits"></a>Credits

The crossover is Graham Wakefield's gen~ crossover from the Max gen~ examples (gen~.crossover: a lowpass and a highpass that add back up to an allpass, so splitting the signal doesn't change its level). Rewritten here as GenExpr code with the allpass sharing the lowpass memory, so the crossover can move without clicking. The mono summing, the Mix settings, the click-free switching and the UI are by Brian Riordan.
