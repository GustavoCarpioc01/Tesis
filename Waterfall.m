PruebaDensidadEspectralReal11=Control2_1;
PruebaDensidadEspectralReal12=Control2_2;
PruebaDensidadEspectralReal13=Control2_3;
PruebaDensidadEspectralReal14=Control2_4;
PruebaDensidadEspectralReal15=Control2_5;
PruebaDensidadEspectralReal16=Control2_6;

DensidadEspectralRealC1=PruebaDensidadEspectralReal11'; 
DensidadEspectralRealC2=PruebaDensidadEspectralReal12';
DensidadEspectralRealC3=PruebaDensidadEspectralReal13';
DensidadEspectralRealC4=PruebaDensidadEspectralReal14';
DensidadEspectralRealC5=PruebaDensidadEspectralReal15';
DensidadEspectralRealC6=PruebaDensidadEspectralReal16';

PruebaDensidadEspectralReal11=DensidadEspectralRealC1(:,1:540);
PruebaDensidadEspectralReal12=DensidadEspectralRealC2(:,1:540);
PruebaDensidadEspectralReal13=DensidadEspectralRealC3(:,1:540);
PruebaDensidadEspectralReal14=DensidadEspectralRealC4(:,1:540);
PruebaDensidadEspectralReal15=DensidadEspectralRealC5(:,1:540);
PruebaDensidadEspectralReal16=DensidadEspectralRealC6(:,1:540);

[C1 L1]= size(PruebaDensidadEspectralReal11); 
DimI=1;
DimF=C1;  %C1
X1=linspace(0,88,L1);  % 70.15= 200hz 88= 250Hz
Y=(DimI)*0.5:0.5:0.5*(DimF);
figure(1)
contourf(X1,Y,PruebaDensidadEspectralReal11(DimI:DimF,1:L1)) 
colormap(jet)
colorbar
title('CANAL F3A2 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off

figure(2)
contourf(X1,Y,PruebaDensidadEspectralReal12(DimI:DimF,1:540))
colormap(jet)
colorbar
title('CANAL F4A1 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off

figure(3)
contourf(X1,Y,PruebaDensidadEspectralReal13(DimI:DimF,1:540))
colormap(jet)
colorbar
title('CANAL C3A2 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off

figure(4)
contourf(X1,Y,PruebaDensidadEspectralReal14(DimI:DimF,1:540))
colormap(jet)
colorbar
title('CANAL C4A1 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off
figure(5)

contourf(X1,Y,PruebaDensidadEspectralReal15(DimI:DimF,1:540))
colormap(jet)
colorbar
title('CANAL O1A2 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off

figure(6)
contourf(X1,Y,PruebaDensidadEspectralReal16(DimI:DimF,1:540))
colormap(jet)
colorbar
title('CANAL O2A1 PACIENTE CONTROL 1')
xlabel('Frecuencia (Hz)')
ylabel('Tiempo (min)')
zlabel('Amplitude (dBm)')
hold on
RECT_12_14=rectangle('Position',[12 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_0_2=rectangle('Position',[0 0 2 C1/2],'EdgeColor','k','LineWidth',1.5,'linestyle','--');
RECT_4_8=rectangle('Position',[4 0 4 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_13_=rectangle('Position',[13 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
RECT_10_=rectangle('Position',[10 0 0.001 C1/2],'EdgeColor','w','LineWidth',1,'linestyle','--');
hold off
