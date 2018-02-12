require(pacman)
######### Load files #############

df <- read.csv(paste0(getwd(),"/df/train.csv"), sep = ",") 

######### Understanding df ###########

# Library required----

  pacman :: p_load(magrittr)

# DF Structure----

  str(df)

  ## Adjust attrbiutes type----

    df$Survived %<>% as.factor()
    df$Name %<>% as.character()

  ## Str overview----
    
    # 'data.frame':	891 obs. of  12 variables:
    #   $ PassengerId: int  1 2 3 4 5 6 7 8 9 10 ...
    # $ Survived   : Factor w/ 2 levels "0","1": 1 2 2 2 1 1 1 1 2 2 ...
    # $ Pclass     : int  3 1 3 1 3 3 1 3 3 2 ...
    # $ Name       : Factor w/ 891 levels "Abbing, Mr. Anthony",..: 109 191 358 277 16 559 520 629 417 581 ...
    # $ Sex        : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 2 1 1 ...
    # $ Age        : num  22 38 26 35 35 NA 54 2 27 14 ...
    # $ SibSp      : int  1 1 0 1 0 0 0 3 0 1 ...
    # $ Parch      : int  0 0 0 0 0 0 0 1 2 0 ...
    # $ Ticket     : Factor w/ 681 levels "110152","110413",..: 524 597 670 50 473 276 86 396 345 133 ...
    # $ Fare       : num  7.25 71.28 7.92 53.1 8.05 ...
    # $ Cabin      : Factor w/ 148 levels "","A10","A14",..: 1 83 1 57 1 1 131 1 1 1 ...
    # $ Embarked   : Factor w/ 4 levels "","C","Q","S": 4 2 4 4 4 3 4 4 4 2 ...
    
# Summary
    
  summary(df)
    
     #    PassengerId    Survived     Pclass          Name               Sex           Age       
     #    Min.   :  1.0   0:549    Min.   :1.000   Length:891         female:314   Min.   : 0.42  
     #    1st Qu.:223.5   1:342    1st Qu.:2.000   Class :character   male  :577   1st Qu.:20.12  
     #    Median :446.0            Median :3.000   Mode  :character                Median :28.00  
     #    Mean   :446.0            Mean   :2.309                                   Mean   :29.70  
     #    3rd Qu.:668.5            3rd Qu.:3.000                                   3rd Qu.:38.00  
     #    Max.   :891.0            Max.   :3.000                                   Max.   :80.00  
     #                                                                             NA's   :177    

     #     SibSp           Parch             Ticket         Fare                Cabin     Embarked
     # Min.   :0.000   Min.   :0.0000   1601    :  7   Min.   :  0.00              :687    :  2   
     # 1st Qu.:0.000   1st Qu.:0.0000   347082  :  7   1st Qu.:  7.91   B96 B98    :  4   C:168   
     # Median :0.000   Median :0.0000   CA. 2343:  7   Median : 14.45   C23 C25 C27:  4   Q: 77   
     # Mean   :0.523   Mean   :0.3816   3101295 :  6   Mean   : 32.20   G6         :  4   S:644   
     # 3rd Qu.:1.000   3rd Qu.:0.0000   347088  :  6   3rd Qu.: 31.00   C22 C26    :  3           
     # Max.   :8.000   Max.   :6.0000   CA 2144 :  6   Max.   :512.33   D          :  3           
     #                                  (Other) :852                    (Other)    :186  