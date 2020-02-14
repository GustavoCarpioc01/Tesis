sec=0;
min=0;
hora=0;
rotador=1;
scope= dsp.SpectrumAnalyzer;
release(scope);
scope.SampleRate=Fs;
% scope(Data')
i=1;
k=1;
j=1;
M=1;
Canal=1;
[Fila,Columna] = size(Data);
    longitudC=Fila/6;
for i=1:Fila
    clear specTable 
%     clear scope
%     scope= dsp.SpectrumAnalyzer;
% release(scope);
% scope.SampleRate=200;
     scope(Data(i,:)')
    specTable = getSpectrumData(scope);
    DensidadEspectral(:,i)=specTable.Spectrum{1,1};
     i
     M=M+1
     if M == longitudC+1
    clear time
    sec=0;
min=0;
hora=0;
rotador=1;
         M=1;
     Canal=Canal+1;
     end
     if Canal == 1
         CanalActual='F3A2';
     elseif Canal == 2
         CanalActual='F4A1';
     elseif Canal == 3
         CanalActual='C3A2';
     elseif Canal == 4
         CanalActual='C4A1';
     elseif Canal == 5
         CanalActual='O1A2';
     elseif Canal == 6
         CanalActual='O2A1';
     end
sec=rotador*30;
    if sec == 60
    min=min+1;
    sec=0;
     rotador=1;
    else 
    rotador =2;    
    end 
    if min == 60
    hora=hora+1;
    min=0;
    end
time=[hora,min,sec];
CanalActual
time
     pause(0.1)
end
[Fila2,Columna2] = size(DensidadEspectral);
xT=Fila2+2;
Xfrecuencia=200*(1:xT/2)/(xT/2)*1/2;
for j=1:Fila
            DensidadEspectralReal(:,j)=DensidadEspectral(Fila2/2:end,j);

            