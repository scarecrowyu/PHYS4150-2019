hfe = @(x,y) max(max(abs(x-y)./(abs(x)+abs(y)+1e-3)));
disp(['relative error: ', num2str(hfe(code_template(), pi), 5)])
