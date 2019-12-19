data <- readRDS("events_past_year.rds")

# Display count of events for each city and country
as.data.frame(table(data$venue_city))
as.data.frame(table(data$venue_country))

# Plot top 50 groups (by number of events) using a bar plot
groupf <- as.data.frame(table(data$group_name))
groupf <- head(groupf[order(-groupf$Freq),], 50)
par(mar=c(4, 12, 2, 2))
barplot(height=groupf$Freq, names.arg=groupf$Var1, cex.names=0.5, horiz=TRUE,
    las=1, xlim=c(0, 100))
