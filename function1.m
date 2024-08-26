[x1, n1] = impulsesignal(4, -5, 5);
[x2, n2] = impulsesignal(-2, -5, 5);
[x, n] = x1plusx2(2*x2, -x1, n2,n1);
stem(n,x);
