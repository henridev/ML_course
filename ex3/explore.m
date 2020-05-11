fprintf('Loading and Visualizing Data ...\n')

load('ex3data1.mat'); % training data stored in arrays X, y
m = size(X)
fprintf('5000 rows for 5000 pictures 400 columns for 400 pixels per picture')
n = size(y)
fprintf('5000 row vector with outcomes values between 0 and 10')
y(500:600)