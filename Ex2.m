X= -5:0.01:5;
y1 = X.^2+1;
y2 = X.^3+X.^2+X+1;

result = polyval([2 0 1],X);

figure(2)
subplot(2,1,1);
plot(X, y1);
title('polyval');
subplot(2,1,2);
plot(X,result);

figure(3)
plot(X,result);
hold on;
plot(X,y2,'g');
legend('y1', 'y2');

X= -5:0.01:5;
[rows, cols]=size(X);
%Y1 = zeros(1,cols);

% for i=1:cols
%     [aY1, Y2] = calculate(X);
%     Y1(i)=aY1;
%     
%     figure(997);
%     clf;grid;plot(Y1);    
% end
[Y1, Y2] = calculate(X);
figure(997);
clf;grid;plot(Y1);

figure;
subplot(1,2,1);
grid;
plot(X,y1,'g');
title('Exercise 1');
xlabel('X values');
ylabel('Y values');

subplot(1,2,2);
plot(Y1);
title('Exercise 2');
xlabel('X values');
ylabel('Y values');




function [Y1, Y2] = calculate (x)    
    Y1 = x.^2+1;
    Y2 = x.^3+x.^2+x+1;
end
