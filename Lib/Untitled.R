correlation <-cor(mtcars)
correlation
head(mtcars)

library(readr)
library(dplyr)
summary(data_all)
getwd()
setwd("//Users//RenBaobei//Documents//UnitedHealthDataViz//Dataset")
files <- list.files(pattern="*.CSV")
data_all <- lapply(files, read_csv) %>% bind_rows()
names(data_all)
nrow(data_all)
data_new <- data_all %>% 
  select(location_id,location_name,cause_id,cause_name,sex,year_id,mx) %>% 
  filter(location_id %in% c(523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573))
nrow(data_new)
names(data_new)
head(data_new)
data_new <- data_new %>% 
  filter(year_id %in% c(1995:2014))
write.csv(data_new, file = "data_new.csv")
data_new <- read.csv(file = "data_new.csv")
unique(data_new$cause_name)
data_causes <- data.frame()
names(data_new)

data_causes <- data.frame()

  
Neoplasms <- data_new %>% 
  dplyr::filter(cause_id == 410) %>% 
  dplyr::select(Neoplasms = mx, sex, location_name, year_id) 
LipOral <- data_new %>% 
  dplyr::filter(cause_id == 444) %>% 
  dplyr::select(LipOral = mx, sex, location_name, year_id) 
Nasopharynx <- data_new %>% 
  dplyr::filter(cause_id == 447) %>% 
  dplyr::select(Nasopharynx = mx, sex, location_name, year_id) 
OtherPharynx <- data_new %>% 
  dplyr::filter(cause_id == 450) %>% 
  dplyr::select(OtherPharynx = mx, sex, location_name, year_id) 
Esophageal <- data_new %>% 
  dplyr::filter(cause_id == 411) %>% 
  dplyr::select(Esophageal = mx, sex, location_name, year_id)
Stomach <- data_new %>% 
  dplyr::filter(cause_id == 414) %>% 
  dplyr::select(Stomach = mx, sex, location_name, year_id)
ColonRectum <- data_new %>% 
  dplyr::filter(cause_id == 441) %>% 
  dplyr::select(ColonRectum = mx, sex, location_name, year_id)
Liver <- data_new %>% 
  dplyr::filter(cause_id == 417) %>% 
  dplyr::select(Liver = mx, sex, location_name, year_id)
GallbladderBiliaryTract <- data_new %>% 
  dplyr::filter(cause_id == 453) %>% 
  dplyr::select(GallbladderBiliaryTract = mx, sex, location_name, year_id)

Pancreatic <- data_new %>% 
  dplyr::filter(cause_id == 456) %>% 
  dplyr::select(Pancreatic = mx, sex, location_name, year_id)
Larynx <- data_new %>% 
  dplyr::filter(cause_id == 423) %>% 
  dplyr::select(Larynx = mx, sex, location_name, year_id)
TrachealBronchusLung <- data_new %>% 
  dplyr::filter(cause_id == 426) %>% 
  dplyr::select(TrachealBronchusLung = mx, sex, location_name, year_id)
MalignantSkinMelanoma <- data_new %>% 
  dplyr::filter(cause_id == 459) %>% 
  dplyr::select(MalignantSkinMelanoma = mx, sex, location_name, year_id)
NonMelanomaSkin <- data_new %>% 
  dplyr::filter(cause_id == 462) %>% 
  dplyr::select(NonMelanomaSkin = mx, sex, location_name, year_id)

Breast <- data_new %>% 
  dplyr::filter(cause_id == 429) %>% 
  dplyr::select(Breast = mx, sex, location_name, year_id)
Cervical <- data_new %>% 
  dplyr::filter(cause_id == 432) %>% 
  dplyr::select(Cervical = mx, sex, location_name, year_id)
Uterine <- data_new %>% 
  dplyr::filter(cause_id == 435) %>% 
  dplyr::select(Uterine = mx, sex, location_name, year_id)
Ovarian <- data_new %>% 
  dplyr::filter(cause_id == 465) %>% 
  dplyr::select(Ovarian = mx, sex, location_name, year_id)
Prostate <- data_new %>% 
  dplyr::filter(cause_id == 438) %>% 
  dplyr::select(Prostate = mx, sex, location_name, year_id)
Testicular <- data_new %>% 
  dplyr::filter(cause_id == 468) %>% 
  dplyr::select(Testicular = mx, sex, location_name, year_id)
