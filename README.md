The goal of the project is the analysis of short-circuit current transmission through a two-winding three-phase power transformer.
The project will present how the direct, inverse and zero component system current is mapped from the secondary to the primary power transformer depending on the transformer coupling. The results obtained in Matlab were compared to the results obtained by analytical calculations obtained using the formulas from the literature. The project shows that the results obtained by analytical calculations are similar in value to the results obtained in Matlab.
The project was implemented using code and models in Simulink. The following blocks were used in the simulation model:
1.	Three-Phase Source with the following parameters:
nominal interphase voltage of 20kV, nominal frequency of 50Hz, three-phase short-circuit power of 500MVA, base voltage of 20kV and ratio X/R=3.5
2.	Three-Phase transformer; Two Windings with the following parameters
transmission ratio 20/6.3 kV/kV, primary resistance value 0.0017 r.u., secondary resistance value 0.0017 r.u, primary reactance value 0.05 r.u., secondary reactance value 0.05 r.u., magnetization resistance value 900 r.u, magnetizing inductance value 1600 r.u.
3. Three-Phase Series RLC Load with the following parameters:
nominal phase to phase voltage of 6.3kV, nominal frequency of 50Hz, active power of 0.9MW. The network is connected in a grounded star point.
4. 3-Phase Sequence Analyzer- is used to display the magnitude and phase angle of the direct, inverse and zero components of the fault current
5. The Fourier analyzer – is used to display magnitude and phase angle of fault currents on transformer primary and secondary winding
6. Three-Phase Fault – is used to select the phases between we want to simulate short circuits and whether we want those short circuits to be grounded or ungrounded
7. Current Measurement – the block which is regularly connected to the phase is used to measure currents 
8. Scope - we use oscilloscopes to display waveforms of amplitudes and phase positions of fault currents and direct, inverse and zero components of fault current
9. PowerGUI - graphical user interface, i.e. block environment for models of Simscape elements of specialized power systems. In PowerGUI, the "Continuous" method is selected, which uses the variable-step solver from Simulink.
