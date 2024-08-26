n = 0:20;
[t1, n1] = stepsignal(0, 0, 20);
[t2, n2] = stepsignal(10, 0, 20);
t3 = t2;
n3 = n2;
[t4, n4] = stepsignal(20, 0, 20);
x = n.*(t1 - t2) + 10.* (exp(-0.3.*(n-10))).*(t3 - t4);
stem(n,x);
