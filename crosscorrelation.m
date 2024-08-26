disp("Enter sequences of equal length using square brackets eg: [1 2 3 4]");
seq1 = input("sequence 1: ");
seq2 = input("sequence 2: ");
x = zeros(1,2*length(seq2) - 1);

for l = -(length(seq2) - 1): (length(seq2)- 1)
    for n = 1: length(seq2)
        if (n - l >= 1 && n-l <= length(seq2))
            x(l + length(seq2)) = x(l + length(seq2)) + seq1(n)* seq2(n-l);
        end
    end
end
l = -(length(seq2) - 1): (length(seq2)- 1);
figure(1);
subplot(311);
stem(1:length(seq1), seq1);
title("sequence 1");
subplot(312);
stem(1:length(seq2), seq2);
title("sequence 2");
subplot(313);
stem(l, x);
title('Cross Correlation of seq 1 and 2');
xlabel('l');
ylabel('r_x_y[l]');
figure(2);
stem(l, xcorr(seq1, seq2));