% Erik Flickinger
% MAT 325 - 01
% Feb. 15 2019

%------------------
% Initialization
%------------------
format long
goal = double(.6418538861);  % target value for ln(1.9), truncated to 10 digits

%------------------
% Summation of (a)
%------------------
x = double(-.9); % hand-calculated
disp('Approximation of (a)...')

tic
sum = 0;
for n = 1:1000
    % add n'th term of series
    sum = sum + double((-1)*(x^n)/n);        
    % compare goal value to approximation
    if (abs(goal - floor(sum*10^10)/10^10) < .00000000001)
        % record elapsed time and stop loop
        time = toc;
        break
    end
end

% Print answer
fprintf('For (a), # terms = %s.\n', int2str(n))
fprintf('Value: %s\n', num2str(sum, 14))
fprintf('Error: %s\n', num2str(goal - sum))
fprintf('Total run time: %s seconds\n\n', num2str(time, 5))


%------------------
% Summation of (b)
%------------------
x = double(double(9)/double(29)); % hand-calculated
disp('Approximation of (b)...')

tic
sum = 0;
for n = 1:1000
    % add n'th term of series
    sum = sum + double(2*(x^(2*n-1))/(2*n-1)); 
    % compare approximation to goal value
    if (abs(goal - floor(sum*10^10)/10^10) < .00000000001) 
        % record elapsed time and stop loop
        time = toc;
        break
    end
end

% Print answer
fprintf('For (b), # terms = %s.\n', int2str(n))            
fprintf('Value: %s\n', num2str(sum, 14))                    
fprintf('Error: %s\n', num2str(goal - sum))
fprintf('Total run time: %s seconds\n\n', num2str(time, 5))
