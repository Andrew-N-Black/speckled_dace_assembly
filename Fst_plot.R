library(ggplot2)
library(dplyr)
library(readxl)
dace_FST <- read_excel("dace_FST.xlsx")

ggplot(dace_FST %>% arrange(GENE),aes(x=CHROM_POS, y=FST,color=GENE,size=GENE)) + geom_point()+facet_wrap(~POPS,ncol = 1)+theme(axis.text.x=element_text(size=.01, angle=90))+theme_classic()+theme(axis.title.x=element_blank(), axis.text.x=element_blank(),axis.ticks.x=element_blank())+ylab("Fst")+scale_color_manual(values=c("black","blue"))+scale_size_manual(values =c(1, 1))
