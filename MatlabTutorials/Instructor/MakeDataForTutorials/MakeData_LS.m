%% 
clear
close all
clc

%% Generate data for a linear problem
x = 0:.1:10;
y = 5+3*x;
y = y + randn(size(y));
plot(x,y,'.')
x = x';
y = y';
save('../../Data/LS_Problem1.mat','x','y')

%% Generate data for a non-linear problem
x = 3:.1:10;
y = 5+3*x+2*x.^2;
y = y + 20*randn(size(y));
figure
plot(x,y,'.')
x = x';
y = y';
save('../../Data/LS_Problem2.mat','x','y')



%% Generate data for a the excercise 
x = -2:.1:2;
y = 2+4*x-6*x.^2+10*x.^4+1*x.^7;
y = y + 20*randn(size(y));
n = length(x);

figure
plot(x,y,'.','MarkerSize',20)
x = x';
y = y';
save('../../Data/LS_Excercise.mat','x','y')


for kk=1:8
    X = [ones(n,1)];
    for ll=1:kk
        X = [X x.^ll];
    end
    bet = X\y;
    y_model = X*bet;
    e = norm(y-y_model);
    fprintf('Error of order %g model: %g\n',kk,e)
    
    hold on, plot(x,y_model)
end
legend('data','linear','quadratic','cubic','quartic', ...
     '5th degree', '6th degree', '7th degree', '8th degree')
