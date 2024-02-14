%% Emergency Diesel-Generator and Asynchronous Motor
%
% This example shows the Machine Load Flow tool of Powergui block to initialize an induction motor/diesel-generator system.
%
% G. Sybille (Hydro-Quebec), Tarik Zabaiou (ETS)

% Copyright 1997-2012 The MathWorks, Inc.

%%

open_system('EmergencyDieselGenerator')

%% Circuit Description
%
% A plant consisting of a resistive and motor load is fed at 2400 V from a distribution 25 kV network through a 6 MVA 25/2 kV Wye-Delta transformer and from an
% emergency synchronous generator/diesel engine unit. The 25 kV network is modeled by a R-L equivalent source with a short-circuit level of 1000 MVA and with a 5 MW load.
% A three-phase to ground fault occurs on the 25 kV system, causing opening of the 25kV circuit breaker.        

%% Demonstration
%
% *1.* To start the simulation in steady-state, the synchronous machine and
% the asynchronous motor need to be initialized by the Load Flow tool of
% powergui. The Load flow parameters of the machine and motor are defined in
% the Load Flow tab of the two blocks:
%
% For the synchronous machine:
% The "Generator type" parameter is set to "PV", indicating that the load flow is performed with the machine controlling its active power and terminal voltage.
% The "Active power generation P" parameter is set to 0. 
% 
% For the asynchronous motor:
% The "Mechanical Power" parameter is set to 1.492e+006 W (2000 HP).
%
% *2.* In the Powergui menu, select 'Load Flow'. A new window appears. A summary
% of the load flow settings is displayed in a table.
% 
% *3.* Press the 'Compute' button to solve the load flow. The table now display the actual machines active and reactive powers.
% 
% *4.* Press the 'Apply' button to apply the load flow solution to the model.
%
% *5.* Open the SM and ASM blocks and note that the initial values have been updated by the Load Flow tool. The value of the constant block connected to the torque input of the asynchronous motor has also been automatically set to 7964 N. 
%
% *6.* Open the Diesel Engine Governor block. Note that the initial value of mechanical power has been set to 0.00027 pu (844 W) by the Load Flow tool.
% 
% *7.* Open the EXCITATION block and note in the Initial values tab that the initial values of terminal voltage and field voltage are set respectively to 1.0 and 1.4273 pu.
% 
% *8.* Right-click the EXCITATION block then select the type of excitation system you want to simulate.
% 
% Note that the initial values of all models have been already presaved with the same initial values. For the ST2A model, an additional line representing the initial value of terminal current It0 is set to 0.2739 pu. 
%
% *9.* Start the simulation. In the scopes check that the simulation start
% in steady-state.

%% Simulation Results
%
% Simulation results obtained with the different excitation systems exhibit good stability when the fault is cleared. However, the ST1A and AC1A models provide better stability. The stabilization of the terminal voltage Vt 
% is obtained in less than 2 seconds with the ST1A model and less than 3 seconds with the AC1A model. The results obtained with the AC4A and DC2A models are less efficient: the system takes longer to stabilize, the stabilization of terminal voltage Vt 
% is obtained after 6 seconds. Note that the field voltage Vf reaches its limit without saturating in most of the models.
%
% After fault clearing and islanding, and for all excitations models, the SM mechanical power increases from its initial value of 0 pu to the final value of 0.80 pu required by the resistive and motor load (2.49 MW). 
% The motor speed decreases transiently from 1789 rpm to 1635 rpm, then it recovers close to its normal value. 

%%

