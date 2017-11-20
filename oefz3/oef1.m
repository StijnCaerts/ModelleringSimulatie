positives = 0;
samples = 1000000;

for i = 1:samples
    theta1 = 2*pi*rand();
    theta2 = 2*pi*rand();
    theta3 = 2*pi*rand();

    x1 = cos(theta1);
    y1 = sin(theta1);
    x2 = cos(theta2);
    y2 = sin(theta2);
    x3 = cos(theta3);
    y3 = sin(theta3);

    xs = [x1, x2, x3];
    ys = [y1, y2, y3];

    if inpolygon(0,0,xs,ys)
        positives = positives + 1;
    end
end

rate = positives/samples