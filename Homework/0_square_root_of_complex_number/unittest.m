hfe = @(x,y) max(max(abs(x-y)./(abs(x)+abs(y)+1e-3)));
assert(hfe(ZiyangYu_3030057277(3,4),sqrt(3+4i))<1e-3, 'your function has large error')
assert(hfe(ZiyangYu_3030057277(1000,1),sqrt(1000+1i))<1e-3, 'your function has large error')
disp('unittest passed')