function unittest()
if ~exist('code_template.m', 'file')
    error('DO NOT rename code_template.m')
end
if ~exist('my_lagrangian_interpolation.m', 'file')
    error('go to download my_lagrangian_interpolation.m from course website')
end

N0 = 10;
hfe = @(x,y) max(max(abs(x-y) ./ (abs(x)+abs(y)+1e-3)));
x0 = sort(rand(1,N0));
y0 = rand(1,N0);
x = linspace(0,1,100);

y1 = my_lagrangian_interpolation(x0,y0,x);
y2 = code_template(x0,y0,x);

assert(hfe(y1,y2)<1e-3, "your neville interpolation haas large error");
disp('unittest passed');
end