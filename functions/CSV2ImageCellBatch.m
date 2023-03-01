function r = CSV2ImageCellBatch(cellBatch)
%   This function takes as argument a Batch of structures in Cells
%   in string format for the input and array format for the output
%   and return X,T as images in a Cell Structure

    r = struct("input",{},"output",{});
    L = size(cellBatch.input,2);
    for i=1:L
        r(i).input = Tensor8(cellBatch.input{i});
        r(i).output = MatriceT(cellBatch.output{i});
        %fprintf("Genera Immagini: %d/%d\n",i,L);
    end
end