Kidney <- data_new %>% 
  dplyr::filter(cause_id == 471) %>% 
  dplyr::select(Kidney = mx, sex, location_name, year_id)
Bladder <- data_new %>% 
  dplyr::filter(cause_id == 474) %>% 
  dplyr::select(Bladder = mx, sex, location_name, year_id)
BrainNervousSystem <- data_new %>% 
  dplyr::filter(cause_id == 477) %>% 
  dplyr::select(BrainNervousSystem = mx, sex, location_name, year_id)
Thyroid <- data_new %>% 
  dplyr::filter(cause_id == 480) %>% 
  dplyr::select(Thyroid = mx, sex, location_name, year_id)
Mesothelioma <- data_new %>% 
  dplyr::filter(cause_id == 483) %>% 
  dplyr::select(Mesothelioma = mx, sex, location_name, year_id)
HodgkinLymphoma <- data_new %>% 
  dplyr::filter(cause_id == 484) %>% 
  dplyr::select(HodgkinLymphoma = mx, sex, location_name, year_id)
NonHodgkinLymphoma <- data_new %>% 
  dplyr::filter(cause_id == 485) %>% 
  dplyr::select(NonHodgkinLymphoma = mx, sex, location_name, year_id)
MultipleMyeloma <- data_new %>% 
  dplyr::filter(cause_id == 486) %>% 
  dplyr::select(MultipleMyeloma = mx, sex, location_name, year_id)
Leukemia <- data_new %>% 
  dplyr::filter(cause_id == 487) %>% 
  dplyr::select(Leukemia = mx, sex, location_name, year_id)
AcuteLymphoidLeukemia <- data_new %>% 
  dplyr::filter(cause_id == 845) %>% 
  dplyr::select(AcuteLymphoidLeukemia = mx, sex, location_name, year_id)
ChronicLymphoidLeukemia <- data_new %>% 
  dplyr::filter(cause_id == 846) %>% 
  dplyr::select(ChronicLymphoidLeukemia = mx, sex, location_name, year_id)
AcuteMyeloidLeukemia <- data_new %>% 
  dplyr::filter(cause_id == 847) %>% 
  dplyr::select(AcuteMyeloidLeukemia = mx, sex, location_name, year_id)
ChronicMyeloidLeukemia <- data_new %>% 
  dplyr::filter(cause_id == 848) %>% 
  dplyr::select(ChronicMyeloidLeukemia = mx, sex, location_name, year_id)
OtherNeoplasms<- data_new %>% 
  dplyr::filter(cause_id == 488) %>% 
  dplyr::select(OtherNeoplasms = mx, sex, location_name, year_id)

