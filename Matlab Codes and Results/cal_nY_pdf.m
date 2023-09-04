function pdf = cal_nY_pdf(x, n, pY,eta1, eta2)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
cf_nY = @(t) char_Y(t, pY, eta1, eta2).^n;
pdf = real(inv_char(cf_nY, x));
%pdf = real(inv_char(cf_nY, x));
end

