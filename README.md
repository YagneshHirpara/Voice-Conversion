# Voice Conversion using Digital Signal Processing

## Overview
This project explores the transformation of an adult voice into a child-like voice using Digital Signal Processing (DSP) techniques. The process involves pitch shifting, timbre modification, and resonance adjustments to achieve realistic voice conversion.

## Features
- **Pitch Modification:** Adjusts voice pitch to match that of a child.
- **Timbre Transformation:** Enhances brightness and tonal quality.
- **Formant Shifting:** Simulates the smaller vocal tract of a child.
- **Real-Time Processing:** Optimized for quick transformation.
- **MATLAB Implementation:** Uses audio processing techniques in MATLAB.

## Problem Statement
Develop an algorithm to modify an adult voice into a child-like voice while maintaining naturalness and intelligibility.

## Approach
1. **Audio Recording**
   - Sampling frequency: `41,000 Hz`
   - Duration: `10 seconds`
2. **Pitch Shifting Algorithm**
   - Adjust pitch using interpolation and resampling.
   - Target pitch: `500 Hz` (child voice simulation)
3. **Formant Adjustment**
   - Modify resonances to reflect a child’s vocal tract.
4. **Real-Time Processing Consideration**
   - Optimize algorithms for speed and efficiency.
5. **Spectral Analysis**
   - Compare original and modified audio frequencies.

## Algorithm (Pseudo-Code)
1. Set audio recording parameters (`fs = 41,000 Hz`).
2. Start recording for `10 seconds`.
3. Retrieve recorded audio data.
4. Apply pitch shifting using linear interpolation and resampling.
5. Play back the modified audio.
6. Save output as `child_output.wav`.
7. Perform spectral analysis for comparison.


## Experimental Results
- **Original Voice**:  Recorded at `41,000 Hz`
- **Modified Voice**:  Adjusted to `500 Hz`
- **Audio Comparison**: Spectral analysis confirms pitch and formant shift.
- **Listening Test**: Evaluated by real users for realism and clarity.

## Observations
- Successfully modified pitch to resemble a child’s voice.
- Further refinements needed for more natural results.
- Efficient real-time processing achieved.

## Conclusion
The project successfully demonstrated real-time voice transformation using DSP techniques. While effective, future work may involve more advanced algorithms for better naturalness.

## Requirements
- MATLAB with DSP Toolbox
- Basic understanding of signal processing



## Authors
**Yagnesh Hirpara & Harsh Joshi**  
(Institute of Technology, Department of Electronics and Communication Engineering)

