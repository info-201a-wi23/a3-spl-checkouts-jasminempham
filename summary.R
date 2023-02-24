library(dplyr)

dataset<- read.csv("/Users/jasminetran/Desktop/2017-2023-10-Checkouts-SPL-Data.csv", stringsAsFactors = FALSE)


totalebookscheckouts <- dataset %>% 
  filter(MaterialType %in% c("EBOOK")) %>% 
summarize(totalebookscheckouts = sum(Checkouts))

totalbookscheckouts <- dataset %>% 
  filter(MaterialType %in% c("BOOK")) %>% 
  summarize(totalbookscheckouts = sum(Checkouts))

totalaudiobookcheckouts <- dataset %>% 
  filter(MaterialType %in% c("AUDIOBOOK")) %>% 
  summarize(totalaudiobookcheckouts= sum(Checkouts))


yearmostcheckouts <- dataset %>% 
  filter(Checkouts == max(Checkouts, na.rm = TRUE)) %>% 
  pull(CheckoutYear)

monthmostcheckoutsdataset<- dataset %>% 
  filter(Checkouts == max(Checkouts, na.rm = TRUE)) %>% 
  pull(CheckoutMonth,)
