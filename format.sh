#Convert Fastq to fasta for input into NextDenvo
 zcat m64047_221227_192733.ccs.fastq.gz | awk '{if(NR%4==1) {printf(" > %s\n",substr($0,2));} else if(NR%4==2) print;}'>m64047_221227_192733.ccs.fasta
 
 zcat m64047_221229_043129.ccs.fastq.gz | awk '{if(NR%4==1) {printf(" > %s\n",substr($0,2));} else if(NR%4==2) print;}' > m64047_221229_043129.ccs.fasta
 
