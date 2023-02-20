function [ WW,W,s,fw ] = ODLDA( Sw,Sb,d,t )

WW = cell(1,d);  
W = orth(rand(d));

fw = zeros(d,t);

for m = 1:d
    for i = 1:t
        s = (trace(W'*Sb*W))/(trace(W'*Sw*W)+ eps );    
        
        
        SS = ((s*s*Sw-2*s*Sb)+(s*s*Sw-2*s*Sb)')*0.5;    
        [Eve,Eva] = eig(SS);
        [~,idx] = sort(diag(Eva));
        Eve_sort = Eve(:,idx);  
        W = Eve_sort(:,1:m);    
        
        fw(m,i) = s*s*trace(W'*Sw*W)-2*s*trace(W'*Sb*W); 
    end
    WW{m} = W;
end


[~,I_R] = min(fw(:,end));
W = WW{I_R};    

end