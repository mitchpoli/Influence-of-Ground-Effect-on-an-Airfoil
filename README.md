# Ground Effect on a NACA 4412 Airfoil  
**ME-474 – Numerical Flow Simulation (EPFL)**  

## Overview

This project investigates the aerodynamic behavior of a **NACA 4412 airfoil in ground effect** using 2D RANS simulations in ANSYS Fluent.

The objective is to quantify the variation of **lift (CL)** and **drag (CD)** as a function of ground clearance ratio \( h/c \).

## Methodology

- Airfoil: NACA 4412  
- Chord: 18.8 m  
- Angle of attack: 0°  
- Velocity: 125 m/s  
- Reynolds number: ~1.6×10⁸  
- Turbulence model: Spalart–Allmaras  
- Solver: Steady, pressure-based (SIMPLE)  

Ground clearance cases analyzed:
h/c = ∞, 2.0, 1.0, 0.5, 0.25

Mesh and domain convergence studies were performed to ensure solution independence.

## Key Results

- Lift increases as ground clearance decreases.
- Drag decreases initially, reaching a minimum at **h/c ≈ 1.0**.
- Very low clearances cause drag increase due to viscous confinement effects.
- Maximum aerodynamic efficiency (CL/CD) occurs at **h/c ≈ 1.0** (2D model).

## Limitations

- 2D sectional analysis  
- No induced drag  
- No wingtip effects  
- Incompressible formulation  

Results represent sectional behavior, not full aircraft performance.

## Tools

- ANSYS Fluent  
- Structured meshing  
- RANS (Spalart–Allmaras)
