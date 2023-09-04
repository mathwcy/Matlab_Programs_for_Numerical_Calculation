x = linspace(-1, 3, 100);
y = zeros(size(x));
for i = 1:length(x)
    y(i) = cal_X_pdf(7, x(i), t, pY, eta1, eta2, X0, c, sigma, lambda);
end
plot(x, y);