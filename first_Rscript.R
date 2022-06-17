#viewing the diamond table in the tidyverse library 
head(diamonds)

str(diamonds)

glimpse(diamonds)

colnames(diamonds)

#renaming columns 
rename(diamonds, cut_new = cut)

#exploring the diamonds data set
summarize(diamonds,mean_depth = mean(depth))

#vizualizing the dataset
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point() + facet_wrap(~cut)

#Using pipes 
data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth, dose == 0.5)
View(filtered_tg)


arrange(filtered_tg, len)

filtered_ToothGrowth <- ToothGrowth %>% 
  filter(dose > 0.5) %>% 
  arrange(len)


new_filt_tg <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T),.groups = "drop")
