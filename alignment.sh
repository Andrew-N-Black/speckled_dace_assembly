cd /nfs1/FW_HMSC/Sidlauskas_Lab/Rhinichthys_osculus/rerun/demultiplexed
REF=/nfs1/FW_HMSC/Sidlauskas_Lab/Rhinichthys_osculus/rerun/reference/raw/NCBI/GCF_029890125.1_OSU_Roscu_1.1_genomic.fna

bwa index $REF

for i in `ls -1 *.fq | cut -c -9 | uniq | tail -n 56`

do
bwa mem -t 10 $REF $i.1.fq $i.2.fq > ../aligned/${i}.sam
samtools view -@ 10 -Sb ../aligned/${i}.sam > ../aligned/${i}.bam
samtools sort -@ 10 ../aligned/${i}.bam -o ../aligned/${i}_sorted.bam
samtools view -@ 10 -q 20 -f 2 -F 2820 -b ../aligned/${i}_sorted.bam > ../aligned/${i}_filt.bam
done
