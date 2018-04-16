% Primera parte 

x = 0:0.01:15*pi;

a = 5 * log(6*x+3)/log(5);
b = sin(4*log2(x+1)) + cos(4*log(x+9)/log(6));

figure();
plot(x,a,'r *');

figure();
plot(x,b,'g +');

figure();
plot(x,a,'r *',x,b,'g +');

x = -10:0.05:10;

c = 5*exp(2*x-10);

figure();
grid  on
plot(x,c,'b *');

figure();
grid  on
semilogy(x,c,'b *');

% Segunda parte

