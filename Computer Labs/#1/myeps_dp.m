% Erik Flickinger
% MAT 325 - 01
% Feb. 15 2019

format long

%------1. SP: if (e+1 <= 1)

e = double(1.0);

while(e+double(1.0) > double(1.0))
   e = double(e/2);
end

% e = 1.110223024625157e-16

%------2. SP: if(e1 <= 1)
e  = double(1.0); e = double(e/2);
e1 = double(e) + double(1);

while(e1 > 1)
   e = double(e/2);
   e1 = double(e) + double(1);
end

% e = 1.110223024625157e-16
% e1 = 1
% eps = 2.220446049250313e-16 = 2e
