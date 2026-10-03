function ult_meas = checkUltrasonicSensors(X, scene)

xi = X(1);
yi = X(2);
yaw = X(5);

%rotation matrix
% rotation/translation from body -> world for this frame
c = cosd(yaw); 
s = sind(yaw);
Cib = [c -s; s c];

%beam tail
tail_i = [xi; yi];

%beam angle and length constants
ult_angles = [pi/6, 0, -pi/6];  
L = 100; 

%bind each sensor beam
ult_meas = zeros(3,1);

for k = 1:3
    tip_b_full = L*[cos(ult_angles(k)); sin(ult_angles(k))];
    tip_i_full = Cib*tip_b_full + tail_i;

    v_in = [tail_i'; tip_i_full'];
    v_trimmed = bindVectorTails(v_in, scene);
    
    tip_i_trimmed = v_trimmed(1,:)';
    tail_i_trimmed = v_trimmed(2,:)';

    %convert back to body frame
    tail_b_trimmed = Cib'*(tail_i_trimmed - tip_i_trimmed);

    ult_meas(k) = norm(tail_b_trimmed);
end
end