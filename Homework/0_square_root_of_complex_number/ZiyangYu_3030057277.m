%{
please fill in the information in the square brackets []

name: [Ziyang Yu]
UID: [3030057277]
put on website or not [yes]
%}
function ret = code_template(x_real,x_img)
%the square root function 
%--------------start coding from here---------
ret = 0;
length = sqrt(x_real^2+x_img^2);
angle = atan(x_img/x_real);
length_new = sqrt(length);
angle_new = angle/2;
ret = length_new*cos(angle_new)+1i*length_new*sin(angle_new);
%--------------end coding--------
end