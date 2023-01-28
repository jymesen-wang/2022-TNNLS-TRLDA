# TRLDA

To use the function "TRLDA" or "ODLDA", please follow the input/output format:

 [ W ]          = TRLDA( Sw,Sb,m,alpha,d,t)
 [ WW,W1,s,fw ] = ODLDA( Sw,Sb,d,t)

Sw ：  d*d intra-class scatter matrix
Sb :   d*d inter-class scatter matrix, d is the dimension of samples
m  :   subspace dimension, m < d
alpha : Relaxation factor
t  :   iteration times
W  ：  d*m projection matrix
WW :   1*d cell array, i-th cell indicates the projection matrix W ∈ R^{d*i}
W1 :   projection matrix with the optimal subspace dimension
s  ：  ((Tr(W'SbW))^0.5)/(Tr(W'SwW))
fw ：  d*t, the objective function values


Please make sure that the documents Eu2_distance.m and ClusteringMeasure.m are in the same folder as TRLDA.m and ODLDA.m

Use the codes, please cite
Wang J, Wang L, Nie F, et al. A novel formulation of trace ratio linear discriminant analysis[J]. IEEE Transactions on Neural Networks and Learning Systems, 33(10), pp. 5568-5578, 2022.

If you have any questions, please connect wanglinjun@mail.nwpu.edu.cn
