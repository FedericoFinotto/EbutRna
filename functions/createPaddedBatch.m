function [X,T,dim] = createPaddedBatch(CellBatch)
%   This function takes as argument a Batch of structures in Cells 
%   in string format for the input and array format for the output
%   and return X,T as images with Padding and array of dimension pre-padding

    ImageCellBatch = CSV2ImageCellBatch(CellBatch);
    PAD = padding(ImageCellBatch);
    nRNA = size(ImageCellBatch,2);   
    dim = zeros(nRNA,1);
    X = zeros(PAD,PAD,8,nRNA,"logical");
    %X(:,:,1)=ones(L,"logical");
    T = zeros(PAD,PAD,nRNA,"logical");
    for i=1:nRNA
        dim(i)=length(ImageCellBatch(i).input);
        X(1:dim(i),1:dim(i),:,i)=ImageCellBatch(i).input;
        T(1:dim(i),1:dim(i),i)=ImageCellBatch(i).output;        
    end
end





