function [c0,D1,c1,K1,D2,c2,K2,L1,L2,M,Ns,gam,nruns] = get_parameters_for_fig_2_bottom_left
%GET_PARAMETERS_FOR_FIG_2_BOTTOM_LEFT Returns the parameters for the semi toy
% data from Figure 2 (bottom, left) of our paper.
%
% [c0,D1,c1,K1,D2,c2,K2,L1,L2,M,Ns,gam,nruns] = get_parameters_for_fig_2_bottom_left
%
% Output:
%   c0    : true value of the parameter c_0
%   D1    : topic matrix for K = 10
%   c1    : parameter c for K = 10
%   K1    : number of topics (K1 = 10)
%   D2    : topic matrix for K = 90
%   c2    : parameter c for K = 90
%   K2    : number of topics (K2 = 90)
%   L1    : document length L1 for the LDAfix2(L1,L2,gamma) model
%   L2    : document length L2 for the LDAfix2(L1,L2,gamma) model
%   M     : vocabulary size
%   Ns    : array of numbers of documents
%   gam   : array of gammas for the LDAfix2(L1,L2,gamma) model
%   nruns : number of times each data are resampled

% Copyright 2015, Anastasia Podosinnikova

  c0 = 1;

  temp = load('data/topic_matrices/params_nips_K10.mat');
  D1 = temp.D;
  [~, K1] = size(D1);
  c = temp.c;
  c1 = c0*c/sum(c);

  temp = load('data/topic_matrices/params_nips_K90.mat');
  D2 = temp.D;
  [M, K2] = size(D2);
  c = temp.c;
  c2 = c0*c/sum(c);

  L1 = 20; L2 = 200; 
  gam = 0.5;
  nruns = 5;
  Ns = [1000 10000:10000:50000];

end
