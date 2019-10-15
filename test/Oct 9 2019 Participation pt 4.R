library("tidyverse")
library("here")
library("readxl")
library(here)

mri_file =here("test", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, range= "A1:L12")
view(mri)

mri <- mri[,-10]

mri %>% 
  pivot_longer(cols= 'Slice 1':'Slice 8',
                names_to ='slice_no',
                values_to='value')
