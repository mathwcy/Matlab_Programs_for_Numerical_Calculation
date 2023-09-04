function    result = char_Y(t, pY, eta1, eta2)
    result = pY.*eta1./(eta1-1i.*t)+(1-pY).*eta2./(1i.*t+eta2);
end