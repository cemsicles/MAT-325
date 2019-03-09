% function [out1,out2, ..., outN] = myfun(in1,in2,in3, ..., inN)

function p = bisect(a, b, TOL, n)

F = @(x) x^3 + 2*x^2 + 10*x - 20; % F(x)
printValues = @(i, a, b, p, FP, error) fprintf([ ...
    'For iteration i = %u:\n' ...
    'Interval = [%f, %f]\n' ...
    'F(p) = F(%f) = %f\n' ...
    'Error = %f\n\n'], i, a, b, p, FP, error);

% Step 1
i = 1;
FA = F(a);

fprintf('Starting bisection...\n\n');
tic
% Step 2 (repeat steps 3-6)
while i < n
    % Step 3
    error = (b - a)/2;
    p = a + error;
    FP = F(p);
    printValues(i, a, b, p, FP, error);
    % Step 4
    if (FP == 0 || error < TOL)
        time = toc
        return
    end
    % Step 5
    i = i + 1;
    % Step 6
    if (FA * FP > 0)
        a = p;
        FA = FP;
    else
        b = p;
    end
end

% Step 7
fprintf('Method failed after %u iterations.', i);
end