Vbb = out.VB12.Data;
Vp  =  10         %%0.5 * Vbb + 0.7;
Ve  = out.VE.Data;
t   = out.tout;


trigger = find(Ve >= 10, 1, 'first');
t_off   = t(trigger);

% Convert time to angle (degrees)
f     = 50;              
omega = 2 * pi * f;   %% toff = RC · ln(Vbb / (Vbb - Vp)) || α = ω · toff
firing_angle_rad = omega *t_off;
firing_angle_deg = rad2deg(firing_angle_rad);

fprintf('Firing angle = %.2f degrees\n', firing_angle_deg);