x = 0.55;
x0 = -0.2:0.2:1.2;
fx = [-0.7328, -0.7071, -0.6528, -0.3981, 0.721, 3.1165, 8.4372, 18.0797];
fx = fx.';
n = size(x0,2);
result = 0;

for i=1:n
    fi = fx(i);
    xi = x0(i);
    pi = 1;
    for j = 1:n
        if j~=i
            pi = pi*(x-x0(j))/(xi-x0(j));
        end
    end
    result = result+ pi*fi;
end
