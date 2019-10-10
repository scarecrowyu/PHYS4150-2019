hf = @(x) sin(x)-0.5;
gradient_hf = @cos;
x0 = 1.1;
result = my_newton_raphson_root(hf,gradient_hf,x0);
function ret = my_newton_raphson_root(hf, gradient_hf,x0)
step = 10;
for i = 1:step
    x0 = x0 - hf(x0)/gradient_hf(x0);
end
ret = x0;
end