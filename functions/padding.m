% This function calculates the maximum length of the input sequences
% in the given cell array of ImageCellBatch objects.
%
% Input:
% - ImageCellBatch: a cell array of ImageCellBatch objects
%
% Output:
% - PAD: the maximum length of the input sequences among all the ImageCellBatch objects.

function PAD = padding(ImageCellBatch)
    PAD = 0; % initialize PAD to zero
    for i = 1:length(ImageCellBatch)
        % find the maximum length among all input sequences in ImageCellBatch
        PAD = max([length(ImageCellBatch(i).input), PAD]);    
    end
end
