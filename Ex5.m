load('tab_4.mat');

m=mean(tab_4(:));
mean(tab_4)
m
m*2
[x,y] = find(tab_4<m*2);
tab_4(x,y)=0;
