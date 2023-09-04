function result = cal_condition_X_pdf(x, n, t, pY, eta1, eta2, X0, c, sigma, lambda)
    if n==0
        result = normpdf((x-X0-c.*t)./sigma, 0, sqrt(t));
    else
        pdf_nY = @(x) cal_nY_pdf(x, n, pY, eta1, eta2);
        integrand = @(w) normpdf(w, 0, sqrt(t)).*pdf_nY(x-X0-c.*t-sigma.*w);
        result = integral(integrand, -2000, 2000,'ArrayValued', true);
    end
    result = result.*poisspdf(n, lambda.*t);
end

