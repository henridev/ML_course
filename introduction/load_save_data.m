variables = 2*randn(3, 10)'
prices = 3*randn(1,10)'

save prices.mat prices

clear
whos

load prices.mat

prices
whos

save prices.txt prices -ascii % save it as ascii text


A = [1, 2; 3, 4; 5, 6]
rowThree_columnTwo = A(3,2)
secondColumn = A(:,1:2)
firstRow = A(1,:)

% replacement of column 
A(:,2) = [10, 11, 12]
% append a column to A
A = [A, [100; 101; 102]]


B = A(:) % put all a elements in single column vector


A = [2,4,5;4,7,6]
B = [2,3,5;10,7,11]
C = [A, B]


C = [A; B]