function xp = quadrupleTank(t,x)
    A1 = 28;
    A3 = 28;
    A2 = 32;
    A4 = 32;
    a1 = 0.071;
    a2 = 0.071;
    a3 = 0.5;
    a4 = 0.5;
    h1 = 12.4;
    h2 = 12.7;
    h3= 1.8;
    h4= 1.4;
    k1 = 3.33;
    k2 = 3.35;
    y1 = 0;
    y2 = 0;
    
    T1 = A1/a1 * sqrt(2*h1/981);
    T2 = A2/a2 * sqrt(2*h2/981);
    T3 = A3/a3 * sqrt(2*h3/981);
    T4 = A4/a4 * sqrt(2*h4/981);

    A = [-1/T1 0 A3/(A1*T3) 0;
        0 -1/T2 0 A4/(A2*T4);
        0 0 -1/T3 0;
        0 0 0 -1/T4]
     B = [y1*k1/A1 0;
         0 y2*k2/A2;
         0 (1-y2)*k2/A3;
         (1-y1)*k1/A4 0];
   
    xp = A*x;
end

