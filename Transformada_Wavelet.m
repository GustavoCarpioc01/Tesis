NarcoT1=Paciente_1;
NarcoT2=Paciente_2;
NarcoT3=Paciente_3;
NarcoT4=Paciente_4;
NarcoT5=Paciente_5;
NarcoT6=Paciente_6;

[fila,columna]=size(NarcoT1);
i=1;
clear WaveletAprox1
for i=1:fila
[c,l] = wavedec(NarcoT1(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox1(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl01=WaveletAprox1;

i=1;
clear WaveletAprox2
for i=1:fila
[c,l] = wavedec(NarcoT2(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox2(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl02=WaveletAprox2;

i=1;
clear WaveletAprox3
for i=1:fila
[c,l] = wavedec(NarcoT3(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox3(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl03=WaveletAprox3;

i=1;
clear WaveletAprox4
for i=1:fila
[c,l] = wavedec(NarcoT4(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox4(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl04=WaveletAprox4;

i=1;
clear WaveletAprox5
for i=1:fila
[c,l] = wavedec(NarcoT5(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.  
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox5(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl05=WaveletAprox5;

i=1;
clear WaveletAprox6
for i=1:fila
[c,l] = wavedec(NarcoT6(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox6(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl06=WaveletAprox6;
%%
Wavelet_Narco07=cat(2,WaveletPacienteControl01,WaveletPacienteControl02,WaveletPacienteControl03,WaveletPacienteControl04,WaveletPacienteControl05,WaveletPacienteControl06);
% NewDataTotal_Control01=Wavelet_Control01;
%%
figure(20)
plot(WaveletPacienteControl06(15,:)); grid on





%%

Data=Data';
[C2 F2]=size(Data);
VentaneoC1_1=(Data(:,1:F2/6));
VentaneoC1_2=(Data(:,F2/6+1:F2/6*2));
VentaneoC1_3=(Data(:,F2/6*2+1:F2/6*3));
VentaneoC1_4=(Data(:,F2/6*3+1:F2/6*4));
VentaneoC1_5=(Data(:,F2/6*4+1:F2/6*5));
VentaneoC1_6=(Data(:,F2/6*5+1:F2/6*6));
VentaneoPacienteControl01=cat(1,VentaneoC1_1,VentaneoC1_2,VentaneoC1_3,VentaneoC1_4,VentaneoC1_5,VentaneoC1_6);
VentaneoPacienteControl01A=VentaneoPacienteControl01';

%
NarcoT1=VentaneoC1_1';
NarcoT2=VentaneoC1_2';
NarcoT3=VentaneoC1_3';
NarcoT4=VentaneoC1_4';
NarcoT5=VentaneoC1_5';
NarcoT6=VentaneoC1_6';

[fila,columna]=size(NarcoT1);
i=1;
clear WaveletAprox1
for i=1:fila
[c,l] = wavedec(NarcoT1(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox1(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl01=WaveletAprox1;

i=1;
clear WaveletAprox2
for i=1:fila
[c,l] = wavedec(NarcoT2(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox2(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl02=WaveletAprox2;

i=1;
clear WaveletAprox3
for i=1:fila
[c,l] = wavedec(NarcoT3(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox3(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl03=WaveletAprox3;

i=1;
clear WaveletAprox4
for i=1:fila
[c,l] = wavedec(NarcoT4(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox4(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl04=WaveletAprox4;

i=1;
clear WaveletAprox5
for i=1:fila
[c,l] = wavedec(NarcoT5(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.  
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox5(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl05=WaveletAprox5;

i=1;
clear WaveletAprox6
for i=1:fila
[c,l] = wavedec(NarcoT6(i,:),2, 'db5');
%[cd1,cd2,cd3,cd4,cd5] = detcoef(c,l,[1 2 3 4 5]);  % length(l)-2.
%[cd1,cd2,cd3,cd4,cd5,cd6,cd7,cd8,cd9] = detcoef(c,l,[1 2 3 4 5 6 7 8 9]);  % length(l)-2.
WaveletAprox6(i,:) = appcoef(c,l,'db5');
% i
end
WaveletPacienteControl06=WaveletAprox6;