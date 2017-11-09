%HW6
%Darlan Minussi

% Problem 1. Curve fitting. 
% Part 1. Take 10 x values on the interval 0 < x <= 10 and then create y
% values from the x values by plugging the x values into a third order
% polynomial of your choice. Add random noise to the data by choosing a random number
% in the interval [-D, D]. Start with D = 1. Plot your data in the x-y plane.

xx = (1 + (10-1)*rand(10,1));
yy = 3*(xx.^3) - 4*(xx.^2) + 1*(xx) + 1 + (-1 + (1-(-1))*rand(1,1));
plot(xx, yy, 'r.', 'MarkerSize', 24);

% Part 2. Fit your data with polynomials from order 1 to 9. Plot the fitted
% polynomials together with the data. 


figure;
hold on;
coeff = {};

plotStyle = {'b-','k-','r-','y-','m-','c-','g-','b--', 'g--'};
plot(xx, yy, 'r.', 'MarkerSize', 24); 
for ii = 1:9

coeff{ii} = polyfit(xx, yy, ii);  
plot(sort(xx), sort(polyval(coeff{ii}, xx)), plotStyle{ii}, 'LineWidth', 2);
legendInfo{ii} = ['Poly = ' num2str(ii)];
legend(['data' legendInfo])
end
xlabel('xx');
ylabel('yy');
hold off;


% From polynomial 2 and so forth we can see a better fit of the data
% compared to just a linear fit on a first degree equation. The fit get's
% progressively better and it's optimal at poly3. Increasing polynomial
% orders are probably overfitting the model.

% Part 3. On a separate plot, plot the R^2 and adjusted R^2 as a function
% of the order of the polynomial. 

[fit1, gof1] = fit(xx, yy, 'Poly1');
[fit2, gof2] = fit(xx, yy, 'Poly2');
[fit3, gof3] = fit(xx, yy, 'Poly3');
[fit4, gof4] = fit(xx, yy, 'Poly4');
[fit5, gof5] = fit(xx, yy, 'Poly5');
[fit6, gof6] = fit(xx, yy, 'Poly6');
[fit7, gof7] = fit(xx, yy, 'Poly7');
[fit8, gof8] = fit(xx, yy, 'Poly8');
[fit9, gof9] = fit(xx, yy, 'Poly9');

rsq = [];

rsq(1) = gof1.rsquare;
rsq(2) = gof2.rsquare;
rsq(3) = gof3.rsquare;
rsq(4) = gof4.rsquare;
rsq(5) = gof5.rsquare;
rsq(6) = gof6.rsquare;
rsq(7) = gof7.rsquare;
rsq(8) = gof8.rsquare;
rsq(9) = gof9.rsquare;

plot(1:9, rsq, 'r.', 'MarkerSize', 24);

radj = [];

radj(1) = gof1.adjrsquare;
radj(2) = gof2.adjrsquare;
radj(3) = gof3.adjrsquare;
radj(4) = gof4.adjrsquare;
radj(5) = gof5.adjrsquare;
radj(6) = gof6.adjrsquare;
radj(7) = gof7.adjrsquare;
radj(8) = gof8.adjrsquare;
radj(9) = gof9.adjrsquare;

plot(1:9, radj, 'r.', 'MarkerSize', 24);

% Part 4. Repeat parts 1 - 3 for D = 10 and D = 1000. Comment on the
% results. 

xx_10 = (1 + (10-1)*rand(10,1));
yy_10 = 3*xx_10.^3 - 4*xx_10.^2 + 1*xx_10 + 1 + (-10 + (10-(-10))*rand(1,1));
plot(xx_10, yy_10, 'r.', 'MarkerSize', 24);


figure;
hold on;
coeff = {};

plotStyle = {'b-','k-','r-','y-','m-','c-','g-','b--', 'g--'};
plot(xx_10, yy_10, 'r.', 'MarkerSize', 24); 
for ii = 1:9

coeff{ii} = polyfit(xx_10, yy_10, ii);  
plot(sort(xx_10), sort(polyval(coeff{ii}, xx_10)), plotStyle{ii}, 'LineWidth', 2);
legendInfo{ii} = ['Poly = ' num2str(ii)];
legend(['data' legendInfo])
end
xlabel('xx_10');
ylabel('yy_10');
hold off;

[fit1, gof1] = fit(xx_10, yy_10, 'Poly1');
[fit2, gof2] = fit(xx_10, yy_10, 'Poly2');
[fit3, gof3] = fit(xx_10, yy_10, 'Poly3');
[fit4, gof4] = fit(xx_10, yy_10, 'Poly4');
[fit5, gof5] = fit(xx_10, yy_10, 'Poly5');
[fit6, gof6] = fit(xx_10, yy_10, 'Poly6');
[fit7, gof7] = fit(xx_10, yy_10, 'Poly7');
[fit8, gof8] = fit(xx_10, yy_10, 'Poly8');
[fit9, gof9] = fit(xx_10, yy_10, 'Poly9');

rsq = [];

