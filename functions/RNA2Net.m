% This is a MATLAB function RNA2Net which takes two inputs:% 
% rna: a string representing RNA sequence
% net: a deep learning neural network
% The function generates a 3D tensor using the Tensor8 function from the 
% input RNA sequence, which is then passed through the net using the 
% forward function to obtain a tensor containing output probabilities. 
% These probabilities are then converted to a binary output matrix using 
% the outputMatrix function, and the resulting matrix is returned as 
% the output of the RNA2Net function.

function out = RNA2Net(rna,net)
    out = outputMatrix(dlarray(forward(net,dlarray(single(Tensor8(rna)),"SSCB")),"SSCB"));
end