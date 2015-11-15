%Octave Tutorial : Week 2

%First video
PS1('>>  ');
1 == 2
1 && 0
1 ~= 2
1 || 0
a = 3
a =3;
b = 'hi';
a=pi;
a
disp(a)
disp(sprintf('2 decimals: %0.2f', a))
disp(sprintf('6 decimals: %0.6f', a))
format long
a
format short
a
A = [1 2; 3 4; 5 6]
v =[1 2 3]
v =[1; 2; 3]
v = 1:0.1:2
v = 1:6
ones(2,3)
2*ones(2,3)
w = zeros(1,3)
w = randn(3,3)
w = -6 + sqrt(10)*(randn(1,10000));
hist(w)
hist(w,50)
eye(4,4) %identity matrix
help eye

%Second video
A
size(A) %the answer is a matrix
size(size(A))
v  = [1:4]
length(v) %size of the longest dimension
length(A) %less intuitive in matrices
pwd
cd 'C:\Users\Benjamín\Desktop'
ls
cd 'C:\Users\Benjamín\Documents\MATLAB'
load featuresX.dat
load('featuresX.dat')
who %variables in the current scope
featuresX
size(featuresX)
whos %detailed view of who
clear featuresx
v = priceY(1:10)
cd 'C:\Users\Benjamín\Documents\GitHub\15_11_Machine_learning'
save hello.mat v;
clear
load hello.mat
ls
save hello.txt v -ascii %save as text
A = [1 2; 3 4; 5 6];
A(3,2)
A(:,2)
A(2,:)
A([1 3], :)
A(:,2) = [10; 11; 12] %assign new values
A = [A [100; 101; 102]] %append columns
A(:) % all elements of A into a single vector
A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
C = [A B] % same as C = [A, B] % append by columns
C = [A; B] % append by rows

%Third video
A = [1 2; 3 4; 5 6];
B = [11 12; 13 14; 15 16];
C = [1 1; 2 2];
A .* B %element wise 
A .^ 2
v = [1; 2; 3]
1 ./ v
1 ./ A
log(v)
exp(v)
abs(v)
-v
v + ones(length(v),1)
v + 1
A'
