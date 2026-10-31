function true_msg = yaw_conversion(Msg)
% reduce yaw to -pi to pi

new_yaw = Msg.yaw;
new_yaw = mod(new_yaw, 2*pi);
if(new_yaw > pi)
    new_yaw = new_yaw - 2*pi;
end

true_msg = [0, 0, 0, 0, 0, 0];
true_msg(1, 1) = Msg.x;
true_msg(1, 2) = Msg.y;
true_msg(1, 3) = new_yaw;
true_msg(1, 4) = Msg.d1;
true_msg(1, 5) = Msg.d2;
true_msg(1, 6) = Msg.d3;
end