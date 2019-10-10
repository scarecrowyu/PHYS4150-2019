
hf1 = @(x) sin(x)-0.3;
result = my_bisection_root(hf1,-0.5,1);


function ret = my_bisection_root(hf,a,b)
step = 10;
fa = hf(a);
fb = hf(b);
assert(fa*fb<0, 'bisection method require function value signs differ');
for i = 1:step
    c = (a+b)/2;
    fc = hf(c);
    if fc*fa<0
        fb = fc; 
        b = c;
    elseif fc*fb<0
        fa = fc;
        a = c;
    else 
        break;
    end
end
ret = c;
end