data <- data.frame(
                   LipOral = LipOral %>% dplyr::filter(sex == "Both") %>% dplyr::select(LipOral), 
                   Nasopharynx = Nasopharynx %>% dplyr::filter(sex == "Both") %>% dplyr::select(Nasopharynx), 
                   OtherPharynx = OtherPharynx %>% dplyr::filter(sex == "Both") %>% dplyr::select(OtherPharynx),
                   Esophageal = Esophageal %>% dplyr::filter(sex == "Both") %>% dplyr::select(Esophageal), 
                   Stomach = Stomach %>% dplyr::filter(sex == "Both") %>% dplyr::select(Stomach), 
                   ColonRectum = ColonRectum %>% dplyr::filter(sex == "Both") %>% dplyr::select(ColonRectum), 
                   Liver = Liver %>% dplyr::filter(sex == "Both") %>% dplyr::select(Liver), 
                   GallbladderBiliaryTract = GallbladderBiliaryTract %>% dplyr::filter(sex == "Male") %>% dplyr::select(GallbladderBiliaryTract),
                   Pancreatic = Pancreatic %>% dplyr::filter(sex == "Both") %>% dplyr::select(Pancreatic), 
                   Larynx = Larynx %>% dplyr::filter(sex == "Both") %>% dplyr::select(Larynx),
                   TrachealBronchusLung = TrachealBronchusLung %>% dplyr::filter(sex == "Both") %>% dplyr::select(TrachealBronchusLung),
                   MalignantSkinMelanoma = MalignantSkinMelanoma %>% dplyr::filter(sex == "Both") %>% dplyr::select(MalignantSkinMelanoma),
                   
                   Kidney = Kidney %>% dplyr::filter(sex == "Both") %>% dplyr::select(Kidney),
                   Bladder = Bladder %>% dplyr::filter(sex == "Both") %>% dplyr::select(Bladder),
                   BrainNervousSystem = BrainNervousSystem %>% dplyr::filter(sex == "Both") %>% dplyr::select(BrainNervousSystem),
                   Thyroid = Thyroid %>% dplyr::filter(sex == "Both") %>% dplyr::select(Thyroid), 
                   Mesothelioma = Mesothelioma %>% dplyr::filter(sex == "Both") %>% dplyr::select(Mesothelioma),
                   HodgkinLymphoma = HodgkinLymphoma %>% dplyr::filter(sex == "Both") %>% dplyr::select(HodgkinLymphoma),
                   NonHodgkinLymphoma = NonHodgkinLymphoma %>% dplyr::filter(sex == "Both") %>% dplyr::select(NonHodgkinLymphoma),
                   MultipleMyeloma = MultipleMyeloma %>% dplyr::filter(sex == "Both") %>% dplyr::select(MultipleMyeloma), 
                   
                   AcuteLymphoidLeukemia = AcuteLymphoidLeukemia %>% dplyr::filter(sex == "Both") %>% dplyr::select(AcuteLymphoidLeukemia),
                   ChronicLymphoidLeukemia = ChronicLymphoidLeukemia %>% dplyr::filter(sex == "Both") %>% dplyr::select(ChronicLymphoidLeukemia),
                   AcuteMyeloidLeukemia = AcuteMyeloidLeukemia %>% dplyr::filter(sex == "Both") %>% dplyr::select(AcuteMyeloidLeukemia),
                   ChronicMyeloidLeukemia = ChronicMyeloidLeukemia %>% dplyr::filter(sex == "Both") %>% dplyr::select(ChronicMyeloidLeukemia),
                   OtherNeoplasms = OtherNeoplasms %>% dplyr::filter(sex == "Both") %>% dplyr::select(OtherNeoplasms))
length(data)
data_ordered <- data[, order(names(data))]
head(data_ordered)
sex_cancer <- data.frame(sex = Neoplasms$sex, Neoplasms = Neoplasms$Neoplasms, LipOral = LipOral$LipOral, 
                         Nasopharynx = Nasopharynx$Nasopharynx, OtherPharynx = OtherPharynx$OtherPharynx,
                         Esophageal = Esophageal$Esophageal, Stomach = Stomach$Stomach, 
                         ColonRectum = ColonRectum$ColonRectum, Liver = Liver$Liver, 
                         GallbladderBiliaryTract = GallbladderBiliaryTract$GallbladderBiliaryTract,
                         Pancreatic = Pancreatic$Pancreatic, Larynx = Larynx$Larynx,
                         TrachealBronchusLung = TrachealBronchusLung$TrachealBronchusLung,
                         MalignantSkinMelanoma = MalignantSkinMelanoma$MalignantSkinMelanoma,
                         NonMelanomaSkin = NonMelanomaSkin$NonMelanomaSkin,
                         # Breast = Breast$Breast, Cervical = Cervical$Cervical)
                         # Uterine = Uterine$Uterine, Ovarian = Ovarian$Ovarian)
                         # Prostate = Prostate$Prostate, Testicular = Testicular$Testicular)
                         Kidney = Kidney$Kidney, Bladder = Bladder$Bladder, BrainNervousSystem = BrainNervousSystem$BrainNervousSystem,
                         Thyroid = Thyroid$Thyroid, Mesothelioma = Mesothelioma$Mesothelioma,
                         HodgkinLymphoma = HodgkinLymphoma$HodgkinLymphoma, NonHodgkinLymphoma = NonHodgkinLymphoma$NonHodgkinLymphoma,
                         MultipleMyeloma = MultipleMyeloma$MultipleMyeloma, Leukemia = Leukemia$Leukemia,
                         AcuteLymphoidLeukemia = AcuteLymphoidLeukemia$AcuteLymphoidLeukemia,
                         ChronicLymphoidLeukemia = ChronicLymphoidLeukemia$ChronicLymphoidLeukemia,
                         AcuteMyeloidLeukemia = AcuteMyeloidLeukemia$AcuteMyeloidLeukemia,
                         ChronicMyeloidLeukemia = ChronicMyeloidLeukemia$ChronicMyeloidLeukemia,
                         OtherNeoplasms = OtherNeoplasms$OtherNeoplasms)


