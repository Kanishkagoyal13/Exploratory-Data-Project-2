baltimore_data <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year, type) %>%
  summarise(Emissions=sum(Emissions))
png(filename = "plot3.png")
qplot(Year, Emissions, data = baltimore_data, color = type, geom = "line") +
  ggtitle("Total Emissions of PM2.5 in Baltimore City By pollutant type") + 
  ylab("Total Emissions (tons)") + 
  xlab("Year") 
dev.off()
