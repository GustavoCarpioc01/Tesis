CONTROL1=TargetPacienteREMNarco07';   
CONTROL2=TargetPacienteREMNarco07';               
HZ= 88 ; % cambio 70.15(200hz)  o 88(250hz)    --- 
HZ2= 88;
[F1 C1]=size(CONTROL1);
[F2 C2]=size(CONTROL2);
F6=F1/6;
F7=F2/6;

VentaneoControl1T=Wavelet_Narco03;

%%
clear ControlDeltaHistogramaCaracteristica01
Control1_1delta=CONTROL1((round(1):round(4*F6/HZ)),:);                   
Control1_2delta=CONTROL1((round(1+(F6)):round(4*F6/HZ)+(F6)),:);
Control1_3delta=CONTROL1((round(1+(2*F6)):round(4*F6/HZ)+(2*F6)),:);
Control1_4delta=CONTROL1((round(1+(3*F6)):round(4*F6/HZ)+(3*F6)),:);
Control1_5delta=CONTROL1((round(1+(4*F6)):round(4*F6/HZ)+(4*F6)),:);
Control1_6delta=CONTROL1((round(1+(5*F6)):round(4*F6/HZ)+(5*F6)),:);

ControlDelta1=cat(1,Control1_1delta,Control1_2delta,Control1_3delta,Control1_4delta,Control1_5delta,Control1_6delta);
ControlDelta1=ControlDelta1';
ControlDelta1Promedio=mean(ControlDelta1');
ControlDelta1EntropyShannon=abs(shannon_entro(ControlDelta1'));
ControlDelta1EntropyTsallis=abs(Tsallis_entro(ControlDelta1',2));
ControlDelta1Maximo=max(ControlDelta1');
ControlDelta1AreaBajolaCurva=trapz(ControlDelta1');
ControlDelta1DesvStan=std(ControlDelta1');
% ControlDelta1Kurtosis=kurtosis(ControlDelta1');
% ControlDelta1THD=thd(ControlDelta1');
%ControlDelta1Envolvente=envelope(ControlDelta1');
ControlDelta1Mediana=median(ControlDelta1');
% ControlDelta1PicoApico=peak2peak(ControlDelta1');
% ControlDelta1Periodo=seqperiod(ControlDelta1');
ControlDelta1Varianza=var(ControlDelta1');
j=1;
% clear ControlDelta1MeanTeagerEnergy ControlDelta1Hurst_Exponent
% for j=1:C1
% [ey ex]=energyop(ControlDelta1(j,:));
% % ControlDelta1MeanTeagerEnergy(:,j)=mean(ex(:,1));
% HURST=hurst(ControlDelta1(j,:));
% % ControlDelta1Hurst_Exponent(:,j)=HURST;
% end
ControlDelta1RMS=rms(ControlDelta1');

SaveDeltaControl01=cat(1,ControlDelta1Promedio,ControlDelta1EntropyShannon,ControlDelta1Maximo,ControlDelta1EntropyTsallis,ControlDelta1AreaBajolaCurva,ControlDelta1DesvStan,ControlDelta1Mediana,ControlDelta1Varianza,ControlDelta1RMS);
SaveDeltaControl01=SaveDeltaControl01';

clear ControlThetaHistogramaCaracteristica01
Control1_1theta=CONTROL1((round((4.1*F6/HZ)):round(8*F6/HZ)),:);
Control1_2theta=CONTROL1((round((4.1*F6/HZ)+(F6)):round(8*F6/HZ)+(F6)),:);
Control1_3theta=CONTROL1((round((4.1*F6/HZ)+(2*F6)):round(8*F6/HZ)+(2*F6)),:);
Control1_4theta=CONTROL1((round((4.1*F6/HZ)+(3*F6)):round(8*F6/HZ)+(3*F6)),:);
Control1_5theta=CONTROL1((round((4.1*F6/HZ)+(4*F6)):round(8*F6/HZ)+(4*F6)),:);
Control1_6theta=CONTROL1((round((4.1*F6/HZ)+(5*F6)):round(8*F6/HZ)+(5*F6)),:);
ControlTheta1=cat(1,Control1_1theta,Control1_2theta,Control1_3theta,Control1_4theta,Control1_5theta,Control1_6theta);
ControlTheta1=ControlTheta1';

ControlTheta1Promedio=mean(ControlTheta1');
ControlTheta1EntropyShannon=abs(shannon_entro(ControlTheta1'));
ControlTheta1EntropyTsallis=abs(Tsallis_entro(ControlTheta1',2));
ControlTheta1Maximo=max(ControlTheta1');
ControlTheta1AreaBajolaCurva=trapz(ControlTheta1');
ControlTheta1DesvStan=std(ControlTheta1');
ControlTheta1Mediana=median(ControlTheta1');
ControlTheta1Varianza=var(ControlTheta1');
j=1;
ControlTheta1RMS=rms(ControlTheta1');
SaveThetaControl01=cat(1,ControlTheta1Promedio,ControlTheta1EntropyShannon,ControlTheta1Maximo,ControlTheta1EntropyTsallis,ControlTheta1AreaBajolaCurva,ControlTheta1DesvStan,ControlTheta1Mediana,ControlTheta1Varianza,ControlTheta1RMS);
SaveThetaControl01=SaveThetaControl01';

clear ControlAlphaHistogramaCaracteristica01
Control1_1alpha=CONTROL1((round((8.1*F6/HZ)):round(12*F6/HZ)),:);
Control1_2alpha=CONTROL1((round((8.1*F6/HZ)+(F6)):round(12*F6/HZ)+(F6)),:);
Control1_3alpha=CONTROL1((round((8.1*F6/HZ)+(2*F6)):round(12*F6/HZ)+(2*F6)),:);
Control1_4alpha=CONTROL1((round((8.1*F6/HZ)+(3*F6)):round(12*F6/HZ)+(3*F6)),:);
Control1_5alpha=CONTROL1((round((8.1*F6/HZ)+(4*F6)):round(12*F6/HZ)+(4*F6)),:);
Control1_6alpha=CONTROL1((round((8.1*F6/HZ)+(5*F6)):round(12*F6/HZ)+(5*F6)),:);
ControlAlpha1=cat(1,Control1_1alpha,Control1_2alpha,Control1_3alpha,Control1_4alpha,Control1_5alpha,Control1_6alpha);
ControlAlpha1=ControlAlpha1';

ControlAlpha1Promedio=mean(ControlAlpha1');
ControlAlpha1EntropyShannon=abs(shannon_entro(ControlAlpha1'));
ControlAlpha1EntropyTsallis=abs(Tsallis_entro(ControlAlpha1',2));
ControlAlpha1Maximo=max(ControlAlpha1');
ControlAlpha1AreaBajolaCurva=trapz(ControlAlpha1');
ControlAlpha1DesvStan=std(ControlAlpha1');
ControlAlpha1Mediana=median(ControlAlpha1');
ControlAlpha1Varianza=var(ControlAlpha1');
ControlTheta1RMS=rms(ControlAlpha1');
SaveAlphaControl01=cat(1,ControlAlpha1Promedio,ControlAlpha1EntropyShannon,ControlAlpha1Maximo,ControlAlpha1EntropyTsallis,ControlAlpha1AreaBajolaCurva,ControlAlpha1DesvStan,ControlAlpha1Mediana,ControlAlpha1Varianza,ControlTheta1RMS);
SaveAlphaControl01=SaveAlphaControl01';

clear ControlBetaHistogramaCaracteristica01
Control1_1beta=CONTROL2((round((8.1*F7/HZ2)):round(20*F7/HZ2)),:);
Control1_2beta=CONTROL2((round((8.1*F7/HZ2)+(F7)):round(20*F7/HZ2)+(F7)),:);
Control1_3beta=CONTROL2((round((8.1*F7/HZ2)+(2*F7)):round(20*F7/HZ2)+(2*F7)),:);
Control1_4beta=CONTROL2((round((8.1*F7/HZ2)+(3*F7)):round(20*F7/HZ2)+(3*F7)),:);
Control1_5beta=CONTROL2((round((8.1*F7/HZ2)+(4*F7)):round(20*F7/HZ2)+(4*F7)),:);
Control1_6beta=CONTROL2((round((8.1*F7/HZ2)+(5*F7)):round(20*F7/HZ2)+(5*F7)),:);
ControlBeta1=cat(1,Control1_1beta,Control1_2beta,Control1_3beta,Control1_4beta,Control1_5beta,Control1_6beta);
ControlBeta1=ControlBeta1';
ControlBeta1Promedio=mean(ControlBeta1');
ControlBeta1EntropyShannon=abs(shannon_entro(ControlBeta1'));
ControlBeta1EntropyTsallis=abs(Tsallis_entro(ControlBeta1',2));
ControlBeta1Maximo=max(ControlBeta1');
ControlBeta1AreaBajolaCurva=trapz(ControlBeta1');
ControlBeta1DesvStan=std(ControlBeta1');
ControlBeta1Mediana=median(ControlBeta1');
ControlBeta1Varianza=var(ControlBeta1');
ControlBeta1RMS=rms(ControlBeta1');
SaveBetaControl01=cat(1,ControlBeta1Promedio,ControlBeta1EntropyShannon,ControlBeta1Maximo,ControlBeta1EntropyTsallis,ControlBeta1AreaBajolaCurva,ControlBeta1DesvStan,ControlBeta1Mediana,ControlBeta1Varianza,ControlBeta1RMS);
SaveBetaControl01=SaveBetaControl01';

clear ControlHuso_del_suenoHistogramaCaracteristica01
Control1_1huso_del_sueno=CONTROL2((round((12*F7/HZ2)):round(16*F7/HZ2)),:);
Control1_2huso_del_sueno=CONTROL2((round((12*F7/HZ2)+(F7)):round(16*F7/HZ2)+(F7)),:);
Control1_3huso_del_sueno=CONTROL2((round((12*F7/HZ2)+(2*F7)):round(16*F7/HZ2)+(2*F7)),:);
Control1_4huso_del_sueno=CONTROL2((round((12*F7/HZ2)+(3*F7)):round(16*F7/HZ2)+(3*F7)),:);
Control1_5huso_del_sueno=CONTROL2((round((12*F7/HZ2)+(4*F7)):round(16*F7/HZ2)+(4*F7)),:);
Control1_6huso_del_sueno=CONTROL2((round((12*F7/HZ2)+(5*F7)):round(16*F7/HZ2)+(5*F7)),:);
ControlHuso_del_sueno1=cat(1,Control1_1huso_del_sueno,Control1_2huso_del_sueno,Control1_3huso_del_sueno,Control1_4huso_del_sueno,Control1_5huso_del_sueno,Control1_6huso_del_sueno);
ControlHuso_del_sueno1=ControlHuso_del_sueno1';
ControlHuso_del_sueno1Promedio=mean(ControlHuso_del_sueno1');
ControlHuso_del_sueno1EntropyShannon=abs(shannon_entro(ControlHuso_del_sueno1'));
ControlHuso_del_sueno1EntropyTsallis=abs(Tsallis_entro(ControlHuso_del_sueno1',2));
ControlHuso_del_sueno1Maximo=max(ControlHuso_del_sueno1');
ControlHuso_del_sueno1AreaBajolaCurva=trapz(ControlHuso_del_sueno1');
ControlHuso_del_sueno1DesvStan=std(ControlHuso_del_sueno1');
ControlHuso_del_sueno1Mediana=median(ControlHuso_del_sueno1');
ControlHuso_del_sueno1Varianza=var(ControlHuso_del_sueno1');
ControlHuso_del_sueno1RMS=rms(ControlHuso_del_sueno1');
SaveHuso_del_suenoControl01=cat(1,ControlHuso_del_sueno1Promedio,ControlHuso_del_sueno1EntropyShannon,ControlHuso_del_sueno1Maximo,ControlHuso_del_sueno1EntropyTsallis,ControlHuso_del_sueno1AreaBajolaCurva,ControlHuso_del_sueno1DesvStan,ControlHuso_del_sueno1Mediana,ControlHuso_del_sueno1Varianza,ControlHuso_del_sueno1RMS);
SaveHuso_del_suenoControl01=SaveHuso_del_suenoControl01';

clear ControlComplejo_kHistogramaCaracteristica01
Control1_1complejo_k=CONTROL2((round((100*F7/HZ2)):round(115*F7/HZ2)),:);
Control1_2complejo_k=CONTROL2((round((100*F7/HZ2)+(F7)):round(115*F7/HZ2)+(F7)),:);
Control1_3complejo_k=CONTROL2((round((100*F7/HZ2)+(2*F7)):round(115*F7/HZ2)+(2*F7)),:);
Control1_4complejo_k=CONTROL2((round((100*F7/HZ2)+(3*F7)):round(115*F7/HZ2)+(3*F7)),:);
Control1_5complejo_k=CONTROL2((round((100*F7/HZ2)+(4*F7)):round(115*F7/HZ2)+(4*F7)),:);
ControlComplejo_k1=cat(1,Control1_1complejo_k,Control1_2complejo_k,Control1_3complejo_k,Control1_4complejo_k,Control1_5complejo_k);
ControlComplejo_k1=ControlComplejo_k1';

ControlComplejo_k1Promedio=mean(ControlComplejo_k1');
ControlComplejo_k1EntropyShannon=abs(shannon_entro(ControlComplejo_k1'));
ControlComplejo_k1EntropyTsallis=abs(Tsallis_entro(ControlComplejo_k1',2));
ControlComplejo_k1Maximo=max(ControlComplejo_k1');
ControlComplejo_k1AreaBajolaCurva=trapz(ControlComplejo_k1');
ControlComplejo_k1DesvStan=std(ControlComplejo_k1');
ControlComplejo_k1Mediana=median(ControlComplejo_k1');
ControlComplejo_k1Varianza=var(ControlComplejo_k1');
ControlComplejo_k1RMS=rms(ControlComplejo_k1');
SaveComplejo_kControl01=cat(1,ControlComplejo_k1Promedio,ControlComplejo_k1EntropyShannon,ControlComplejo_k1Maximo,ControlComplejo_k1EntropyTsallis,ControlComplejo_k1AreaBajolaCurva,ControlComplejo_k1DesvStan,ControlComplejo_k1Mediana,ControlComplejo_k1Varianza,ControlComplejo_k1RMS);
SaveComplejo_kControl01=SaveComplejo_kControl01';

ActividadMEAN=(ControlDelta1Promedio+ControlTheta1Promedio+ControlAlpha1Promedio+ControlBeta1Promedio+ControlHuso_del_sueno1Promedio);
ActividadDESV=(ControlDelta1DesvStan+ControlTheta1DesvStan+ControlAlpha1DesvStan+ControlBeta1DesvStan+ControlHuso_del_sueno1DesvStan);
ControlMEAN1ActivityDelta=(ControlDelta1Promedio./ActividadMEAN)';
ControlMEAN1ActivityAlpha=(ControlAlpha1Promedio./ActividadMEAN)';
ControlDESV1ActivityDelta=(ControlDelta1DesvStan./ActividadDESV)';
ControlDESV1ActivityTheta=(ControlTheta1DesvStan./ActividadDESV)';
ControlDESV1ActivityAlpha=(ControlAlpha1DesvStan./ActividadDESV)';
ControlDESV1ActivityBeta=(ControlBeta1DesvStan./ActividadDESV)';
ControlMEAN1ActivityAlpha_DeltaTheta=((ControlAlpha1Promedio)./(ControlDelta1Promedio+ControlTheta1Promedio))';
ControlMEAN1ActivityTheta_DeltaAlpha=((ControlTheta1Promedio)./(ControlDelta1Promedio+ControlAlpha1Promedio))';
ControlMEAN1ActivityDelta_AlphaTheta=((ControlDelta1Promedio)./(ControlAlpha1Promedio+ControlTheta1Promedio))';
ControlDESV1ActivityAlpha_DeltaTheta=((ControlAlpha1DesvStan)./(ControlDelta1DesvStan+ControlTheta1DesvStan))';
ControlDESV1ActivityTheta_DeltaAlpha=((ControlTheta1DesvStan)./(ControlDelta1DesvStan+ControlAlpha1DesvStan))';
ControlDESV1ActivityDelta_AlphaTheta=((ControlDelta1DesvStan)./(ControlAlpha1DesvStan+ControlTheta1DesvStan))';

%%
TiempoEntropyShannon=abs(shannon_entro(VentaneoControl1T'));
TiempoEntropyTsallis=abs(Tsallis_entro(VentaneoControl1T',2));
TiempoMaximo=max(VentaneoControl1T');
TiempoMinimo=min(VentaneoControl1T');
TiempoDesvStand=std(VentaneoControl1T');
TiempoKurtosis=kurtosis(VentaneoControl1T');
TiempoMediana=median(VentaneoControl1T');
TiempoPicoApico=peak2peak(VentaneoControl1T');
TiempoVarianza=var(VentaneoControl1T');
TiempoSkewness=skewness(VentaneoControl1T');
TiempoRMS=rms(VentaneoControl1T');

%%
Analisis_DataNarco03=cat(2,SaveDeltaControl01,SaveThetaControl01,SaveAlphaControl01,SaveBetaControl01,SaveComplejo_kControl01,SaveHuso_del_suenoControl01,ControlMEAN1ActivityDelta,ControlMEAN1ActivityAlpha,ControlDESV1ActivityDelta,ControlDESV1ActivityTheta,ControlDESV1ActivityAlpha,ControlDESV1ActivityBeta,ControlMEAN1ActivityAlpha_DeltaTheta,ControlMEAN1ActivityTheta_DeltaAlpha,ControlMEAN1ActivityDelta_AlphaTheta,ControlDESV1ActivityAlpha_DeltaTheta,ControlDESV1ActivityTheta_DeltaAlpha,ControlDESV1ActivityDelta_AlphaTheta);
TiempControl=cat(1,TiempoEntropyShannon,TiempoEntropyTsallis,TiempoMaximo,TiempoMinimo,TiempoDesvStand,TiempoKurtosis,TiempoMediana,TiempoPicoApico,TiempoVarianza,TiempoSkewness,TiempoRMS);
Wavelet_caracteristica_Narco03=TiempControl';
INPUT_PRUEBA3=cat(2,Wavelet_caracteristica_Control01,Analisis_DataControl01);