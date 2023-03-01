%  This function takes as argument a string representing an RNA Primary
%   structure and return an LxLx8 Tensor representing possible pairings
%   of the Nucleotids inside the RNA
%   Layers:
%      1: Invalid Pairing
%      2: Potential unpaired
%      3: AU possibile pairing
%      4: UA possibile pairing
%      5: UG possibile pairing
%      6: GU possibile pairing
%      7: GC possibile pairing
%      8: CG possibile pairing


function r = Tensor8(sequenza)
    L = length(sequenza);
    r = zeros(L,L,8,"logical"); % initialize tensor of zeros
    r(:,:,1)=ones(L,"logical"); % set the first layer to all ones
    for riga=1:L
        for colonna=1:L
            if riga == colonna % if on the diagonal of the matrix
                r(riga,colonna,2)=1; % set the second layer to one (base pair with itself)
            else
                if(abs(colonna-riga)>2) % if distance between the base pairs is greater than 2
                    switch sequenza(riga)
                        case 'A'
                            if sequenza(colonna)=='U'
                                r(riga,colonna,3)=1; % set third layer to one (AU base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                        case 'U'
                            if sequenza(colonna)=='A'
                                r(riga,colonna,4)=1; % set fourth layer to one (UA base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                            if sequenza(colonna)=='G'
                                r(riga,colonna,5)=1; % set fifth layer to one (UG base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                        case 'G'
                            if sequenza(colonna)=='U'
                                r(riga,colonna,6)=1; % set sixth layer to one (GU base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                            if sequenza(colonna)=='C'
                                r(riga,colonna,7)=1; % set seventh layer to one (GC base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                        case 'C'
                            if sequenza(colonna)=='G'
                                r(riga,colonna,8)=1; % set eighth layer to one (CG base pair)
                                r(riga,colonna,1)=0; % set first layer to zero (no base pairing)
                            end
                    end
                end
            end
        end
    end
end