
library(ggplot2)
library(dplyr)
library(scales)

dataset<- read.csv("2017-2023-10-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)


totalmaterialtype <- dataset  %>%  
  group_by(MaterialType) %>% 
  filter(MaterialType %in% c("AUDIOBOOK", "EBOOK", "BOOK")) %>% 
  summarize(checkouttotal= sum(Checkouts))


ggplot(data = totalmaterialtype) +
 geom_col(aes(x = MaterialType, y = checkouttotal, fill = MaterialType)) +
  labs(x= "Type of Material", y = "Checkout Total", title = "Total Checkouts for Each Type", fill = "Type of Material")
 
