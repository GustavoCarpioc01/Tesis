%% Codigo para limpiar
clear all
close all
clc
%% LECTURA DE TODA LA DATA
[Ndata1, Nheader1] = ReadEDF('Narcolpesia_Caso01.edf')
[Ndata2, Nheader2] = ReadEDF('Narcolpesia_Caso02.edf')
[Ndata3, Nheader3] = ReadEDF('Narcolpesia_Caso03.edf')
[Ndata4, Nheader4] = ReadEDF('Narcolpesia_Caso04.edf')
[Ndata5, Nheader5] = ReadEDF('Narcolpesia_Caso05.edf')
[Ndata6, Nheader6] = ReadEDF('Narcolpesia_Caso06.edf')
[Ndata7, Nheader7] = ReadEDF('Narcolpesia_Caso07.edf')
[data1, header1] = ReadEDF('Control_Caso01.edf')
[data2, header2] = ReadEDF('Control_Caso02.edf')
[data3, header3] = ReadEDF('Control_Caso03.edf')
[data4, header4] = ReadEDF('Control_Caso04.edf')
[data5, header5] = ReadEDF('Control_Caso05.edf')
[data6, header6] = ReadEDF('Control_Caso06.edf')
[data7, header7] = ReadEDF('Control_Caso07.edf')
[data8, header8] = ReadEDF('Control_Caso08.edf')
[data9, header9] = ReadEDF('Control_Caso09.edf')
[data10, header10] = ReadEDF('Control_Caso10.edf')
%%
DataControl=cat(1,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10);
DataNarco=cat(1,Ndata1,Ndata2,Ndata3,Ndata4,Ndata5,Ndata6,Ndata7);
%% PARAMETROS PARA ESTANDARIZAR (TIEMPO) - CONTROL
FsControl=cat(1,header1.samplerate(1)',header2.samplerate(1)',header3.samplerate(1)',header4.samplerate(1)',header5.samplerate(1)',header6.samplerate(1)',header7.samplerate(1)',header8.samplerate(1)',header9.samplerate(1)',header10.samplerate(1)');
LongitudControl=cat(1,length(data1{1}),length(data2{1}),length(data3{1}),length(data4{1}), length(data5{1}), length(data6{1}),length(data7{1}),length(data8{1}),length(data9{1}),length(data10{1}));
timeControl1=linspace(1,LongitudControl(1)/FsControl(1),LongitudControl(1));
timeControl2=linspace(1,LongitudControl(2)/FsControl(2),LongitudControl(2));
timeControl3=linspace(1,LongitudControl(3)/FsControl(3),LongitudControl(3));
timeControl4=linspace(1,LongitudControl(4)/FsControl(4),LongitudControl(4));
timeControl5=linspace(1,LongitudControl(5)/FsControl(5),LongitudControl(5));
timeControl6=linspace(1,LongitudControl(6)/FsControl(6),LongitudControl(6));
timeControl7=linspace(1,LongitudControl(7)/FsControl(7),LongitudControl(7));
timeControl8=linspace(1,LongitudControl(8)/FsControl(8),LongitudControl(8));
timeControl9=linspace(1,LongitudControl(9)/FsControl(9),LongitudControl(9));
timeControl10=linspace(1,LongitudControl(10)/FsControl(10),LongitudControl(10));
%     for i=1:10
%     Time(i,:) = linspace(1,Longitud(i)/Fs(i),Longitud(i));
%     end
%% ESTANDARIZACIÓN EN MAGNITUD - CONTROL
    for i=1:6
        DataControlMagn1(i,:)=(DataControl{1,i}*7)'/(10e6);
    end  % DataControl_1
    i=1;
    for i=1:6
        DataControlMagn2(i,:)=(DataControl{2,i}*7)'/(10e6);
    end  % DataControl_2
    i=1;
    for i=1:6
        DataControlMagn3(i,:)=(DataControl{3,i}*7)'/(10e6);
    end  % DataControl_3
    i=1;
    for i=1:6
        DataControlMagn4(i,:)=(DataControl{4,i}*7)'/(10e6);
    end  % DataControl_4  
    i=1;
    for i=1:6
        DataControlMagn5(i,:)=(DataControl{5,i}*7)'/(10e6);
    end  % DataControl_5
    i=1;
    for i=1:6
        DataControlMagn6(i,:)=(DataControl{6,i}*7)'/(10e6);
    end  % DataControl_6
    i=1;
    for i=1:6
        DataControlMagn7(i,:)=(DataControl{7,i}*7)'/(10e6);
    end  % DataControl_7
    i=1;
    for i=1:6
        DataControlMagn8(i,:)=(DataControl{8,i}*7)'/(10e6);
    end  % DataControl_8
    i=1;
    for i=1:6
        DataControlMagn9(i,:)=(DataControl{9,i}*7)'/(10e6);
    end  % DataControl_9
    i=1;
    for i=1:6
        DataControlMagn10(i,:)=(DataControl{10,i}*7)'/(10e6);
    end  % DataControl_10
