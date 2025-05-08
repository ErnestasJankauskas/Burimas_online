function g = beale_gradient(x)
    x1 = x(1);
    x2 = x(2);

    % Dalinės išvestinės pagal x1 ir x2
    g1 = -2 * (1.5 - x1 + x1*x2) * (1 - x2) ...
         - 2 * (2.25 - x1 + x1*x2^2) * (1 - x2^2) ...
         - 2 * (2.625 - x1 + x1*x2^3) * (1 - x2^3);

    g2 = -2 * (1.5 - x1 + x1*x2) * x1 ...
         - 4 * (2.25 - x1 + x1*x2^2) * x1 * x2 ...
         - 6 * (2.625 - x1 + x1*x2^3) * x1 * x2^2;

    g = [g1, g2]; % Grąžina gradiento vektorių
end
