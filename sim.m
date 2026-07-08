clear all;
close all;
counter=1;

massa = 101.9368;
damper = 0;
%spring= 1e5;
frequencia = 25.13;
%v_ini = 1.42;

for spring=1000:1000:5000.0
    sim("model.slx");
    plot((ans.t),ans.x_t, 'LineWidth', 2);
    hold on;
    leg(counter)=sprintf('spring= %.2f', spring);
    counter=counter+1;
end

legend(leg);
grid on;
