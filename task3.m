%TASK1

x=linspace(1,4,4)
y=logspace(1,4,4)
z1=rand(1,25)
z2=randn(1,25)
z1Floor=floor(3+5*z1)
z1Round=round(3+5*z1)
z1Ceil=ceil(3+5*z1)

plot(y,x)
figure
plot(z1)
hold on
plot(z2)
hold on
plot (z1Floor)
hold on
plot (z1Round)
hold on
plot (z1Ceil)
hold on

%TASK2

x=0:0.1:1;
z=0:0.1:1;
[X,Z]=meshgrid(x,z);
Y=sqrt(X.*Z);

surf(X,Z,Y);
hold on;
surf(X,Z,-Y);
hold on;
view([45 45 10])






