for k=1:6 % filas
    reset; % reset
        for reset=1:(length(Data)/Fs(Npaciente))/30  % (4812000/200)/30)=802
        VentaneoT(contador,:)=Data(k,((Fs(Npaciente)*30)*(reset-1)+1):((Fs(Npaciente)*30)*(reset-1)+(Fs(Npaciente)*30)));    
    contador=contador+1;
        end
end