%% PARAMETROS PARA ESTANDARIZAR (TIEMPO) - NARCOLEPSIA
FsNarco=cat(1,Nheader1.samplerate(1)',Nheader2.samplerate(1)',Nheader3.samplerate(1)',Nheader4.samplerate(1)',Nheader5.samplerate(1)',Nheader6.samplerate(1)',Nheader7.samplerate(1)');
LongitudNarco=cat(1,length(Ndata1{1}),length(Ndata2{1}),length(Ndata3{1}),length(Ndata4{1}), length(Ndata5{1}), length(Ndata6{1}),length(Ndata7{1}));
timeNarco1=linspace(1,LongitudNarco(1)/FsNarco(1),LongitudNarco(1));
timeNarco2=linspace(1,LongitudNarco(2)/FsNarco(2),LongitudNarco(2));
timeNarco3=linspace(1,LongitudNarco(3)/FsNarco(3),LongitudNarco(3));
timeNarco4=linspace(1,LongitudNarco(4)/FsNarco(4),LongitudNarco(4));
timeNarco5=linspace(1,LongitudNarco(5)/FsNarco(5),LongitudNarco(5));
timeNarco6=linspace(1,LongitudNarco(6)/FsNarco(6),LongitudNarco(6));
timeNarco7=linspace(1,LongitudNarco(7)/FsNarco(7),LongitudNarco(7));
%% ESTANDARIZACIÓN EN MAGNITUD - NARCO
    for i=1:6
        DataNarcoMagn1(i,:)=(DataNarco{1,i}*7)'/(10e6);
    end  % DataControl_1
    i=1;
    for i=1:6
        DataNarcoMagn2(i,:)=(DataNarco{2,i}*7)'/(10e6);
    end  % DataControl_2
    i=1;
    for i=1:6
        DataNarcoMagn3(i,:)=(DataNarco{3,i}*7)'/(10e6);
    end  % DataControl_3
    i=1;
    for i=1:6
        DataNarcoMagn4(i,:)=(DataNarco{4,i}*7)'/(10e6);
    end  % DataControl_4  
    i=1;
    for i=1:6
        DataNarcoMagn5(i,:)=(DataNarco{5,i}*7)'/(10e6);
    end  % DataControl_5
    i=1;
    for i=1:6
        DataNarcoMagn6(i,:)=(DataNarco{6,i}*7)'/(10e6);
    end  % DataControl_6
    i=1;
    for i=1:6
        DataNarcoMagn7(i,:)=(DataNarco{7,i}*7)'/(10e6);
    end  % DataControl_7
%% PLOTEAR DATA CONTROL
i=1;
for i=1
figure(i)
subplot 311, plot(timeControl1,DataControlMagn1(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 01'); 
subplot 312, plot(timeControl2,DataControlMagn2(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 02');
subplot 313, plot(timeControl3,DataControlMagn3(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 03');

figure(i+1)
subplot 311, plot(timeControl4,DataControlMagn4(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 04'); 
subplot 312, plot(timeControl5,DataControlMagn5(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 05');
subplot 313, plot(timeControl6,DataControlMagn6(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 06');

figure(i+2)
subplot 411, plot(timeControl7,DataControlMagn7(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 07'); 
subplot 412, plot(timeControl8,DataControlMagn8(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 08');
subplot 413, plot(timeControl9,DataControlMagn9(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 09');
subplot 414, plot(timeControl10,DataControlMagn10(i,:));
xlabel (' tiempo [S]'); ylabel (' Amplitud [V]'); grid on; title('Paciente Control 010');

end

i=1;
for i=1
figure(i)
subplot 411, plot(timeNarco1,DataNarcoMagn1(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 01');
subplot 412, plot(timeNarco2,DataNarcoMagn2(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 02');
subplot 413, plot(timeNarco3,DataNarcoMagn3(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 03');
subplot 414, plot(timeNarco4,DataNarcoMagn4(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 04');
figure(i+1)
subplot 311, plot(timeNarco5,DataNarcoMagn5(i,:)); 
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 05');
subplot 312, plot(timeNarco6,DataNarcoMagn6(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 06');
subplot 313, plot(timeNarco7,DataNarcoMagn7(i,:));
xlabel (' tiempo [S]'); ylabel (' voltaje [uV]'); grid on; title('Paciente con narcolepsia 07');
end