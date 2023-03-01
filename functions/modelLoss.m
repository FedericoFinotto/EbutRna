function [loss,gradients] = modelLoss(net,X,T,dim)
    Y = forward(net,X);
    batchLength = size(Y,4);    
    loss = [];
    for i = 1:batchLength
        lossPattern = mse(Y(1:dim(i),1:dim(i),1,i),T(1:dim(i),1:dim(i),1,i));
        loss = [loss lossPattern];
    end
    loss = mean(loss);
    gradients = dlgradient(loss,net.Learnables); 
end