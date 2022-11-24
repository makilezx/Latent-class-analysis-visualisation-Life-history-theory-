install.packages("haven", dependencies = T)
library(haven)

  fajl_ksf <- read_spss(file.choose())
    colnames(fajl_ksf)  
      
      ksf_only <- subset(fajl_ksf, select=c(316:322)) 
      
          colnames(ksf_only)
          
          library(psych)
          describe(ksf_only)

install.packages("dplyr", dependencies = T)
library(dplyr)          
install.packages("mclust", dependencies = T)
library(mclust)
  .libPaths()

  
  obj_LCA <- dplyr::select(ksf_only, 1:7) 
  
    BIC = mclustBIC(obj_LCA, G=1:9) 
    plot(BIC) #different lines represent different assumptions about the covariance structure
    summary(BIC) #the best models
    
    mod1 = Mclust(ksf_only, 
                  G=1:9, #the number of latent classes to try (it will select the best one)
                  x = BIC) #giving it this BIC object we made before means it won't have to recalculate it
    summary(mod1, parameters = TRUE)
          
            
