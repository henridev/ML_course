t = [0:0.01:1];
size(t)

y1 = sin(2*pi*4*t);



y2 = cos(2*pi*4*t)

% plot(t, y2);

print -dpng 'testPlot.png'


% separate figures

% figure(1); plot(t,y1, 'g')
% figure(2); plot(t,y2 'b')


subplot(1,2,1);
plot(t,y1, 'g')
axis([0.5 1 -1 1])

subplot(1,2,2);
% visualize matrix
A = magic(10)

imagesc(A), colorbar