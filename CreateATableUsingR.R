months <- paste(month.abb, '2017') # length
tables <- c('Uniques', 'Visits', 'Page Views', 'Downloads via App Annie')
sources <- c('HDC', 'mDot', 'Rentals', 'Mortgage Calc')
os <- c('iOS', 'Android')
d <- expand.grid(months, tables, sources, os, stringsAsFactors = F)

# filtering to remove unneded rows based upon values in different columns
a1 <- d %>%
  filter(Var2 != 'Downloads via App Annie' | Var3 != 'mDot'
         , Var2 != 'Uniques' | Var3 != 'mDot' | Var4 != 'iOS'
         , Var2 != 'Visits' | Var3 != 'mDot' | Var4 != 'iOS'
         , Var2 != 'Page Views' | Var3 != 'mDot' | Var4 != 'iOS')


# replaces each value that matches col3 of 'MDot' with 'All' in col4
a1[d$Var3 =='mDot', "Var4"] <- 'All'

unique(a1)

write.csv(d, '~/monthly-mobile_framework.csv')




















a1 <- d %>%
              filter(Var2 != 'Downloads via App Annie' | Var3 != 'mDot'
                     , Var2 != 'Uniques' | Var3 != 'mDot' | Var4 != 'iOS'
                     , Var2 != 'Visits' | Var3 != 'mDot' | Var4 != 'iOS'
                     , Var2 != 'Page Views' | Var3 != 'mDot' | Var4 != 'iOS')



# to change the cell value based upon 2 other columns
data[data$v1=='hagdj' & data$v2='ha', 'blah'] <- hskdj
a1[a1$Var2 == 'Uniques' & a1$Var3 == 'mDot', 'Var4'] <- "All"
a1[d$Var3 =='mDot', "Var4"] <- 'All'






