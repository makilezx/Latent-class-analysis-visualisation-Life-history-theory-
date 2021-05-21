#biblz
install.packages("haven", dependencies = T)
library(haven)
library(psych)

#uvodjenje matrice

matrica <- read_spss(file.choose())
#check
colnames(matrica)

#sumacioni i alfa

#VP270


#agresivnost
ajtemi_agr <- subset(matrica, select=c("vp_14", "vp_25", "vp_29", "vp_31", "vp_35",
                                       "vp_41", "vp_42", "vp_47", "vp_50", "vp_67")) 
  #check
  colnames(ajtemi_agr)
    dataFrame_agr<-data.frame(ajtemi_agr)
      #alfa
      alpha(dataFrame_agr, check.keys = T)
  
      
#ekstraverzija
ajtemi_eks <- subset(matrica, select=c("vp_4", "vp_15", "vp_18", "vp_38", "vp_43", 
                                       "vp_51", "vp_55", "vp_57", "vp_64", "vp_70")) 
  #check
  colnames(ajtemi_eks)
    dataFrame_eks<-data.frame(ajtemi_eks)
      #alfa
      alpha(dataFrame_eks, check.keys = T)



#neuroticizam
ajtemi_neu <- subset(matrica, select=c("vp_6", "vp_17", "vp_27", "vp_30","vp_32",
                                       "vp_34", "vp_46", "vp_56", "vp_61", "vp_69")) 
  #check
  colnames(ajtemi_neu)
    dataFrame_neu<-data.frame(ajtemi_neu)
      #alfa
      alpha(dataFrame_neu, check.keys = T)


#negativna valenca
ajtemi_nv <- subset(matrica, select=c("vp_2", "vp_8", "vp_10", "vp_11", "vp_19",
                                      "vp_23", "vp_37", "vp_48", "vp_62", "vp_65")) 
  #check
  colnames(ajtemi_nv)
    dataFrame_nv<-data.frame(ajtemi_nv)
      #alfa
      alpha(dataFrame_nv, check.keys = T)
      
      
#otvorenost
ajtemi_otv <- subset(matrica, select=c("vp_3", "vp_12", "vp_20", "vp_44", "vp_49",
                                       "vp_52", "vp_53", "vp_58", "vp_60", "vp_63")) 
  #check
  colnames(ajtemi_otv)
    dataFrame_otv<-data.frame(ajtemi_otv)
      #alfa
      alpha(dataFrame_otv, check.keys = T)

      
#pozitivna valenca
ajtemi_pv <- subset(matrica, select=c("vp_5", "vp_9", "vp_13", "vp_16", "vp_21",
                                      "vp_52", "vp_53", "vp_58", "vp_60", "vp_63")) 
  #check
  colnames(ajtemi_pv)
    dataFrame_pv<-data.frame(ajtemi_pv)
      #alfa
      alpha(dataFrame_pv, check.keys = T)


#savesnost      
ajtemi_sav <- subset(matrica, select=c( "vp_1", "vp_7", "vp_22", "vp_24", "vp_28",
                                        "vp_33", "vp_36", "vp_40", "vp_59", "vp_66")) 
  #check
  colnames(ajtemi_sav)
    dataFrame_sav<-data.frame(ajtemi_sav)
      #alfa
      alpha(dataFrame_sav, check.keys = T)


      
      
    
#KSF42
      
      
      #uvidi planiranje kontrola
      ajtemi_upk <- subset(matrica, select=c("mini_k_1","mini_k_2",                                  
                                             "mini_k_3","mini_k_4",                                  
                                             "mini_k_5","mini_k_6")) 
      #check
      colnames(ajtemi_upk)
      dataFrame_upk<-data.frame(ajtemi_upk)
      #alfa
      alpha(dataFrame_upk, check.keys = T)
      
      
      #altruizam
      ajtemi_alt <- subset(matrica, select=c("mini_k_7","mini_k_8",                                  
                                             "mini_k_9","mini_k_10",                                 
                                             "mini_k_11","mini_k_12" )) 
      #check
      colnames(ajtemi_alt)
      dataFrame_alt<-data.frame(ajtemi_alt)
      #alfa
      alpha(dataFrame_alt, check.keys = T)
      
      
      
      #religioznost
      ajtemi_rel <- subset(matrica, select=c("mini_k_13","mini_k_14",                                 
                                             "mini_k_15","mini_k_16",                                 
                                             "mini_k_17","mini_k_18")) 
      #check
      colnames(ajtemi_rel)
      dataFrame_rel<-data.frame(ajtemi_rel)
      #alfa
      alpha(dataFrame_rel, check.keys = T)
      
      
      #privrzenost partneru
      ajtemi_privpart <- subset(matrica, select=c("mini_k_19","mini_k_20",                                 
                                                  "mini_k_21","mini_k_22",                                 
                                                  "mini_k_23","mini_k_24")) 
      #check
      colnames(ajtemi_privpart)
      dataFrame_privpart<-data.frame(ajtemi_privpart)
      #alfa
      alpha(dataFrame_privpart, check.keys = T)
      
      
      #kvalitet odnosa sa roditeljima
      ajtemi_kvroditelji <- subset(matrica, select=c("mini_k_25","mini_k_26",                                 
                                                     "mini_k_27","mini_k_28",                                 
                                                     "mini_k_29","mini_k_30")) 
      #check
      colnames(ajtemi_kvroditelji)
      dataFrame_kvroditelji<-data.frame(ajtemi_kvroditelji)
      #alfa
      alpha(dataFrame_kvroditelji, check.keys = T)
      
      
      #kvalitet odnosa sa roditeljima
      ajtemi_kvrodbina <- subset(matrica, select=c("mini_k_31","mini_k_32",                                 
                                                   "mini_k_33","mini_k_34",                                 
                                                   "mini_k_35","mini_k_36")) 
      #check
      colnames(ajtemi_kvrodbina)
      dataFrame_kvrodbina<-data.frame(ajtemi_kvrodbina)
      #alfa
      alpha(dataFrame_kvrodbina, check.keys = T)
      
      
      #kvalitet odnosa sa prijateljima
      ajtemi_kvprijatelji <- subset(matrica, select=c( "mini_k_37","mini_k_38",                                 
                                                       "mini_k_39","mini_k_40",                                 
                                                       "mini_k_41","mini_k_42")) 
      #check
      colnames(ajtemi_kvprijatelji)
      dataFrame_kvprijatelji<-data.frame(ajtemi_kvprijatelji)
      #alfa
      alpha(dataFrame_kvprijatelji, check.keys = T)
      
