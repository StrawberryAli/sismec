clear all;
close all;
spring=40100;
sim("model.slx");
plot((ans.t),ans.x_t, 'LineWidth', 2);
hold on;
leg(counter)=sprintf('spring= %.2f', spring);
counter=counter+1;

legend(leg);
grid on;
