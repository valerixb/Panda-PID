%
% script to compare simulated PID with actual panda PID test data, captured via PCAP
% 
% launch script pid_modelcomp_v1_0_setup.m and pid_load_test_data.m
% then run simulink simulation with model pid_tb_varTs.slx
% the rune this script
%
% latest rev: feb 19 2024
%

% PCAP capture CURRENT input and PREVIOUS output on PID block, so we have
% an effective extra latency of 1 sampling clock cycle
extra_latency=1;
FPGA_actual=pidout(1:end,2);
asize=length(FPGA_actual);
bsize=length(out.FPGA_sim)-extra_latency;
the_size=min(asize,bsize);
% discard first samples due to panda reset latency
panda_res_latency=0;
FPGA_actual= FPGA_actual(1+panda_res_latency:the_size);
FPGA_sim   =out.FPGA_sim(1+panda_res_latency+extra_latency:the_size+extra_latency);
ideal_PID  =out.idealPID_discrete(1+panda_res_latency+extra_latency:the_size+extra_latency);
t_vec=(0:the_size-1-panda_res_latency);
t_vec=t_vec.*Ts;

discrep   =FPGA_actual-FPGA_sim;
discrepPID=FPGA_actual-ideal_PID;

figure(2)
hold off;
plot(t_vec,FPGA_actual,'r');
hold on;
plot(t_vec,FPGA_sim,'c');
plot(t_vec,ideal_PID,'b');
hold off;
legend("FPGA actual","FPGA simul","Ideal PID")
title('Simulink vs Panda')
grid on;

figure(3)
plot(t_vec,discrep*2^31,'b');
title('FPGA simul vs Panda Error')
grid on;
ylabel('LSBs');

figure(5)
plot(t_vec,discrepPID*2^31,'b');
title('Ideal PID vs Panda Error')
grid on;
ylabel('LSBs');

