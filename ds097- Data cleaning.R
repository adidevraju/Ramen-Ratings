library(tidyverse)
#load data----------------------------
ds097 <- read_csv("ramen-ratings.csv")
glimpse(ds097)
#Data cleaning------------------------------------------------------------------
#convert starts to numeric and remove "unrated"
ds097_clean <- ds097 %>%
  mutate(
    Stars_num = as.numeric(Stars)   # non-numeric => NA
  ) %>%
  filter(!is.na(Stars_num))        # keep only rated rows

summary(ds097_clean$Stars_num)