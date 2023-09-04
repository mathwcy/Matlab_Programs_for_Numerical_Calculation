function density = Y_pdf(x, pY, eta1, eta2)
    if x>=0
        density = pY*eta1*exp(-eta1*x);
    else
        density = (1-pY)*eta2.*exp(eta2*x);
    end
end