names(sex_cancer)
male_cancer <- data_new %>% 
  dplyr::filter(sex == "Male")
data_male <- data.frame(
                        LipOral = LipOral %>% dplyr::filter(sex == "Male") %>% dplyr::select(LipOral), 
                        Nasopharynx = Nasopharynx %>% dplyr::filter(sex == "Male") %>% dplyr::select(Nasopharynx), 
                        OtherPharynx = OtherPharynx %>% dplyr::filter(sex == "Male") %>% dplyr::select(OtherPharynx),
                        Esophageal = Esophageal %>% dplyr::filter(sex == "Male") %>% dplyr::select(Esophageal), 
                        Stomach = Stomach %>% dplyr::filter(sex == "Male") %>% dplyr::select(Stomach), 
                        ColonRectum = ColonRectum %>% dplyr::filter(sex == "Male") %>% dplyr::select(ColonRectum), 
                        Liver = Liver %>% dplyr::filter(sex == "Male") %>% dplyr::select(Liver), 
                        GallbladderBiliaryTract = GallbladderBiliaryTract %>% dplyr::filter(sex == "Male") %>% dplyr::select(GallbladderBiliaryTract),
                        Pancreatic = Pancreatic %>% dplyr::filter(sex == "Male") %>% dplyr::select(Pancreatic), 
                        Larynx = Larynx %>% dplyr::filter(sex == "Male") %>% dplyr::select(Larynx),
                        TrachealBronchusLung = TrachealBronchusLung %>% dplyr::filter(sex == "Male") %>% dplyr::select(TrachealBronchusLung),
                        MalignantSkinMelanoma = MalignantSkinMelanoma %>% dplyr::filter(sex == "Male") %>% dplyr::select(MalignantSkinMelanoma),
                        
                        Prostate = Prostate %>% dplyr::filter(sex == "Male") %>% dplyr::select(Prostate),
                        Testicular = Testicular %>% dplyr::filter(sex == "Male") %>% dplyr::select(Testicular),
                        Kidney = Kidney %>% dplyr::filter(sex == "Male") %>% dplyr::select(Kidney),
                        Bladder = Bladder %>% dplyr::filter(sex == "Male") %>% dplyr::select(Bladder),
                        BrainNervousSystem = BrainNervousSystem %>% dplyr::filter(sex == "Male") %>% dplyr::select(BrainNervousSystem),
                        Thyroid = Thyroid %>% dplyr::filter(sex == "Male") %>% dplyr::select(Thyroid), 
                        Mesothelioma = Mesothelioma %>% dplyr::filter(sex == "Male") %>% dplyr::select(Mesothelioma),
                        HodgkinLymphoma = HodgkinLymphoma %>% dplyr::filter(sex == "Male") %>% dplyr::select(HodgkinLymphoma),
                        NonHodgkinLymphoma = NonHodgkinLymphoma %>% dplyr::filter(sex == "Male") %>% dplyr::select(NonHodgkinLymphoma),
                        MultipleMyeloma = MultipleMyeloma %>% dplyr::filter(sex == "Male") %>% dplyr::select(MultipleMyeloma), 
                        
                        AcuteLymphoidLeukemia = AcuteLymphoidLeukemia %>% dplyr::filter(sex == "Male") %>% dplyr::select(AcuteLymphoidLeukemia),
                        ChronicLymphoidLeukemia = ChronicLymphoidLeukemia %>% dplyr::filter(sex == "Male") %>% dplyr::select(ChronicLymphoidLeukemia),
                        AcuteMyeloidLeukemia = AcuteMyeloidLeukemia %>% dplyr::filter(sex == "Male") %>% dplyr::select(AcuteMyeloidLeukemia),
                        ChronicMyeloidLeukemia = ChronicMyeloidLeukemia %>% dplyr::filter(sex == "Male") %>% dplyr::select(ChronicMyeloidLeukemia),
                        OtherNeoplasms = OtherNeoplasms %>% dplyr::filter(sex == "Male") %>% dplyr::select(OtherNeoplasms))
data_male_ordered <- data_male[, order(names(data_male))]
female_cancer <- data_new %>% 
  dplyr::filter(sex == "Female")
