Comparisons of windowed summary statistics between vcftools on HD pipeline and angsd on subsampled LD data. 

Pi:

100Kb:
mean of angsd:	0.0075579073877446
mean of vcftools:	0.0113072516529227
spearman's rho:	0.977302309869904

10Kb:
mean of angsd:	0.00755287055756856
mean of vcftools:	0.0112959100582948
spearman's rho:	0.960895247886574

1Kb: 
mean of angsd:	0.00757586816448123
mean of vcftools:	0.0113470200204217
spearman's rho:	0.913003360874051

Tajima's D:

1Kb window size:
mean of angsd:	-0.91249773191461
mean of vcftools:	-1.38054312562322
spearman's rho:	0.577794879357905

10Kb window size:
mean of angsd:	-0.950270881258274
mean of vcftools:	-1.45970240661736
spearman's rho:	0.636955961934546

100Kb window size:
mean of angsd:	-0.93058366109034
mean of vcftools:	-1.46709696593033
spearman's rho:	0.648482250914846

Overall impression is that the strong correlation for pi is promising, but probably lower values of pi and the +-skewed tajima's D is likely related to reduced ability to resolve lower frequency sites. 
