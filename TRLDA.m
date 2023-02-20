function [ W ] = TRLDA( Sw,Sb,m,alpha,d,t1 )

W = orth(rand(d,m));
fw = zeros(1,t1);   


for i = 1:t1
    

    s = ((trace(W'*Sb*W))^0.5)/(trace(W'*Sw*W)); 
    

    S1 = s*s*(alpha*eye(d) - Sw);                 
    B1 = s*Sb*W/((trace(W'*Sb*W))^0.5);           
    M = 2*S1*W + 2*B1;
    [U,~,V] = svd(M);
    U = U(:,1:m);
    W = U*V';
    
    fw(i) = s*s*trace(W'*Sw*W)-2*s*((trace(W'*Sb*W))^0.5);  
end