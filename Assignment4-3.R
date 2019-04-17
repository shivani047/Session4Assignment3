states=rownames(USArrests)

states



#Get states names with 'w'.

states[grep("w",states)]



#Get states names with 'W'.

states[grep("W",states)]



# 2. Prepare a histogram of the number of characters in each US state.

# states1 <- matrix(ncol=1, nrow=50)

df = NULL # defining null to df

# creating dataframe with lenght of each state

for (i in 1:50) {
  
  df = rbind(df, data.frame(states[i], nchar(states[i])))
  
}

colnames(df) <- c("names", "len")  # defining column names
hist(df$len) # creating Histogram
