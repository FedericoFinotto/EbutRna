function out = simmetria(X)
    out = 0.5*(X+permute(X,[2 1 3 4]));    
end