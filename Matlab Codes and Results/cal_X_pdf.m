function result = cal_X_pdf(N, x, t, pY, eta1, eta2, X0, c, sigma, lambda)
    result = 0;
    for i = 0:N
        result = result+cal_condition_X_pdf(x, i, t, pY, eta1, eta2, X0, c, sigma, lambda);
    end
end

