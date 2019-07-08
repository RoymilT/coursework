########################################
# load libraries
########################################

# load some packages that we'll need
library(tidyverse)
library(scales)

# be picky about white backgrounds on our plots
theme_set(theme_bw())

# load RData file output by load_trips.R
load('trips.RData')

<<<<<<< HEAD
<<<<<<< HEAD
View(trips)
=======

>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======

>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
########################################
# plot trip data
########################################

# plot the distribution of trip times across all rides

<<<<<<< HEAD
<<<<<<< HEAD
trips %>%
  summarize(count = n()) %>%
  ggplot(aes(x = tripduration, 
                     y = count())) +
    geom_histogram()


# plot the distribution of trip times by rider type

trips %>%
  group_by(usertype, tripduration) %>%
  ggplot(aes(x = usertype, y = tripduration)) + 
  geom_line()

# plot the total number of trips over each day

trips %>%
  mutate(day = as.Date(starttime)) %>%
  summarize(count = n()) %>%
  ggplot(aes(x = day , y = count)) + 
  geom_point()
  

# plot the total number of trips (on the y axis) by age (on the x axis) and gender (indicated with color)

trips %>%
  mutate(age = round((2019 - birth_year)/3,0)*3) %>%
  group_by(age,
           gender) %>%
  summarize(count=n()) %>%
  ggplot(aes(x = age, 
             y = count,
             color = gender)) +
  geom_point() +
  geom_line() +
  coord_cartesian(xlim = c(25, 75))

# plot the ratio of male to female trips (on the y axis) by age (on the x axis)
# hint: use the spread() function to reshape things to make it easier to compute this ratio

trips %>%
  mutate(age = 2019 - birth_year, gender)
  group_by(gender, age) %>%
    summarize(count = n()) %>%
    ggplot(aes( x = age, y = count())) %>%
    spread(key = age)
  
trips %>%
  group_by(gender) %>%
  summarize(count = n()) %>%
  spread(key = gender, value = count()) %>%
  mutate(ratio = Male / Female,
         count2 = Male + Female) %>%
  filter(age < 100) %>%
  ggplot(aes( x = age, y = ratio, size = count2)) +
  geom_point(alpha = 0.5)
    

########################################
# plot weather data
########################################
  weather %>%
    View()
# plot the minimum temperature (on the y axis) over each day (on the x axis)
month_levels <- c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")

month <- as.character(month(ymd))
                      
names(month) <- gsub('[1:9]', 'month_levels', names(month))

weather %>%
  mutate(day = yday(ymd),
         month) %>%
  ggplot(aes( x = day, y = tmin, color = month)) +
  geom_point()

#------------Good----------------------------------
weather %>%
  mutate(day = yday(ymd),
         month = as.character(month(ymd))) %>%
  ggplot(aes( x = day, y = tmin, color = month)) +
  geom_point() 
  

  arrange(desc(day)) %>%
  ggplot(aes(x = day, y = tmin)) +
  geom_point()
#-------------------------------------------------- 

# plot the minimum temperature and maximum temperature (on the y axis, with different colors) 
# over each day (on the x axis)
# hint: try using the gather() function for this to reshape things before plotting

weather %>%
    group_by(tmax,tmin) %>%
    gather(key = 'tmax_tmin', value = 'temp', tmax, tmin) %>%
    mutate(day = yday(ymd), month = as.character(month(ymd))) %>%
    ungroup() %>%
    ggplot(aes(x = day , y = temp, color = tmax_tmin)) +
    geom_point()
    
    
=======
=======
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
# plot the distribution of trip times by rider type

# plot the total number of trips over each day

# plot the total number of trips (on the y axis) by age (on the x axis) and gender (indicated with color)

# plot the ratio of male to female trips (on the y axis) by age (on the x axis)
# hint: use the spread() function to reshape things to make it easier to compute this ratio

########################################
# plot weather data
########################################
# plot the minimum temperature (on the y axis) over each day (on the x axis)

# plot the minimum temperature and maximum temperature (on the y axis, with different colors) over each day (on the x axis)
# hint: try using the gather() function for this to reshape things before plotting

<<<<<<< HEAD
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
########################################
# plot trip and weather data
########################################

# join trips and weather
<<<<<<< HEAD
<<<<<<< HEAD
trips_with_weather <- inner_join(trips, weather, by="ymd") 
ungroup()
# plot the number of trips as a function of the minimum temperature, where each point represents a day
# you'll need to summarize the trips and join to the weather data to do this

trips_with_weather %>%
  group_by(ymd, tmin) %>%
  summarize(count = n(), temp_min = mean(tmin)) %>%
  ggplot() +
  geom_point(aes(x = tmin, y= count))
  
# repeat this, splitting results by whether there was substantial precipitation or not
# you'll need to decide what constitutes "substantial precipitation" and create a new T/F column to indicate this

trips_with_weather %>%
  group_by(ymd, tmin, prcp) %>%
  summarize(trip_count = n(), temp_min = mean(tmin)) %>%
  ungroup() %>%
  ggplot() +
  geom_point(aes(x = tmin, y= count))


# add a smoothed fit on top of the previous plot, using geom_smooth



# compute the average number of trips and standard deviation in number of trips by hour of the day
# hint: use the hour() function from the lubridate package



# plot the above



=======
=======
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
trips_with_weather <- inner_join(trips, weather, by="ymd")

# plot the number of trips as a function of the minimum temperature, where each point represents a day
# you'll need to summarize the trips and join to the weather data to do this

# repeat this, splitting results by whether there was substantial precipitation or not
# you'll need to decide what constitutes "substantial precipitation" and create a new T/F column to indicate this

# add a smoothed fit on top of the previous plot, using geom_smooth

# compute the average number of trips and standard deviation in number of trips by hour of the day
# hint: use the hour() function from the lubridate package

# plot the above

<<<<<<< HEAD
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======
>>>>>>> 49b7daee778029c90086abe578767f42a36e72f5
# repeat this, but now split the results by day of the week (Monday, Tuesday, ...) or weekday vs. weekend days
# hint: use the wday() function from the lubridate package
