X_values = [];
for j = 1:100000
    p = poissrnd(lambda*t);
    idx = randi([1, 1000], 1, p);
    Yn = 0;
    for i = 1:p
        Yn = Yn+Y_sim(idx(i));
    end
    w = sqrt(t)*randn(1,1);
    X_t = X0+c*t+sigma*w+Yn;
    X_values = [X_values, X_t];
end
histogram(X_values, 'Normalization', 'probability', 'BinWidth', 0.1);