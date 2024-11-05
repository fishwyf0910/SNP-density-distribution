###绘制SNP密度分布图
##利用plink的结果文件.map，第一列为染色体名，第二列为SNP名，第三列为SNP的位置

library(data.table)
library(dplyr)
library(CMplot)

map1 = fread("/data01/wangyf/project2/CyprinusCarpio/9.snp/plink/plink.map.plot",header = F)
head(map1)

mm = map1 %>% dplyr::select(SNP = 2,Chromosome=1,Position = 4)
head(mm)

CMplot(mm,plot.type="d",bin.size=1e5,col=c("darkgreen", "yellow", "red"),
       file="tiff",dpi=300,file.output=TRUE, verbose=TRUE)
#memo="",
