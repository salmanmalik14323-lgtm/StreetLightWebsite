
# Automatic Street Light System

## Project Overview
An interactive digital logic project that controls a street light using darkness, motion, and manual override inputs.

## Logic Equation
L = O OR (D AND M)

## Inputs
- D: Darkness sensor
- M: Motion sensor
- O: Manual override

## Output
- L = 1: Light ON
- L = 0: Light OFF

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- HTML, CSS and JavaScript

## Simulation
The testbench checks all 8 combinations of the three inputs. The conditional and gate-level implementations should produce matching outputs.

## How to Run
Compile:
iverilog -o streetlight_sim streetlight.v streetlight_tb.v

Run:
vvp streetlight_sim

View waveform:
gtkwave streetlight.vcd
