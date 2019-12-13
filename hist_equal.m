y = 0:7;
frek = [20, 5, 25, 10, 15, 5, 10, 10];
desired_frek = [5, 10, 15, 20, 20, 15, 10, 5];
p = 1:8;
p_desired = 1:8;
dummy = 0;
dummy_desired = 0;
nilai = 0;
for i=1:8;
    dummy=dummy+frek(i);
    dummy_desired=dummy_desired+desired_frek(i);
    p(i)= dummy/100;
    p_desired(i)= dummy_desired/100;
    s(i) = p(i)*7;
    v(i) = p_desired(i)*7;
    s(i) = round(s(i));
    v(i) = round(v(i));
end
    % Fungsi Mapping
for i=1:8;
    for j=1:8;
        if s(i) == v(j);
            z(i) = j-1;
        end
    end      
end
    % Transformasi Pixel Berdasarkan Mapping
for i=1:8;
    for j=1:8;
        if z(j) == i-1;
            nilai = nilai + frek(j);
        end
    end
    pixel(i) = nilai;
    nilai = 0;
end
pixel
% stem(y,frek);
% grid on