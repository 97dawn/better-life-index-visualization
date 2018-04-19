library(GGally)
# raw data
raw_data <- read.csv("BetterLifeIndex_Data_2011V6.csv", header=F)

# pre-processing raw data
raw_data <- raw_data[7:40,]

# gather country name, air pollution rate, life expectancy rate, homicide rate, and assault rate
country_name <- raw_data[,2]
air_pollution <- raw_data[,12]
life_exp <- raw_data[,15]
homicide <- raw_data[,18]
assault <- raw_data[,19]

# label continent name for each country for coloring the graph lines later
continent<-c('Oceania','Western Europe','Western Europe','North America','South America','Eastern Europe','Northern Europe','Northern Europe', 'Northern Europe','Western Europe','Western Europe','Southern Europe','Eastern Europe','Northern Europe','Western Europe','Middle East Asia','Southern Europe','East Asia','East Asia','Western Europe','South America','Western Europe','Oceania','Northern Europe','Eastern Europe','Southern Europe','Middle Europe','Middle Europe','Southern Europe','Northern Europe','Middle Europe','West Asia',"Western Europe","North America")

# create data frame for graph
df <- data.frame(country=country_name,life_expectancy=life_exp, 
                 air_pollution = air_pollution, homicide=homicide,
                 assault=assault, continent=continent)

# plot parallel coordinate graph (scale min is 0 and max is 1)
ggparcoord(df, columns = 2:5, groupColumn = 'continent', scale = 'std')

# plot parallel coordinate graph for Asia
continent<-c('Other','Other','Other','Other','Other','Other','Other','Other', 'Other','Other','Other','Other','Other','Other','Other','Middle East Asia','Other','East Asia','East Asia','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','West Asia','Other','Other')
df <- data.frame(country=country_name,life_expectancy=life_exp, 
                 air_pollution = air_pollution, homicide=homicide,
                 assault=assault, continent=continent)
ggparcoord(df, columns = 2:5, groupColumn = 'continent', scale = 'std')

# plot parallel coordinate graph for Europe
continent<-c('Other','Western Europe','Western Europe','Other','Other','Eastern Europe','Northern Europe','Northern Europe', 'Northern Europe','Western Europe','Western Europe','Southern Europe','Eastern Europe','Northern Europe','Western Europe','Other','Southern Europe','Other','Other','Western Europe','Other','Western Europe','Other','Northern Europe','Eastern Europe','Southern Europe','Middle Europe','Middle Europe','Southern Europe','Northern Europe','Middle Europe','Other','Western Europe','Other')
df <- data.frame(country=country_name,life_expectancy=life_exp, 
                 air_pollution = air_pollution, homicide=homicide,
                 assault=assault, continent=continent)
ggparcoord(df, columns = 2:5, groupColumn = 'continent', scale = 'std')

# plot parallel coordinate graph for Europe
continent<-c('Oceania','Other','Other','North America','South America','Other','Other','Other', 'Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','South America','Other','Oceania','Other','Other','Other','Other','Other','Other','Other','Other','Other','Other','North America')
df <- data.frame(country=country_name,life_expectancy=life_exp, 
                 air_pollution = air_pollution, homicide=homicide,
                 assault=assault, continent=continent)
ggparcoord(df, columns = 2:5, groupColumn = 'continent', scale = 'std')