rsq(1) = gof1.rsquare;
rsq(2) = gof2.rsquare;
rsq(3) = gof3.rsquare;
rsq(4) = gof4.rsquare;
rsq(5) = gof5.rsquare;
rsq(6) = gof6.rsquare;
rsq(7) = gof7.rsquare;
rsq(8) = gof8.rsquare;
rsq(9) = gof9.rsquare;

plot(1:9, rsq, 'r.', 'MarkerSize', 24);

radj = [];

radj(1) = gof1.adjrsquare;
radj(2) = gof2.adjrsquare;
radj(3) = gof3.adjrsquare;
radj(4) = gof4.adjrsquare;
radj(5) = gof5.adjrsquare;
radj(6) = gof6.adjrsquare;
radj(7) = gof7.adjrsquare;
radj(8) = gof8.adjrsquare;
radj(9) = gof9.adjrsquare;

plot(1:9, radj, 'r.', 'MarkerSize', 24);

% D = 100

xx_100 = (1 + (10-1)*rand(10,1));
yy_100 = 3*xx_100.^3 - 4*xx_100.^2 + 1*xx_100 + 1 + (-100 + (100-(-100))*rand(1,1));
plot(xx_100, yy_100, 'r.', 'MarkerSize', 24);


figure;
hold on;
coeff = {};

plotStyle = {'b-','k-','r-','y-','m-','c-','g-','b--', 'g--'};
plot(xx_100, yy_100, 'r.', 'MarkerSize', 24); 
for ii = 1:9

coeff{ii} = polyfit(xx_100, yy_100, ii);  
plot(sort(xx_100), sort(polyval(coeff{ii}, xx_100)), plotStyle{ii}, 'LineWidth', 2);
legendInfo{ii} = ['Poly = ' num2str(ii)];
legend(['data' legendInfo])
end
xlabel('xx_100');
ylabel('yy_100');
hold off;


[fit1, gof1] = fit(xx_100_10, yy_100_10, 'Poly1');
[fit2, gof2] = fit(xx_100_10, yy_100_10, 'Poly2');
[fit3, gof3] = fit(xx_100_10, yy_100_10, 'Poly3');
[fit4, gof4] = fit(xx_100_10, yy_100_10, 'Poly4');
[fit5, gof5] = fit(xx_100_10, yy_100_10, 'Poly5');
[fit6, gof6] = fit(xx_100_10, yy_100_10, 'Poly6');
[fit7, gof7] = fit(xx_100_10, yy_100_10, 'Poly7');
[fit8, gof8] = fit(xx_100_10, yy_100_10, 'Poly8');
[fit9, gof9] = fit(xx_100_10, yy_100_10, 'Poly9');

rsq = [];

rsq(1) = gof1.rsquare;
rsq(2) = gof2.rsquare;
rsq(3) = gof3.rsquare;
rsq(4) = gof4.rsquare;
rsq(5) = gof5.rsquare;
rsq(6) = gof6.rsquare;
rsq(7) = gof7.rsquare;
rsq(8) = gof8.rsquare;
rsq(9) = gof9.rsquare;

plot(1:9, rsq, 'r.', 'MarkerSize', 24);

radj = [];

radj(1) = gof1.adjrsquare;
radj(2) = gof2.adjrsquare;
radj(3) = gof3.adjrsquare;
radj(4) = gof4.adjrsquare;
radj(5) = gof5.adjrsquare;
radj(6) = gof6.adjrsquare;
radj(7) = gof7.adjrsquare;
radj(8) = gof8.adjrsquare;
radj(9) = gof9.adjrsquare;

plot(1:9, radj, 'r.', 'MarkerSize', 24);

% Increasing the errors bring the R-square values down due to the more
% imprecision in finding a good fit for the curve. R-adjusted are slightly
% smaller than R-square due to the correction of the sample size.


% Part 5. Now repeat parts 1-3 but take 100 x values on the interval 0 < x <=
% 10. Comment on the results. 

xx_p5 = (1 + (10-1)*rand(100,1));
yy_p5 = 3*xx_p5.^3 - 4*xx_p5.^2 + 1*xx_p5 + 1 + (-100 + (100-(-100))*rand(1,1));
plot(xx_p5, yy_p5, 'r.', 'MarkerSize', 24);


figure;
hold on;
coeff = {};

plotStyle = {'b-','k-','r-','y-','m-','c-','g-','b--', 'g--'};
plot(xx, yy, 'r.', 'MarkerSize', 24); 
for ii = 1:9

coeff{ii} = polyfit(xx_p5, yy_p5, ii);  
plot(sort(xx_p5), sort(polyval(coeff{ii}, xx_p5)), plotStyle{ii}, 'LineWidth', 2);
legendInfo{ii} = ['Poly = ' num2str(ii)];
legend(['data' legendInfo])
end
xlabel('xx_p5');
ylabel('yy_p5');
hold off;


