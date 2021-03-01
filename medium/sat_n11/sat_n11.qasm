// Quantum code for the specified SAT problem.

include "qelib1.inc";

// Declare all needed (qu)bits
qreg v[5];
qreg c[4];
qreg a[2];
creg m[4];

// Prepare uniform superposition
h v[1];
h v[2];
h v[3];
h v[4];

// Marking with oracle evaluation
x c[0];
x c[1];
x c[2];
x c[3];
x v[4];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[0];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[2];
x v[3];
x v[4];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[1];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[1];
x v[2];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[2];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[1];
x v[2];
ccx v[2], v[3], c[3];
x v[2];
x v[3];
ccx c[0], c[1], a[0];
ccx c[2], a[0], a[1];
ccx c[3], a[1], v[0];
ccx c[2], a[0], a[1];
ccx c[0], c[1], a[0];
x v[2];
x v[3];
ccx v[2], v[3], c[3];
x v[1];
x v[2];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[2];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[1];
x v[2];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[1];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[2];
x v[3];
x v[4];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], c[0];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
x v[4];

// Amplitude amplification
h v[1];
h v[2];
h v[3];
h v[4];
x v[0];
x v[1];
x v[2];
x v[3];
x v[4];
h v[0];
ccx v[1], v[2], a[0];
ccx v[3], a[0], a[1];
ccx v[4], a[1], v[0];
ccx v[3], a[0], a[1];
ccx v[1], v[2], a[0];
h v[0];
x v[0];
x v[1];
x v[2];
x v[3];
x v[4];
h v[0];
h v[1];
h v[2];
h v[3];
h v[4];

// Measurements
measure v[1] -> m[0];
measure v[2] -> m[1];
measure v[3] -> m[2];
measure v[4] -> m[3];