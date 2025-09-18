%% --------------------PROBLEM--------------------
% INSTRUCTION(s): Create a vector x of values from 0 to 20? with a spacing of ?/100. Define vectors y and z
% Use subplot to create the following graphs in the same figure.
% (a) Create an xy plot of x and y that spans tiles 1 and 2.
% (b) Create a polar plot of x and y in tile 3
% (c) Create a three-dimensional line plot of x, y, and z.
% (d) Dont forget a title and axis labels as appropriate for each of the subplots.
% (e) Add an overall title to the layout.

%% --------------------SOLUTION--------------------
% PROGRAMMED BY @jacovjs

% Variables/Values
x = 0:pi/100:20*pi;
y = x.*sin(x);
z = x.*cos(x);

% Figure Configuration
%t = figure('Name','Plots (XYZ)','NumberTitle','off'); % Commented Code (Applicable for R2018b or MATLAB ONLINE)
figure('Name','Plots (XYZ)','NumberTitle','off');

% Plots
% X-Y Plot
subplot(2,1,1);
plot(x,y, 'm--');
xlabel('X-VALUE [0 to 20\pi (\pi/100 spacing)]');
ylabel('Y-VALUE [x*sin(x)]');
title("X-Y PLOT", 'Color', 'm');

% Polar Plot
subplot(2,2,3);
polar(x,y,'r');
xlabel('X-VALUE [0 to 20\pi (\pi/100 spacing)]');
ylabel('Y-VALUE [x*sin(x)]');
title("X-Y POLAR PLOT", 'Color', 'r');

% 3D Plot
subplot(2,2,4);
plot3(x,y,z, 'g');
xlabel('X-VALUE [0 to 20\pi (\pi/100 spacing)]');
ylabel('Y-VALUE [x*sin(x)]');
zlabel('Z-VALUE [x*cos(x)]');
title("X-Y-Z 3D PLOT", 'Color', 'g');

% Commented Code (Applicable for R2018b or MATLAB ONLINE)
%t = title('plots');
%sgtitle("Plots"); 

% --------------------END--------------------
