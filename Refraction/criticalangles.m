%refraction indeces of various materials:
ref_indeces = [1.31 1.473; % water ice surrounded by glycerine
             2.417 1.0003; % diamond surrounded by air
             1.49 1.333;   % acrylic (polymethylmethacrylate) surrounded by water
             1.4584 1.0001;% fused quartz(SiO2)and hydrogen
             1.52 1.36;    % crown glass and ethyl alcohol (C2H5OH)
             1.58 1.0005;  % light flint glass and carbon dioxide (CO2) 
             1.923 1.0003; % zircon (ZrO2.SiO2) and air
             2.907 1.333;  % rutile (TiO2) and water
             1.4584 1.501];% fused quartz(SiO2) and benzene (C6H6)

% names in vectors for convenience (can index vector to get correct name
% within the loop)
rod_names = ["ice", "diamond", "acrylic", "fused quartz",...
             "crown glass", "light flint glass", "zircon", "rutile", "fused quartz"];
sur_names = ["glycerine", "air", "water", "hydrogen", "ethyl alcohol",...
             "carbon dioxide", "air", "water", "benzene"];

factor = 180/pi; %for convenience(can multiply by this to convert radians to degrees)

n1 = ref_indeces(:,1); % all rod indices (the pipe itself, "incident medium")
n2 = ref_indeces(:,2); % all surrounding incides ("transmission medium")

for i = 1:length(n1)
    if n1(i) > n2(i)  % total internal reflection possible
        criticaltheta = asin(n2(i)/n1(i)) * factor; % critical angle in degrees
        fprintf("Critical angle for %s in %s is %.1f degrees.\n", rod_names(i), sur_names(i), criticaltheta);
    else
        fprintf("No total internal reflection for %s in %s (n1 = %.1f, n2 = %.1f).\n", rod_names(i), sur_names(i), n1(i), n2(i));
    end
end

% CODED BY @jacovjs
