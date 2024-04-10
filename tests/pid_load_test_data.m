%
% script to load actual panda PID test data, captured via PCAP
% 
% launch script pid_modelcomp_v1_0_setup.m before running this
%
% latest rev: feb 19 2024
%

addpath('tests');
NumHeaderLines=10;
%--------- scaled values -----------
%A=readmatrix('kp2p5_ki0_kd0_ff_500_fs_100k_input21hz_0p1amp.txt','NumHeaderLines',NumHeaderLines);
%A=readmatrix('kp0_ki12_kd0_ff_500_fs_100k_input21hz_0p01amp.txt','NumHeaderLines',NumHeaderLines);
%A=readmatrix('kp0_ki0_kd0p5_ff_500_fs_100k_input21hz_0p01amp.txt','NumHeaderLines',NumHeaderLines);
%A=readmatrix('kp1p3_ki0p5_kd0p07_ff_500_fs_100k_input21hz_0p01amp.txt','NumHeaderLines',NumHeaderLines);

%--------- raw values -----------
%fileID = fopen('raw5_kp2p5_ki0_kd0_ff_500_fs_100k_input21hz_0p1amp.txt','r');
%fileID = fopen('raw5_kp0_ki12_kd0_ff_500_fs_100k_input21hz_0p01amp.txt','r');
%fileID = fopen('raw5_kp0_ki0_kd0p5_ff_500_fs_100k_input21hz_0p01amp.txt','r');
fileID = fopen('raw5_kp1p3_ki0p5_kd0p07_ff_500_fs_100k_input21hz_0p01amp.txt','r');
for k=1:NumHeaderLines
    dummyline=fgets(fileID);
end
A=fscanf(fileID,'%x');
fclose(fileID);
% convert to signed 32-bit
A=typecast(uint32(A), 'int32');
% make sure we have an even number of entries
A=A(1:2*floor(length(A)/2));
A=reshape(A,2,[])';
A=double(A)./2^31;
%-------------------------------
resetDiscard=1;
sA=size(A);
vec_size=sA(1)-1;     % discard last value because it is corrupted
%vec_size=vec_size-1;  % discard another value because in captured data you get present input and previous output
vec_size=vec_size-resetDiscard;
%vec_size = 2000;       % use just a subset
t_vec=(0:vec_size-1);
t_vec=t_vec.*Ts;
clear pidin;
pidin=[t_vec; A(resetDiscard+1:resetDiscard+vec_size,2)']';
%pidout=[t_vec; A(2:vec_size+1,1)']';
pidout=[t_vec; A(resetDiscard+1:resetDiscard+vec_size,1)']';
clear A

disp(sprintf("Simulation time = %f",(vec_size-1)*Ts));

figure(1)
hold off;
plot(pidin(:,1),-pidin(:,2),'b');
hold on;
plot(pidout(:,1),pidout(:,2),'r');
hold off;
grid on;
legend("PIDin","PIDout")



