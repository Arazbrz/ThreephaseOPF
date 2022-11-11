function mpc = case55
%CASE5  Power flow data for modified 5 bus, 5 gen case based on PJM 5-bus system
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from ...
%     F.Li and R.Bo, "Small Test Systems for Power System Economic Studies",
%     Proceedings of the 2010 IEEE Power & Energy Society General Meeting

%   Created by Rui Bo in 2006, modified in 2010, 2014.
%   Distributed with permission.

%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1	0	230	1	1.1	0.9;
	2	2	0	0	0	0	1	1	0	230	1	1.1	0.9;
	3	1	350	0	0	0	1	1	0	230	1	1.1	0.9;
	%4   2   0   0   0   0   0   0   0   0   0   0   0;
	%5   2   0   0   0   0   0   0   0   0   0   0   0;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	40	0	30	-30	1	100	1	200	0	0	0	0	0	0	0	0	0	0	0	0;
	2	170	0	127.5	-127.5	1	100	1	400	0	0	0	0	0	0	0	0	0	0	0	0;
    %3   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0;
    %4   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0;
    %5   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	3	0	.0001	0.00	0	0	0	0	0	1	-360	360;
	2	3	0	.0001	0.00	0	0	0	0	0	1	-360	360;
	
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	1	0	0	4	25	289 100 971.5 150 1436.5 200 1906.5;
	1	0	0	4	50 3800 100 4230 200 5120 400 6960;
];
