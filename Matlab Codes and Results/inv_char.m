function result = inv_char(f, x)
    integrand = @(t) exp(-1i.*t.*x).*f(t)./(2.*pi);
    result = quadgk(integrand, -2000, 2000, 'MaxIntervalCount', 500000);
end