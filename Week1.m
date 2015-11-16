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
a = [1 15 2 0.5]
val = max(a)
[val, ind] = max(a) %interesting
a < 3
find(a < 3) % indexes
A = magic(3) %magic squares!!
[r, c] = find(A >= 7)
sum(a)
prod(a)
floor(a)
ceil(a)
max(rand(3), rand(3)) %element wise
max(A,[],1)%column wise maximum
max(A,[],2)%row wise maximum
max(max(A)) % same as max(A(:))
A = magic(9)
sum(A,1) 
sum(A,2)
A .* eye(9)
sum(sum(A .* eye(9)))
sum(sum(A .* flipud(eye(9))))
A = magic(3)
temp= pinv(A)
temp * A

%Fourth video : Plotting
t=[0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t,y1)
y2 =  cos(2*pi*4*t);
plot(t,y1)
hold on;
plot(t,y2,'r')
xlabel('time')
ylabel('value')
legend('sin','cos')
title('my plot')
cd 'C:\Users\Benjamín\Documents\GitHub\15_11_Machine_learning'
print -dpng 'myPlot.png'
close
figure(1); plot(t,y1);
figure(2); plot(t,y2);
subplot(1,2,1); %PLot in 1x2 grid and accesses the first element of it
plot(t,y1);
subplot(1,2,2); 
plot(t,y2);
axis([0.5 1 -1 1])
print -dpng 'myPlot2.png'
clf; %clear
A = magic(5)
imagesc(A) %one color per different number
imagesc(A), colorbar, colormap gray; %scale relative to number
imagesc(magic(15)), colorbar, colormap gray;
a=1, b=2, c=3 %comma chainning %print

%Fifth video : Control statements
v=zeros(10,1)
for i=1:10,
	v(i) = 2^i;
end;
v
indices = 1:10;
for i=indices,
	disp(i);
end;
i = 1;
while i <= 5,
	v(i) = 100;
	i = i+1;
end;
i = 1;
while true,
	v(i) = 999;
	i = i+1;
	if i == 6,
		break;
	end;
end;
v
v(1) = 2;
if v(1) == 1,
	disp('The value is one');
elseif v(1) == 2;
	disp('The value is two');
else
	disp('The value is not one or two');
end;
%to define a funtion you have to generate a file .m
	%function y = squareThisNumber(x)
	%y = x^2;	
squareThisNumber(5)
%Octave search path
addpath('C:\Users\Benjamín\Documents\GitHub\15_11_Machine_learning') % Now I can call the function from wherever
%other function could be:
	%function [y1, y2] = squareAndCubeThisNumber(x)
	%y1 = x^2;
	%y2 = x^3;
[a,b] = squareAndCubeThisNumber(5)
X = [1 1; 1 2; 1 3];
y = [1; 2; 3];
theta = [0;1];
%Cost Function!
% function J = costFunction(X, y, theta)
% % X is the design matrix containing training examples
% % y is the class labels
% m = size(X,1); 			% number of training examples
% predictions = X*theta;  % prediction of the hypothesis an all m examples
% sqrErrors = (predictions - y) .^ 2; % squared errors
% J = 1/(2*m) * sum(sqrErrors);

j = costFunction(X,y,theta)
theta = [0;0];
j = costFunction(X,y,theta)
(1^2 + 2^2 + 3^2)/(2*3)



%save in github
cd 'C:\Users\Benjamín\Documents\GitHub\15_11_Machine_learning'
git add *
git commit -m 'Second week Learning Matlab'
git push -u origin master