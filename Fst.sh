vcftools --vcf final.vcf --weir-fst-pop foskett --weir-fst-pop coleman --out foskett_coleman_fst
#After filtering, kept 89 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.056069
#Weir and Cockerham weighted Fst estimate: 0.067157
#After filtering, kept 5950 out of a possible 5950 Sites

vcftools --vcf final.vcf --weir-fst-pop foskett --weir-fst-pop deep  --out foskett_deep_fst
#After filtering, kept 65 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.12926
#Weir and Cockerham weighted Fst estimate: 0.17321
#After filtering, kept 5950 out of a possible 5950 Sites

vcftools --vcf final.vcf --weir-fst-pop foskett --weir-fst-pop twentymile --out foskett_twenty_fst
#After filtering, kept 71 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.11059
#Weir and Cockerham weighted Fst estimate: 0.14565
#After filtering, kept 5950 out of a possible 5950 Sites

vcftools --vcf final.vcf --weir-fst-pop foskett --weir-fst-pop dace  --out foskett_dace_fst
#After filtering, kept 90 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.0059496
#Weir and Cockerham weighted Fst estimate: 0.0069985
#After filtering, kept 5950 out of a possible 5950 Sites

#Identify and extract SNPs 20kb +/- candidate genes
bedtools intersect -a final.vcf -b gene_20kb.bed -wa -header > genes.vcf

vcftools --vcf genes.vcf --weir-fst-pop foskett --weir-fst-pop coleman --out foskett_coleman_genes_fst
#After filtering, kept 89 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.036053
#Weir and Cockerham weighted Fst estimate: 0.035363
#After filtering, kept 19 out of a possible 19 Sites

vcftools --vcf genes.vcf --weir-fst-pop foskett --weir-fst-pop deep  --out foskett_deep_genes_fst
#After filtering, kept 65 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.072989
#Weir and Cockerham weighted Fst estimate: 0.10341
#After filtering, kept 19 out of a possible 19 Sites

vcftools --vcf genes.vcf --weir-fst-pop foskett --weir-fst-pop twentymile --out foskett_twenty_genes_fst
#After filtering, kept 71 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.092836
#Weir and Cockerham weighted Fst estimate: 0.10729
#After filtering, kept 19 out of a possible 19 Sites

vcftools --vcf genes.vcf --weir-fst-pop foskett --weir-fst-pop dace  --out foskett_dace_genes_fst
#After filtering, kept 90 out of 180 Individuals
#Outputting Weir and Cockerham Fst estimates.
#Weir and Cockerham mean Fst estimate: 0.0019512
#Weir and Cockerham weighted Fst estimate: 0.0043256
#After filtering, kept 19 out of a possible 19 Sites
