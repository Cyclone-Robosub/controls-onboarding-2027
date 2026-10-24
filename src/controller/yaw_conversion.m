function true_msg = yaw_conversion(Msg)
% reduce yaw to -pi to pi

x = Msg.yaw;
x = mod(x, 2*pi);
if(x > pi)
    x = x - 2*pi;
end

true_msg = Msg;
true_msg.yaw = x;
end