data_female <- data.frame(
                          LipOral = LipOral %>% dplyr::filter(sex == "Female") %>% dplyr::select(LipOral), 
                          Nasopharynx = Nasopharynx %>% dplyr::filter(sex == "Female") %>% dplyr::select(Nasopharynx), 
                          OtherPharynx = OtherPharynx %>% dplyr::filter(sex == "Female") %>% dplyr::select(OtherPharynx),
                          Esophageal = Esophageal %>% dplyr::filter(sex == "Female") %>% dplyr::select(Esophageal), 
                          Stomach = Stomach %>% dplyr::filter(sex == "Female") %>% dplyr::select(Stomach), 
                          ColonRectum = ColonRectum %>% dplyr::filter(sex == "Female") %>% dplyr::select(ColonRectum), 
                          Liver = Liver %>% dplyr::filter(sex == "Female") %>% dplyr::select(Liver), 
                          GallbladderBiliaryTract = GallbladderBiliaryTract %>% dplyr::filter(sex == "Female") %>% dplyr::select(GallbladderBiliaryTract),
                          Pancreatic = Pancreatic %>% dplyr::filter(sex == "Female") %>% dplyr::select(Pancreatic), 
                          Larynx = Larynx %>% dplyr::filter(sex == "Female") %>% dplyr::select(Larynx),
                          TrachealBronchusLung = TrachealBronchusLung %>% dplyr::filter(sex == "Female") %>% dplyr::select(TrachealBronchusLung),
                          MalignantSkinMelanoma = MalignantSkinMelanoma %>% dplyr::filter(sex == "Female") %>% dplyr::select(MalignantSkinMelanoma),
                          
                          Kidney = Kidney %>% dplyr::filter(sex == "Female") %>% dplyr::select(Kidney),
                          Bladder = Bladder %>% dplyr::filter(sex == "Female") %>% dplyr::select(Bladder),
                          BrainNervousSystem = BrainNervousSystem %>% dplyr::filter(sex == "Female") %>% dplyr::select(BrainNervousSystem),
                          Thyroid = Thyroid %>% dplyr::filter(sex == "Female") %>% dplyr::select(Thyroid), 
                          Mesothelioma = Mesothelioma %>% dplyr::filter(sex == "Female") %>% dplyr::select(Mesothelioma),
                          HodgkinLymphoma = HodgkinLymphoma %>% dplyr::filter(sex == "Female") %>% dplyr::select(HodgkinLymphoma),
                          NonHodgkinLymphoma = NonHodgkinLymphoma %>% dplyr::filter(sex == "Female") %>% dplyr::select(NonHodgkinLymphoma),
                          MultipleMyeloma = MultipleMyeloma %>% dplyr::filter(sex == "Female") %>% dplyr::select(MultipleMyeloma), 
                          
                          AcuteLymphoidLeukemia = AcuteLymphoidLeukemia %>% dplyr::filter(sex == "Female") %>% dplyr::select(AcuteLymphoidLeukemia),
                          ChronicLymphoidLeukemia = ChronicLymphoidLeukemia %>% dplyr::filter(sex == "Female") %>% dplyr::select(ChronicLymphoidLeukemia),
                          AcuteMyeloidLeukemia = AcuteMyeloidLeukemia %>% dplyr::filter(sex == "Female") %>% dplyr::select(AcuteMyeloidLeukemia),
                          ChronicMyeloidLeukemia = ChronicMyeloidLeukemia %>% dplyr::filter(sex == "Female") %>% dplyr::select(ChronicMyeloidLeukemia),
                          OtherNeoplasms = OtherNeoplasms %>% dplyr::filter(sex == "Female") %>% dplyr::select(OtherNeoplasms),
                          Breast = Breast %>% dplyr::filter(sex == "Female") %>% dplyr::select(Breast), 
                          Cervical = Cervical %>% dplyr::filter(sex == "Female") %>% dplyr::select(Cervical),
                          Uterine = Uterine %>% dplyr::filter(sex == "Female") %>% dplyr::select(Uterine), 
                          Ovarian = Ovarian %>% dplyr::filter(sex == "Female") %>% dplyr::select(Ovarian))
                          
data_female_ordered <- data_female[, order(names(data_female))]                          
                          
head(sex_cancer[,-1])
unique(sex_cancer$sex)






rdata <- readRDS("healthexp.Rds")
