function graphs_loading_plots
clc;
clear all;
close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Loading simulation data  %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Current waveforms
load input1
t=M(1,:);
I_1=M(2,:);
I_2=M(3,:);
I_3=M(4,:);
I_4=M(5,:);
I_5=M(6,:);
I_6=M(7,:);
[g,d]=size(t);

%Current amplitudes
load input2
t=M2(1,:);
A_1=M2(2,:);
A_2=M2(3,:);
A_3=M2(4,:);
A_4=M2(5,:);
A_5=M2(6,:);
A_6=M2(7,:);
[g,d]=size(t);

%Current phases
load input3
t=M3(1,:);
F_1=M3(2,:);
F_2=M3(3,:);
F_3=M3(4,:);
F_4=M3(5,:);
F_5=M3(6,:);
F_6=M3(7,:);
[g,d]=size(t);


%Amplitude of symmetric component

load input_a_sk
t=M_a_sk(1,:);
SK_a_d1=M_a_sk(2,:);
SK_a_i1=M_a_sk(3,:);
SK_a_01=M_a_sk(4,:);
SK_a_d2=M_a_sk(5,:);
SK_a_i2=M_a_sk(6,:);
SK_a_02=M_a_sk(7,:);
[g,d]=size(t);

%Symmetric phase components

load input_f_sk
t=M_f_sk(1,:);
SK_f_d1=M_f_sk(2,:);
SK_f_i1=M_f_sk(3,:);
SK_f_01=M_f_sk(4,:);
SK_f_d2=M_f_sk(5,:);
SK_f_i2=M_f_sk(6,:);
SK_f_02=M_f_sk(7,:);
[g,d]=size(t);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Plotting  %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x1=1:d;

%title('Current waveforms');
figure, subplot(3,1,1); plot(x1,I_1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,I_4,'b','LineWidth',1.5);
ylabel('I_A , i_a[A]');
legend([' primary ', I_1],[' secondary ',I_2]);
title('Current waveforms');
subplot(3,1,2);plot(x1,I_2,'r','LineWidth',1.5); grid on; hold on;
plot(x1,I_5,'b','LineWidth',1.5);
ylabel('I_B , i_b[A]');
subplot(3,1,3); plot(x1,I_3,'r','LineWidth',1.5); grid on; hold on;
plot(x1,I_6,'b','LineWidth',1.5);
ylabel('I_C , i_c[A]');
xlabel('selections!');

x1=1:d;

%title('Amplitude');
figure, subplot(3,1,1); plot(x1,A_1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,A_4,'b','LineWidth',1.5);
ylabel('I_m_A[A] , i_m_a[A]');  
legend([' primary ', A_1],[' secondary ',I_2]);
title('Amplitude');
subplot(3,1,2);plot(x1,A_2,'r','LineWidth',1.5); grid on; hold on;
plot(x1,A_5,'b','LineWidth',1.5);
ylabel('I_m_B , i_m_b [A]'); 
subplot(3,1,3); plot(x1,A_3,'r','LineWidth',1.5); grid on; hold on;
plot(x1,A_6,'b','LineWidth',1.5);
ylabel('I_m_C , i_m_c [A]'); 
xlabel('selections!');

x1=1:d;

%title('Phases');
figure, subplot(3,1,1); plot(x1,F_1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,F_4,'b','LineWidth',1.5);
ylabel('fi_A , fi_a [degrees]'); 
legend([' primary ', I_1],[' secondary ',I_2]);
title('Phases');
subplot(3,1,2);plot(x1,F_2,'r','LineWidth',1.5); grid on; hold on;
plot(x1,F_5,'b','LineWidth',1.5);
ylabel('fi_B , fi_b [degrees]'); 
subplot(3,1,3); plot(x1,F_3,'r','LineWidth',1.5); grid on; hold on;
plot(x1,F_6,'b','LineWidth',1.5);
ylabel('fi_C , fi_c [degrees]'); 
xlabel('selections!');

x1=1:d;

%title('Amplitudes of symmetrical components');

figure, subplot(3,1,1); plot(x1,SK_a_d1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_a_d2,'b','LineWidth',1.5);
ylabel('direct [A]'); 
legend([' primary ', I_1],[' secondary ',I_2]);
title('Amplitudes of symmetrical components');
subplot(3,1,2);plot(x1,SK_a_i1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_a_i2,'b','LineWidth',1.5);
ylabel('inverse [A]'); 
subplot(3,1,3); plot(x1,SK_a_01,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_a_02,'b','LineWidth',1.5);
ylabel('zero [A]'); 
xlabel('selections!!!');

x1=1:d;

%title('Phases of symmetrical components');

figure, subplot(3,1,1); plot(x1,SK_f_d1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_f_d2,'b','LineWidth',1.5);
ylabel('fi_d_i_r_e_c_t [degrees]'); 
legend([' primary ', I_1],[' secondary ',I_2]);
title('Phases of symmetrical components');
subplot(3,1,2);plot(x1,SK_f_i1,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_f_i2,'b','LineWidth',1.5);
ylabel('fi_i_n_v_e_r_s_e [degrees]'); 
subplot(3,1,3); plot(x1,SK_f_01,'r','LineWidth',1.5); grid on; hold on;
plot(x1,SK_f_02,'b','LineWidth',1.5);
ylabel('fi_z_e_r_o [degrees]'); 
xlabel('selections!!!');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

end