[fit1, gof1] = fit(xx_p5, yy_p5, 'Poly1');
[fit2, gof2] = fit(xx_p5, yy_p5, 'Poly2');
[fit3, gof3] = fit(xx_p5, yy_p5, 'Poly3');
[fit4, gof4] = fit(xx_p5, yy_p5, 'Poly4');
[fit5, gof5] = fit(xx_p5, yy_p5, 'Poly5');
[fit6, gof6] = fit(xx_p5, yy_p5, 'Poly6');
[fit7, gof7] = fit(xx_p5, yy_p5, 'Poly7');
[fit8, gof8] = fit(xx_p5, yy_p5, 'Poly8');
[fit9, gof9] = fit(xx_p5, yy_p5, 'Poly9');

rsq = [];

rsq(1) = gof1.rsquare;
rsq(2) = gof2.rsquare;
rsq(3) = gof3.rsquare;
rsq(4) = gof4.rsquare;
rsq(5) = gof5.rsquare;
rsq(6) = gof6.rsquare;
rsq(7) = gof7.rsquare;
rsq(8) = gof8.rsquare;
rsq(9) = gof9.rsquare;

plot(1:9, rsq, 'r.', 'MarkerSize', 24);

radj = [];

radj(1) = gof1.adjrsquare;
radj(2) = gof2.adjrsquare;
radj(3) = gof3.adjrsquare;
radj(4) = gof4.adjrsquare;
radj(5) = gof5.adjrsquare;
radj(6) = gof6.adjrsquare;
radj(7) = gof7.adjrsquare;
radj(8) = gof8.adjrsquare;
radj(9) = gof9.adjrsquare;

plot(1:9, radj, 'r.', 'MarkerSize', 24);

% Increasing the number of points to 100 makes the R-square values goes up
% due to a better fit of the equation.

% Problem 2. Basic statistics. 
% Part 1. Consider two different distributions - Gaussian numbers with a mean of
% 0 and variance 1 and Gaussian numbers with a mean of 1 and variance 1.

rng(600);
g1 = normrnd(0, 1, 1, 500);
g2 = normrnd(1, 1, 1, 500);

% (1) Make a plot of the average p-value for the t-test comparing N random
% numbers chosen from each of these two distributions as a function of N.

x1 = {};
y1 = {};


for i = 1:100
            x1{i} = randsample(g1,i);
            y1{i} = randsample(g2, i);
end


for z = 1:100
            [is_sig(z), pval(z)] = ttest2(x1{z},y1{z});
end

plot(1:numel(pval), pval, 'r.', 'MarkerSize', 24);
xlabel('N');
ylabel('P-value');
    

% Part 2. Now keep the first distribution the same, but vary the mean of
% the second distribution between 0 and 10 with the same variance and
% repeat part one. Make a plot of all of these different curves on the same
% set of axes. What is special about the case where the mean of the second
% distribution is 0? 

g2p2 = {};

for jj = 0:10
g2p2{jj+1} = normrnd(jj, 1, 1, 1000);
end

x1p2 = {};
y1p2 = {};

z = 1;
while z <= 11
            x1p2{z} = randsample(g1,100);
            y1p2{z} = randsample(g2p2{z}, 100);
            z = z + 1;
end

for zz = 1:11
            [is_sigp2(zz), pvalp2(zz)] = ttest2(x1p2{zz},y1p2{zz});
end


plot(1:11, pvalp2, 'r.', 'MarkerSize', 24);
xlabel('N');
ylabel('P-value');

% when mean for the second distribution is 0 and the ttest for the two
% distributions are performed the p-value is not significant since the mean
% of the two distributions being tested are the same.


% Part 3. Now keep the means of the two distributions at 0 and 1 as in part
% 1, but vary the variance of both distributions simultaneiously between 0.1 and 10 and plot the 
% p-values vs the number of numbers drawn as before. Comment on your results.  

g1p3 = {};
g2p3 = {};

counterg1 = 1;
while counterg1 <= 10
    for tt = 0.1:1:10
        g1p3{counterg1} = normrnd(0, tt, 1, 1000);
        counterg1 = counterg1 + 1;
    end
end

counterg2 = 1;
while counterg2 <= 10
    for tt = 0.1:1:10
        g2p3{counterg2} = normrnd(1, tt, 1, 1000);
        counterg2 = counterg2 + 1;
    end
end

p = 1;
while p <= 100
    for jj = 1:10
        x1p3{p} = randsample(g1p3{jj} ,p);
        y1p3{p} = randsample(g2p3{jj}, p);
        p = p + 1;
    end
end

for zz = 1:numel(x1p3)
            [is_sigp3(zz), pvalp3(zz)] = ttest2(x1p3{zz},y1p3{zz});
end

plot(1:numel(pvalp3), pvalp3, 'r.', 'MarkerSize', 24);
xlabel('N');
ylabel('P-value');

% since the variance increases from 0.1 to 10 we see fluctations in the
% p-value number every 10 tests. It can also be seen that as the number of
% samples collected increases there's a trend of the p-values to become
% smaller due to the increased confidence in the ttest calculation.

