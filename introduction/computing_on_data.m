A = [1,2;3,4;5,6]
B = [7,8;9,10;11,12]
C = [2,3;4,5]
v = [1;2;3]

matrixMultiplication = A*C;


elementWiseMatrix = A .* B;

elementWiseSquare = A.^2;

elementWiseInvers = 1./A;


logVector = log(v);


absoluteVector = abs(v);


vPlusOne = v + ones(length(v), 1)


Atranspose = A'


a = [0.1455 , 0.1300 , 3 , 60]
[val, ind] = max(a)

a < 3

find(a > 3)

A = magic(3)

[r, c] = find(B >= 10)

sum(a)

prod(a)

floor(a)

ceil(a)

% column wise max 
max(A, [], 1)
% row wise max 
max(A, [], 2)


magicSquare = magic(9)

% column sum
sum(magicSquare, 1) 
% row sum
sum(magicSquare, 2) 

magicSquare .* eye(9)


temp = pinv(magicSquare) 

temp * magicSquare 