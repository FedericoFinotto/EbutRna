function out = ternOp(value,t,f)
    if(value)
        out = t;
    else
        out = f;
    end
end