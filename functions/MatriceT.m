% This function takes as input a cell array of strings "coll", where each
% string is a number represented in string format, and returns a logical
% matrix "r".

function r = MatriceT(coll)
    L = length(coll);
    r = zeros(L,L,"logical");
    for riga=1:L
        r(riga,str2num(coll{riga})+1)=1;
    end
end