clear all
clc

pic1=imread('peppers.png');
pic2=imread('tape.png');

alpha = 0.5;

pic=alpha*pic1+(1-alpha)*pic2;
f=figure;
image(pic);

pos=get(f,'Position');
x0p=pos(1); %resmin x0ý
y0p=pos(2); %resmin y0ý
w=pos(3); %resmin geniþliði
h=pos(4); %resmin yükseklði
height=15;
width=400;
x0= w/2-width/2;
y0=5;

b=uicontrol('Parent',f,'Style','slider','position',...
    [x0,y0,width,height],'value',alpha,'min',0,'max',1);



title(['$\alpha=$',num2str(alpha)],'Interpreter','LaTex');
b.Callback = @(a1,a2) {image(a1.Value*pic1+(1-a1.Value)*pic2)...
    title(['$\alpha=$',num2str(a1.Value)],'Interpreter','LaTex');};