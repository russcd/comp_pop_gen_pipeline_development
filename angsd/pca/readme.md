This is a comparison of PCangsd and PCA performed within the plink package. 
Both were run using default parameters. 


Interesting that the results differ so much. 
Plink-pca returns a scatterplot, so no evidence for structure by pretty normal criteria.
PCangsd returns 20 PCs where each individual basically has it's own private PC. 

I'd say they both don't show evidence for structure, but I wonder why PCangsd returns a kind of strange result.

The best way forward may be to try PCangsd on something that does show some structure and see what happens there. 
