%% --------------------SECTIONS--------------------
%               i. Initialization
%               ii. Calculations
%          PROGRAMMED BY JACOVJS
%% --------------------INITIALIZATION--------------------
load('lab_data');
fprintf("Objects [in Collision]:\n" + ...
    "\t1 - billiard ball\n" + ...
    "\t2 - tennis ball\n" + ...
    "\t3 - clay ball\n");

% USER-INPUTS [OBJECTS // VELOCITIES]
obj1 = input('First Object (Input Index Value): ');
obj2 = input('Second Object (Input Index Value): ');

vel1 = input('Initial Velocity of the First Object: ');
vel2 = input('Initial Velocity of the Second Object: ');

% DATA EXTRACTION
m1 = objects.mass(obj1);
m2 = objects.mass(obj2);
cor = cors(obj1,obj2);

%% --------------------CALCULATIONS--------------------

% AUGUMENTED MATRIX
sys = [m1 m2 m1*vel1+m2*vel2; -1 1 cor*(vel1-vel2)];

% REDUCED ROW ECHELON FORM
sol = rref(sys);

% EXTRACTION OF FINAL VELOCITIES
velf1 = sol(1,3);
velf2 = sol(2,3);

% SUMMARY/DISPLAY OF ANSWERS FOR USER-INPUTS
summary = 'The final velocity of the first object is: %.2f and the final velocity of the second object is %.2f\n';
fprintf(summary,velf1,velf2);

% --------------------END--------------------
