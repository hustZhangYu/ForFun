# ForFun
Some interesting codes for me 

## Hofstadter butterfly

`HofstadterButterfly.m` is the current MATLAB entry point. From this
repository's root, run:

```matlab
HofstadterButterfly
```

It uses L=610, scans alpha=m/L for m=1,...,L, constructs the periodic
nearest-neighbor matrix with diagonal 2*cos(2*pi*alpha*j), and plots its
eigenvalues. `Data` remains in the workspace with one row per alpha value.
The horizontal coordinate in the historical plot is the integer m.

The script now asks `eig` for eigenvalues only. Edit L before running a
smaller exploratory scan; changing L also changes the alpha grid. No input
datasets or additional toolbox calls are required by this script.

