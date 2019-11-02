######################
###XuetingQiu
###Violin plots for all types of flu partitioning modeling 
###02262019

#H1N1pdm
#readdata
library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluH1N1pdm-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H1N1postpdm
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluH1N1postpdm-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H3N2
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluH3N2-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#B/V
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluBV-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#B/Y
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluBY-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H5-full
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluH5-full-ViolinPlot-041119.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 


###############
#H7N9-new data
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/FluH7N9-ViolinPlot-041119-v2.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 



###############
#H5-subsets
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/Dissertation/Aim1-PartitionningModeling/Influenza/SummaryResults-02262019/H5-subsets2.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 



###############
#H5-80data
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/PartitionningModeling/Influenza/SummaryResults-02262019/FluH5-80data-ViolinPlot-022619.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H5-60data
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/PartitionningModeling/Influenza/SummaryResults-02262019/FluH5-60data-ViolinPlot-022619.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H5-40data
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/PartitionningModeling/Influenza/SummaryResults-02262019/FluH5-40data-ViolinPlot-022619.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 


###############
#H5-20data
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/PartitionningModeling/Influenza/SummaryResults-02262019/FluH5-20data-ViolinPlot-022619.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 

###############
#H7
rm(list=ls())
#readdata

library(readxl)
mydata<-read_excel("~/Documents/Bahl Lab/PartitionningModeling/Influenza/SummaryResults-02262019/FluH7N9-ViolinPlot-022619.xlsx")
View(mydata)

#makePlot
library(ggplot2)
p <- ggplot(mydata, aes(x=Model, y=Rates, fill=Model)) + geom_violin(trim=TRUE)
# violin plot with mean points
p + stat_summary(fun.y=mean, geom="point", size=2, color="black")
#have to manually export figures as pdf for editing 







































