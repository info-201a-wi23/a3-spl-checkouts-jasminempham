
library(ggplot2)
library(dplyr)
library(scales)


dataset<- read.csv("/Users/jasminetran/Desktop/2017-2023-10-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

checkoutmaterialtype <- dataset  %>%  
  group_by(MaterialType, CheckoutYear) %>% 
  filter(MaterialType %in% c("AUDIOBOOK", "EBOOK", "BOOK")) %>% 
  summarize(matertialtypetotal= sum(Checkouts))


chart2 <-ggplot(checkoutmaterialtype, aes(x = CheckoutYear, y = matertialtypetotal, color = MaterialType)) +
  geom_line() +
  labs(x = "Checkout Year", y = "Checkout Total", title = "Checkouts Per Year for Each Type")

