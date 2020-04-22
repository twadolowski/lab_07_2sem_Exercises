X= -5:0.01:5;
y1 = X.^2+1;
y2 = X.^3+X.^2+X+1;

figure(2)
plot(X,y1);
hold on;
plot(X,y2,'g');
legend('y1', 'y2');

X= -5:0.01:5;
[rows, cols]=size(X);
Y1 = zeros(1,cols);

for i=1:cols
    [aY1, Y2] = calculate(X(i));
    Y1(i)=aY1;
    
    figure(997);
    clf;grid;plot(Y1);    
end

figure;
subplot(1,2,1);
plot(X,y1,'g');
subplot(1,2,2);
plot(Y1);



function [Y1, Y2] = calculate (x)    
    Y1 = x.^2+1;
    Y2 = x.^3+x.^2+x+1;
end
