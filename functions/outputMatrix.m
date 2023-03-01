% This function takes as input a matrix X and returns a binary matrix out, 
% where each row corresponds to the index of the maximum value in the 
% corresponding column of X.

function out = outputMatrix(X)
    L = length(X);              % assigns the length of X to L.
    X = extractdata(X);         % extracts the data from the input matrix X and assigns it back to X. 
    out = zeros(L,L,"logical"); % initializes the output matrix out to a logical matrix of size L by L with all elements set to 0.    
    [~,massimi] = max(X);       % finds the indices of the maximum values in each column of X and stores them in the vector massimi.
    for i=1:length(massimi)     % loops through each element in massimi.
        out(massimi(i),i)=1;    % sets the value of the corresponding element in out to 1.
    end
end