% Programmed by JacovJS
function [x,v,a] = free_fall(t)
    g = 9.8; %in m/s^2
    
    if t < 0
        disp('Time must not be negative');
    end
    
    if t >= 0 
        x = 1/2*g.*(t.^2); %in m
        v = g.*t; %in m/s
        a = g; %in m/s^2
    
        fprintf('At the given time of %.2f s:\n', t);
        disp('-----------RESULTS-----------');
        fprintf('Distance: %.2f m\n', x);
        fprintf('Velocity: %.2f m/s\n', v);
        fprintf('Acceleration: %.2f m/s^2\n', a);
        disp('------------------------------');
    end
end
