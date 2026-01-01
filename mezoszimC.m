eps0 =8.85*10^-12; % [ F/m ]
epsrel =1.5;
u0 =1; % [ V]
[ Ex , Ey ]= pdegrad (p ,t ,- u ); % E = - grad (u) = grad (- u )
area = pdetrg (p , t); 
Cv =2* eps0 * epsrel * sum (( Ex .^2+ Ey .^2) .* area )/ u0 ^2*1e12;
fprintf( "A hosszegysegre eso kapacitas : C' = %.6f [pF/m]\n",Cv);
C =24.161*epsrel/log10(9/1);
fprintf( "A kapacitas formulabol : C = %.6f [pF/m]\n",C);