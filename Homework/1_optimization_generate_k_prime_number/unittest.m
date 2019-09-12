hfe = @(x,y) max(max(abs(x-y)./(abs(x)+abs(y)+1e-3)));
assert(hfe(solution(7), [2,3,5,7,11,13,17])<1e-3, 'your function result has large error')
assert(hfe(solution(9), [2,3,5,7,11,13,17,19,23])<1e-3, 'your function result has large error')
disp('unittest pass, but this does not mean two improments have been added')
