% ItsJacov was here

%{
CALCULATING FOR RAIDEN SHOGUN'S POSSIBLE POWER

TARGET: Old Yashiori Island (Basing on the in-game mapo it is roughly a
hemisphere with a diameter of 50km
ATTACK: Mosuo no Hitotachi was used to create an instant cut (assume that
it is a blade with pure energy from the shogun that sliced through the
solid rock.
LOCATION MATERIAL: Assuming it is an island, then it is mostly made of
rocks such as granite thus, assuming the density would be around 2,700
kg/m^3
IN-DETAILED EVENT OF THE SPLITTING: The gorge created from the cutting is
10km deep (according to the game)
%}

%% VARIABLES

density = 2700; % kg/m^3
depth = 10000; % m (10 km)
radius = 25000; % m (50 km diameter)
ymodmat = 70e9; % Pa (70 GPa)
frac_tough = 2e6; % Pa*sqrt(m) (2 MPa*m^0.5)
velocity = 500; % m/s (assumed)

%% CALCULATE

fracture_energy_release_rate = frac_tough^2 / ymodmat;
crack_area = (2 * radius) * depth;
ene_fi = fracture_energy_release_rate * crack_area;
mass = density * (0.5 * pi * (radius^2) * depth);
ene_kine = 0.5 * mass * velocity^2;
ene_tot = ene_fi + ene_kine;
%% DISPLAY

fprintf('Fracture Energy: %.2e Joules\n', ene_fi);
fprintf('Kinetic Energy: %.2e Joules\n', ene_kine);
fprintf('Total Energy: %.2e Joules\n', ene_tot);
