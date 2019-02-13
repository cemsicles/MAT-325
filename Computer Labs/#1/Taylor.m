format long

%------------------
% Initialization
%------------------
goal = '6.418538862e-01';  % target value for ln(1.9)
approx = double(0);        % value of our approximations
syms k;                    % for symsum function
time = -1;                 % for measuring computer runtime


%------------------
% Summation of (a)
%------------------
x = double(-.9); % hand-calculated
fprintf('Approximation of (a)...\n')

tic
for n = 1:1000
    % try summing 'n' terms of the series
    approx = double((-1)*symsum((x^k)/k, k, 1, n));
    % compare approximation to goal value
    if (strcmp(num2str(approx, '%10.9e'), goal))
        % record elapsed time and stop loop
        time = toc;
        break
    end
end

% Print answer
fprintf('For (a), # terms = %s.\n', int2str(n))
fprintf('Total run time: %s seconds\n\n', num2str(time, 5))


%------------------
% Summation of (b)
%------------------
x = double(double(9)/double(29)); % hand-calculated
fprintf('Approximation of (b)...\n')

tic
for n = 1:1000
    % try summing 'n' terms of the series
    approx = double(2*symsum((x^(2*k-1))/(2*k-1), k, 1, n));
    % compare approximation to goal value
    if (strcmp(num2str(approx, '%10.9e'), goal))
        % record elapsed time and stop loop
        time = toc;
        break
    end
end

% Print answer
fprintf('For (b), # terms = %s.\n', int2str(n))
fprintf('Total run time: %s seconds\n\n', num2str(time, 5))
