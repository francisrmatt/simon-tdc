function [l, r] = s_round(li, ri, k)

    % R(i+1) = L(i)
    r = li;

    li = fi(li, 0, 16, 0);
    ri = fi(ri, 0, 16, 0);

    rol_1 = bitrol(li, 1);
    rol_8 = bitrol(li, 8);
    rol_2 = bitrol(li, 2);

    intand = bitand(rol_1, rol_8);
    intxor = bitxor(intand, rol_2);
    pref = bitxor(intxor, ri);
    l = uint16(bitxor(k, pref));

end