#frequency data
library(CASdatasets)

data("freMTPL2freq")
nrow(freMTPL2freq) #paper gives 678013, this has 677991 - close enough?

?freMPL #paper gives 165200, however there are 10 datasets of ~30000 samples each. Preprocessing paper does not fix this discrepancy

data("beMTPL97")
nrow(beMTPL97) #paper gives 163212, this gives 163212 - success

data("swautoins")
nrow(swautoins) #paper gives 62436, this gives 2182 - no other "swauto" exists in my CASdatasets collection

?pg15training #paper claims they only use the 2009 cohort, but this only has data for 2015-2017
#the paper given in the preprocessing link mentions that the dataset is from 2009-2010 so something is different

#severity data

WorkComp = read.csv("data.csv")
nrow(WorkComp) #paper gives 48703, this gives 54000 - no preprocessing is given, not sure what the discrepancy is

data("freMTPLsev")
nrow(freMTPLsev) #paper gives 21611, this gives 16181 - maybe it's the other one?

data("freMTPL2sev")
nrow(freMTPL2sev) #this gives 26444 - the paper given in the preprocessing link doesn't look like it culls any rows, so I'm not sure

#the paper gives 17910 for the Belgian MTPL, I imagine all of the zero-claim points were removed and some of the outlier-level claims
#were also cut. This is probably fine

#pg15training has the same issue as above

Emicen = read.csv("emicen.csv")
nrow(Emicen) #paper gives 9134, this gives 9134 - no issue
