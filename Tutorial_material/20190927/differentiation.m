h = 0.1;
x0 = 0;
x = x0-2*h:h:x0+2*h;
y = sin(x);
f1 = (y(1)-8*y(2)+8*y(4)-y(5))/(12*h);
f2 = (-y(1)+16*y(2)-30*y(3)+16*y(4)-y(5))/(h^2);