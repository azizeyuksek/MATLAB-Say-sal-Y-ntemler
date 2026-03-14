
% NOT: Bu dosyayi "Run" ile komple calistirin. "Run Section" kullanmayin.

clear; clc;

% ORNEK: f(x)=x^3 - x - 2 (kok ~1.521...)
f  = @(x) x.^3 - x - 2;
df = @(x) 3*x.^2 - 1; % Newton icin turev

tol   = 1e-10;
maxit = 100;

% --- Yontem fonksiyon handle'lari (bu scriptin icindeki nested fonksiyonlara bakar)
Bisection = @bisection_impl;
Newton    = @newton_impl;
Secant    = @secant_impl;

%%  Bisection
a = 1; b = 2;
fprintf("Kontrol: f(a)=%.6g, f(b)=%.6g, carpim=%.6g\n", f(a), f(b), f(a)*f(b));
[rbis, itbis] = Bisection(f, a, b, tol, maxit);

%%  Newton
x0 = 1.5;
[rnew, itnew] = Newton(f, df, x0, tol, maxit);

%%  Secant
x0 = 1; x1 = 2;
[rsec, itsec] = Secant(f, x0, x1, tol, maxit);

fprintf("\nSonuclarımız:\n");
fprintf("Bisection Sonucu: root=%.12f, iter=%d\n", rbis, itbis);
fprintf("Newton Sonucu  : root=%.12f, iter=%d\n", rnew, itnew);
fprintf("Secant Sonucu : root=%.12f, iter=%d\n", rsec, itsec);

%% ************* NESTED FONKSIYONLAR ***********
% Bu fonksiyonlar scriptin icinde oldugu icin ayrica .m dosyasi gerekmez.

function [r, it] = bisection_impl(fh, a, b, tol, maxit)
    fa = fh(a); fb = fh(b);

    if fa == 0, r = a; it = 0; return; end
    if fb == 0, r = b; it = 0; return; end

    if fa*fb > 0
        error("Bisection: [a,b] araliginda isaret degisimi yoktur. f(a)=%.6g, f(b)=%.6g", fa, fb);
    end

    for it = 1:maxit
        c  = (a+b)/2;
        fc = fh(c);

        if abs(fc) < tol || (b-a)/2 < tol
            r = c; return;
        end

        if fa*fc < 0
            b = c; fb = fc;
        else
            a = c; fa = fc;
        end
    end
    r = (a+b)/2;
end

function [r, it] = newton_impl(fh, dfh, x0, tol, maxit)
    x = x0;
    for it = 1:maxit
    fx  = fh(x);
        dfx = dfh(x);

        if abs(dfx) < eps
            error("Newton : turev şuan sifira cok yakin (x=%.6g).", x);
        end

        xnew = x - fx/dfx;

        if abs(xnew - x) < tol || abs(fh(xnew)) < tol
            r = xnew; return;
        end
        x = xnew;
    end
    r = x;
end

function [r, it] = secant_impl(fh, x0, x1, tol, maxit)
    x_prev = x0; x = x1;

    for it = 1:maxit
        f_prev = fh(x_prev);
        fx     = fh(x);

        denom = fx - f_prev;
        if abs(denom) < eps
            error("Secant: payda sifira cok yakin.");
        end

        xnew = x - fx*(x - x_prev)/denom;

        if abs(xnew - x) < tol || abs(fh(xnew)) < tol
            r = xnew; return;
        end

        x_prev = x;
        x = xnew;
    end
    r = x;
end