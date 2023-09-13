
#Filter output file from STACKS for minor allele frequency
vcftools --vcf populations.snps.vcf --maf 0.05 --recode --out populations_filtered


#extract coordinates of repeats and save as a bedtools file
cat GCF_029890125.1_OSU_Roscu_1.1_genomic.fna.out | tail -n +4 | awk '{print $5,$6,$7,$11}' | sed 's/ /\t/g' > repeats.bed

#Remove variants that fall within annotated repeat windows
bedtools intersect -v -a populations_filtered.recode.vcf -b repeats.bed -wa > final.vcf


