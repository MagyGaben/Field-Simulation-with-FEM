nu0=0.8/(pi*4e-7);
i0=1;
area = pdetrg(p,t)*1e-6;

[Gx,Gy]=pdegrad(p,t,u);
Bx=Gx*1e3;
By=-Gy*1e3;

Wm=sum(nu0.*(By.^2+Bx.^2).*area)*2;
Lv=Wm/(i0^2)*10^9;

% Display
fprintf("A hosszegysegre eso Induktivitás : L’ = %.6f [nH/m]\n", Lv);
L = 461 * log10(9/1);  
fprintf("Induktivitás formulából : L = %.6f [nH/m]\n", L);

