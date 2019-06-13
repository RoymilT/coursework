library(tidyverse)
library(lubridate)

########################################
# READ AND TRANSFORM THE DATA          #
########################################

# read one month of data
trips <- read_csv('201402-citibike-tripdata.csv')

# replace spaces in column names with underscores
names(trips) <- gsub(' ', '_', names(trips))

# convert dates strings to dates
# trips <- mutate(trips, starttime = mdy_hms(starttime), stoptime = mdy_hms(stoptime))

# recode gender as a factor 0->"Unknown", 1->"Male", 2->"Female"
trips <- mutate(trips, gender = factor(gender, levels=c(0,1,2), labels = c("Unknown","Male","Female")))


########################################
# YOUR SOLUTIONS BELOW
########################################
View(trips)

# count the number of trips (= rows in the data frame)
  numbers_trips <- nrow(trips)
  
  summarize(trips)

# find the earliest and latest birth years (see help for max and min to deal with NAs)
  y <- c(as.numeric(select(birth_year)))
  max(y)
  
  
# use filter and grepl to find all trips that either start or end on broadway
  View(filter(trips, grepl("Broadway", start_station_name) | grepl("Broadway", end_station_name)))


# do the same, but find all trips that both start and end on broadway
  View(
    filter(trips, grepl("Broadway", start_station_name) & grepl("Broadway", end_station_name))
  )
  
# find all unique station names
  arrange(distinct(trips, start_station_name))

# count the number of trips by gender, the average trip time by gender, and the standard deviation in trip time by gender
# do this all at once, by using summarize() with multiple arguments
  
  trips_by_gender <- group_by(trips, gender) %>% 
    summarize(count = n(),
              mean_tip = mean(tripduration)/60, standard_deviation = sd(tripduration)/60) %>% View()
  ungroup()


# find the 10 most frequent station-to-station trips
  trips %>% 
    group_by(start_station_id, end_station_id) %>%
    summarize(count=n()) %>%
    arrange(desc(count)) %>%
    head(10) %>%
    ungroup() %>%
    View()
  
# find the top 3 end stations for trips starting from each start station

  trips %>% 
    group_by(start_station_name, end_station_name) %>%
    summarize(count=n()) %>%
    arrange(start_station_name,desc(count)) %>%
    top_n(n=3, wt=count) %>%
    ungroup() %>%
    View()
    
# find the top 3 most common station-to-station trips by gender

  trips %>% 
    group_by(gender, start_station_name, end_station_name) %>%
    summarize(count=n()) %>%
    group_by(gender) %>%
    arrange(gender, desc(count)) %>%
    top_n(n=3, wt=count) %>%
    ungroup() %>%
    View()
  
# find the day with the most trips
  
  trips %>% 
    mutate(ymd= as.Date(starttime)) %>%
    group_by(ymd) %>%
    summarize(count = n()) %>%
    arrange(desc(count)) %>%
    head(1) %>%
    View()
  
  
  # tip: first add a column for year/month/day without time of day 
  #(use as.Date or floor_date from the lubridate package)

# compute the average number of trips taken during each of the 24 hours of the day across the entire month
# what time(s) of day tend to be peak hour(s)?

  trips %>%
    mutate(day = day(starttime), hour = hour(starttime)) %>%
    group_by(day,hour) %>%
    summarize(count=n()) %>%
    group_by(hour) %>%
    summarize(mean=mean(count)) %>%
    arrange(desc(mean)) %>%
    head(1) %>%
    View()
  
#==============NO==================================================
  trips %>%
    mutate(day = day(starttime), hour = hour(starttime)) %>%
    group_by(day, hour) %>%
    summarize(count=n()) %>%
    group_by(day, hour) %>%
    summarize(mean = mean(count)) %>%
    arrange(day, hour, desc(mean)) %>%
    ungroup() %>%
    View()
  