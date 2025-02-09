function sample_data_for_fig_2_top_right(dir_root)
%SAMPLE_DATA_FOR_FIG_2_TOP_RIGHT Samples the semi toy data as the one on
% Figure 2 (top, rigth) of our Arxiv paper.
%
% sample_data_for_fig_2_top_right(dir_root)
%
% Input:
%   dir_root : the path to the directory where the data will be stored

% Copyright 2015, Anastasia Podosinnikova

  % for reproducibility
  rng('default')
  rng(1)

  exp_name = 'fig_2_top_right';

  dir_exp_1 = strcat(dir_root,'/',exp_name,'/K10');
  mkdir(dir_exp_1)

  dir_exp_2 = strcat(dir_root,'/',exp_name,'/K90');
  mkdir(dir_exp_2)

  [~,D1,c1,K1,D2,c2,K2,L,M,Ns,nruns] = get_parameters_for_fig_2_top_right;

  for N = Ns
    for irun = 1:nruns

      disp(['sampling for N = ',num2str(N),', irun = ',num2str(irun),', K = 10'])
      sample_from_lda_fix_model_and_save(dir_exp_1,irun,K1,M,N,L,D1,c1);

      disp(['sampling for N = ',num2str(N),', irun = ',num2str(irun),', K = 90'])
      sample_from_lda_fix_model_and_save(dir_exp_2,irun,K2,M,N,L,D2,c2);

    end
  end

end
