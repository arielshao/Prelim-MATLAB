%% Practical Session 1

%% 1.2.1 Using MATLAB'S build-in help system
help factorial

%% 1.2.2 Assigning to variables
a=4
b=factorial(4)
B=5
a
b
my_var= a^2+b/10+2*B
pi =3.2
sin(pi)
clear
pi


a=6;
b=3;
c=a*b;
c=2*(c+6)

%% 1.2.3 FLoating-point numbers
5/3
pi
sqrt(2)
sin(0)
sin(pi)

format long 
sin(pi)

%% 1.2.4 Symbolic computing
sym('6/9')
sym('1')
a=sym('pi')
sin(a)
b=sym('2')
c=sqrt(b)
c^2

sym(1)
sym(1000)
sym(6/9)

%% 1.2.5 Saving your work in .m file scripts
% Done :) 

%% 1.2.6 Using symbols instead of numbers 
x= sym('x')
y= asin(x^3)
z=sin(y)

clear 
x= sym('x')
y= sym('y')
f=(x^3+x^2)*sqrt(y)*exp(x)

clear 
syms x y z a b c r s t
f=sin(a*x)*sqrt(tan(r*t-x)+sin(t-1)*tanh(s^2*y))

clear
a=sym(6)
b=sym(2)*a
% c=sym('2*a')  % this term shows error!

clear
syms a x b
f=a*x+b

str2sym('sqrt(2)')

clear 
a=sym('6/9')
b=6/9
whos 

clear
x=sym('x')
f=512*x^4+13/10*x^2+256*x^(2/3)
% because the alternative is just horrible:
g= sym(512)*x^(sym(4))+sym(13)/sym(10)*x^sym(2)+...
   sym(256)*x^(sym(2)/sym(3))
f-g % but they are the same in the end
pretty(f)

double_e=exp(1)
symbolic_e= exp(sym(1))
log(symbolic_e)

% how to write complex numbers? 
(2+3*1i)^4 
(2+3*i)^4

syms x y 
z=x+1i*y
sin(z)
con(z)

%% 1.2.7 Build-in functions and help 
help cos
help clear
help whos
help syms
lookfor hyperbolic

%% 1.3.1 Simple line graphs
figure(1);clf;
syms x
y=sin(10/(1+x^2));
fplot(y)
fplot(y, [-5,10])
ylim([-1.2 1.2])

% You cna draw more than one curve
clear 
figure(2);clf;
syms x 
fplot(cos(x))
hold on 
h=fplot(sin(x));
set(h, 'color', 'red')
set(h, 'linestyle', '--')
set(h, 'linewidth', 3)
legend('cos', 'sin')
title('my colourful plots')


figure(3);clf;
h=fplot(atan(x));
set(h, 'linewidth', 4)
set(h,'color', [0.5 0 0.5])

%% 1.3.2 Parametric and polar plots
clear
figure(4);clf;
syms t
fplot(2*cos(t), sin(t), [0, 2*pi])
axis equal

clear
figure(5);clf;
syms t
ezpolar(1-cos(t), [0, 2*pi])

% alternative to fplot
clear
figure(6);clf;
syms x
y=sin(10/(1+x^2));
ym=matlabFunction(y)
xx=linspace(-5, 10, 512);
plot(xx, ym(xx))

%% Animation 
clear 
figure(7);clf;
syms x y 
ezsurf(real(atan(x+1i*y)), 'circ')
shading flat
camlight left
material shiny

for a=1:90
    view([-30,a])
    pause(0.1)
end




