%% ------------------------- SITUATION -------------------------
% You wish to determine how many years it will take a certain investment to earn $1,000,000. 
% For the first 10 years, apart from the initial $100 investment, you put in $10 a month. 
% After 20 years, you pull $2000 dollars a month from the total investment.
% Calculate how many years it will take if the interest compounds on the total by a factor of 2.5% per month. 
% Note, assume the compounding happens after you either put in or pull from the total investment. Also, assume the year count starts at zero.
% You also want to see how the accumulation happened, so you keep a variable called total_accum that stores yearly values of the total investment. This should be a vector with yearly totals.
% After it has $1M, plot the years vs total accumulated using the function semilogy.
% Store the total amount of years it takes in the variable year.

%% ------------------------- SOLUTION -------------------------

% Money Parameters
ini_invest = 100;
int_rate = 0.025;
bal = ini_invest;
total_accum = [];
goal_ammount = 1000000;

% Money Transfer
deposit = 10;
withdraw = 2000;

% Date Counters
year = 0;
month_count = 0;

while bal < goal_ammount
    for month = 1:12
        month_count = month_count + 1;
        
        if year < 10 % During first 10 years
            bal = bal + deposit;
        end

        if year >= 20 % After 20 years
            bal = bal - withdraw;
        end
        % In every end of the year, balance would be given interest rate
        bal = bal * (1 + int_rate); %breaks if goal is met
        if bal >= goal_ammount
            break;
        end
    end
    year = year + 1; % Yearly Tracking after the for loop ends
    total_accum = [total_accum, bal]; % Append yearly balance
    if bal >= goal_ammount %breaks if goal is met
        break;
    end
end

% Semilogy of the Problem
semilogy(total_accum);
title('Investment Growth Over Time (Years vs. Total Accumulated)');
xlabel('Years');
ylabel('Total Accumulated ($)');
grid on;
years_labels = 1:length(total_accum); 
set(gca, 'xtick', years_labels);
set(gca, 'xticklabel', years_labels);

% PROGRAMMED BY @jacovjs
