baltimore_data <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year, type) %>%
  summarise(Emissions=sum(Emissions))
png(filename = "plot3.png")
chart <- ggplot(baltimore_data, aes(year, Emissions, color = type))
chart <- chart + geom_line() +
  xlab("year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Total Baltimore Emissions [2.5]* From 1999 to 2008')
print(chart)
dev.off()