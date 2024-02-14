%% Partial Shading of a PV Module
%
% This example shows partial shading of a 250-W PV module consisting of 60
% cells connected in series.

% Copyright 2015 Hydro-Quebec, and The MathWorks, Inc.

%%

open_system('PVModulePartialShading')

%% Description
%  
% The PV module is connected to a variable DC voltage source for measuring its I-V and P-V characteristics.
% It is modeled as three strings of 20 series-connected cells in parallel with bypass diodes that allow current flow when cells are shaded or damaged.  Standard irradiance of 1000 W/m2 is applied on the first string of 20 cells while partial shading is applied on strings 2 (cells 21-40) and string 3 (cells 41-60), resulting in respective irradiances of 300 W/m2 and 600 W/m2.


%% Simulation
%
% Simulate the model. The global I-V and P-V characteristics are plotted at the end of simulation.
% Note that the P-V curve exhibits three maxima.  When this PV module is connected to a voltage-sourced converter, this may be challenging for the Maximum Power Point Tracking (MPPT) algorithm to converge on the highest peak. The Global Maximum Power Point (GMPP) (Pm= 104 W) indicated by a red circle on the figure is 34% lower than the expected maximum power (250/3*(1 +0.3 +0.6) = 158 W).

%%

