
library(ggplot2)
library(dplyr)

dataset<- read.csv("2017-2023-10-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)

usageclasstotal<- dataset  %>%  
  group_by(UsageClass, CheckoutYear) %>% 
  summarize(usagetotal= sum(Checkouts))

ggplot(usageclasstotal, aes(x = CheckoutYear, y = usagetotal, color = UsageClass)) +
  geom_line() +
  labs(x = "Checkout Year", y = "Checkout Total", title = "Physical Vs Digital Checkouts", color = "Type")




