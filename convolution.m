function [sequence, n] = convolution(seq1, seq2, Sindex1, Sindex2)
n = (Sindex1+Sindex2): (Sindex1 + Sindex2 + 2*length(seq2) -2);
seq2Reflected = fliplr(seq2);
seq = zeros(1, 2*length(seq2)-1);
for l = -(length(seq2) - 1): length(seq2)- 1
    for k = 1: length(seq2)
        if ((k-l >= 1) && (k-l <= length(seq2)))
            seq(l + length(seq2)) = seq(l + length(seq2)) + seq1(k)*seq2Reflected(k-l);
        end
    end
end
sequence = seq;