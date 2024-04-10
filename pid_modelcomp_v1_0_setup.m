%-------- input values -------
maxSampleRate = 1e6;     % max Sampling rate, Hz
SampleRate = 100.e3;        % actual Sampling rate, Hz, achieved through a CE pin
FPGA_CLK_MHZ = 125;
kp= 1.3;                 % proportional gain
ki= 0.5;                 % integral gain
kd= 0.07;                 % derivative gain
f_filter=500;           % Hz, cutoff freq for derivative filter
aiw_G=1;                 % anti integral windup fractional gain (kb/ki)
max_control=0.9;         % output saturation value
input_threshold=0.0;     % detent ;-)
VHDL_fast_latency_cycles = 3; % FPGA latency in FPGA clock cycles
VHDL_slow_latency_cycles = 0; % FPGA latency in PID sampling clock cycles
matlab_discrete_PID_latency = 1; % matlab discrete PID always has 1 clock cycle latency
% inizialize a 1-component input vector to avoid simulink errors when
% there are no actual panda data to load
pidin=[0 0];
%-------- round parameters to their integer representation
% kp is ufix31_En23
kp=round(kp*2^23)/2^23;
% ki is ufix10_En4
ki=round(ki*2^4)/2^4;
% kd is ufix12_En7
kd=round(kd*2^7)/2^7;
% f_filter is ufix30_En10
f_filter=round(f_filter*2^10)/2^10;
%-------- calculated values -------
Ts = 1/SampleRate;       % Sampling period, sec
R=SampleRate/f_filter;
Gi= ki*Ts/2;
Gd= 2*kd/Ts;
G1D= (2*R-1)/(2*R+1);
G2D= Gd/(2*R+1);
%-------- round Gxx -------
% kp=Gp, so it's already rounded
% Gi  is ufix32en25
%Gi=round(Gi*2^25)/2^25;
Gi=floor(Gi*2^25)/2^25;
% G1D is ufix32en32
%G1D=round(G1D*2^32)/2^32;
G1D=floor(G1D*2^32)/2^32;
% G2D is ufix32en7
%G2D=round(G2D*2^7)/2^7;
G2D=floor(G2D*2^7)/2^7;
%-------- now calculate back the kxx to be fed to simulink PID ----------
% don't need to recalc kp
ki=2*Gi/Ts;
Rr=1/2*(1+G1D)/(1-G1D);
f_filter=SampleRate/Rr;
Gd=G2D*(2*Rr+1);
kd=Gd*Ts/2;
%-------- print values to be used in pandabox web GUI ---------
format long eng
%kP_value_pandaGUI  = hex2dec(num2hex(single(kp)));
%Gi_value_pandaGUI  = hex2dec(num2hex(single(Gi)));
%G1D_value_pandaGUI = hex2dec(num2hex(single(G1D)));
%G2D_value_pandaGUI = hex2dec(num2hex(single(G2D)));
disp("----------------------------------------------------------");
disp(sprintf("Prop   gain = %f",kp));
disp(sprintf("Integr gain = %f",ki));
disp(sprintf("Deriv  gain = %f",kd));
disp(sprintf("F_filter    = %f",f_filter));
disp("----------------------------------------------------------");
disp(sprintf("Gi  = %g",Gi));
disp(sprintf("G1D = %g",G1D));
disp(sprintf("G2D = %g",G2D));
disp("----------------------------------------------------------");
%disp(sprintf("kP  value for Panda GUI: %10d",kP_value_pandaGUI));
%disp(sprintf("Gi  value for Panda GUI: %10d",Gi_value_pandaGUI));
%disp(sprintf("G1D value for Panda GUI: %10d",G1D_value_pandaGUI));
%disp(sprintf("G2D value for Panda GUI: %10d",G2D_value_pandaGUI));
%disp("----------------------------------------------------------");




