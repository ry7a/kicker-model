function dydt = model(t, arr, y, p)
    lim = 50e-3;
    if (strcmp(y, "weak"))
        lim = 5e-3;
    end

    if(strcmp(y, "medium")) 
        lim = 7e-3; 
    end
    
    if (t < lim)
        dx = arr(2);
        dv = (1./p.m).*(-p.K.*arr(1)+coilPropertie(arr(1), p).*arr(4).^2);
        dq = -arr(4);
        di = (-1./induntace(arr(1), p)).*(p.Res.*arr(4)-arr(3)/p.C + 2.*coilPropertie(arr(1), p).*arr(2).*arr(4));
    else
        dx = arr(2);
        dv = (1./p.m).*(-p.K.*arr(1)+coilPropertie(arr(1), p).*arr(4).^2);
        dq = 0;
        di = (-1./induntace(arr(1), p)).*(p.Res.*arr(4)+ 2.*coilPropertie(arr(1), p).*arr(2).*arr(4));
    end

    dydt = [dx; dv; dq; di];
end

