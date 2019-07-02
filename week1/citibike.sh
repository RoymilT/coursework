#!/bin/bash
#
# add your solution after each of the 10 comments below
#

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#1 count the number of unique stations
#  330 total minus column title = 229 unique stations.

#2 count the number of unique bikes
#  5700 total unique bikes.

#3 count the number of trips per day
#   12771 "2014-02-01
#   13816 "2014-02-02
#    2600 "2014-02-03
#    8709 "2014-02-04
#    2746 "2014-02-05
#    7196 "2014-02-06
#    8495 "2014-02-07
#    5986 "2014-02-08
#    4996 "2014-02-09
#    6846 "2014-02-10
#    8343 "2014-02-11
#    8580 "2014-02-12
#     876 "2014-02-13
#    3609 "2014-02-14
#    2261 "2014-02-15
#    3003 "2014-02-16
#    4854 "2014-02-17
#    5140 "2014-02-18
#    8506 "2014-02-19
#   11792 "2014-02-20
#    8680 "2014-02-21
#   13044 "2014-02-22
#   13324 "2014-02-23
#   12922 "2014-02-24
#   12830 "2014-02-25
#   11188 "2014-02-26
#   12036 "2014-02-27
#    9587 "2014-02-28


#4 find the day with the most rides
#  2014-02-02 with 13816

#5 find the day with the fewest rides
# "2014-02-13 with only 876

#6 find the id of the bike with the most rides
#  bike id = 20837

#7 count the number of rides by gender and birth year
# cut -d, -f15,14 201402-citibike-tripdata.csv | sort | uniq -c | sort -n -t '"' -k2
#----------------------------------------------------------------------
#  6731   unknown = '0'
# 176526  male    = '1'
#  41479  female  = '2'
# 
#  count |year | gender|
   #   9 "1899","1"
   #   68 "1900","1"
   #   11 "1901","1"
   #    5 "1907","1"
   #    4 "1910","1"
   #    1 "1913","1"
   #    3 "1917","1"
   #    1 "1921","1"
   #   32 "1922","1"
   #    5 "1926","2"
   #    2 "1927","1"
   #    1 "1932","1"
   #    7 "1932","2"
   #   10 "1933","1"
   #   21 "1934","1"
   #   14 "1935","1"
   #   31 "1936","1"
   #   24 "1937","1"
   #   70 "1938","1"
   #    5 "1938","2"
   #   24 "1939","1"
   #   19 "1939","2"
   #   83 "1940","1"
   #    1 "1940","2"
   #  148 "1941","1"
   #   16 "1941","2"
   #  173 "1942","1"
   #    9 "1942","2"
   #  108 "1943","1"
   #   22 "1943","2"
   #  277 "1944","1"
   #   34 "1944","2"
   #  171 "1945","1"
   #   43 "1945","2"
   #  424 "1946","1"
   #   30 "1946","2"
   #  391 "1947","1"
   #   60 "1947","2"
   #  664 "1948","1"
   #  143 "1948","2"
   #  624 "1949","1"
   #  101 "1949","2"
   #  738 "1950","1"
   #  152 "1950","2"
   #    6 "1951","0"
   # 1006 "1951","1"
   #  146 "1951","2"
   # 1040 "1952","1"
   #  143 "1952","2"
   # 1474 "1953","1"
   #  301 "1953","2"
   # 1636 "1954","1"
   #  306 "1954","2"
   # 1568 "1955","1"
   #  349 "1955","2"
   # 1777 "1956","1"
   #  542 "1956","2"
   # 1676 "1957","1"
   #  562 "1957","2"
   # 2333 "1958","1"
   #  643 "1958","2"
   # 2281 "1959","1"
   #  539 "1959","2"
   # 2679 "1960","1"
   #  776 "1960","2"
   # 2315 "1961","1"
   #  432 "1961","2"
   # 2808 "1962","1"
   #  833 "1962","2"
   # 3514 "1963","1"
   #  715 "1963","2"
   # 3679 "1964","1"
   #  570 "1964","2"
   # 2957 "1965","1"
   #  687 "1965","2"
   # 3440 "1966","1"
   #  565 "1966","2"
   # 4016 "1967","1"
   #  634 "1967","2"
   # 3931 "1968","1"
   #  545 "1968","2"
   # 4557 "1969","1"
   #  898 "1969","2"
   # 4657 "1970","1"
   # 1079 "1970","2"
   # 4132 "1971","1"
   #  791 "1971","2"
   # 4066 "1972","1"
   #  962 "1972","2"
   # 4097 "1973","1"
   #  877 "1973","2"
   # 4957 "1974","1"
   #  891 "1974","2"
   # 4185 "1975","1"
   #  699 "1975","2"
   # 4557 "1976","1"
   # 1022 "1976","2"
   # 4817 "1977","1"
   # 1140 "1977","2"
   # 5645 "1978","1"
   # 1231 "1978","2"
   # 6433 "1979","1"
   # 1338 "1979","2"
   # 6173 "1980","1"
   # 1488 "1980","2"
   # 6620 "1981","1"
   # 1588 "1981","2"
   # 6244 "1982","1"
   # 1724 "1982","2"
   # 6890 "1983","1"
   # 1889 "1983","2"
   # 7348 "1984","1"
   # 1791 "1984","2"
   # 7043 "1985","1"
   # 2262 "1985","2"
   # 6147 "1986","1"
   # 1962 "1986","2"
   # 5776 "1987","1"
   # 1696 "1987","2"
   # 6449 "1988","1"
   # 1599 "1988","2"
   # 5408 "1989","1"
   # 1435 "1989","2"
   # 4541 "1990","1"
   # 1156 "1990","2"
   #    8 "1991","0"
   # 2377 "1991","1"
   #  689 "1991","2"
   # 1758 "1992","1"
   #  410 "1992","2"
   # 1398 "1993","1"
   #  289 "1993","2"
   #  927 "1994","1"
   #  288 "1994","2"
   #  664 "1995","1"
   #  163 "1995","2"
   #  234 "1996","1"
   #  100 "1996","2"
   #  164 "1997","1"
   #   87 "1997","2"

<<<<<<< HEAD
#9 count the number of trips that start on cross streets that both contain numbers 
# (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)
# 159372 trips

#10 compute the average trip duration
#cut -d, -f1 201402-citibike-tripdata.csv | tr '"' ' ' | awk -F, '{sum+=$1}END {if (NR>0) print "AVG: " sum/NR}'
#--------------------------------------------------------------------------------
# AVG: 874.516
=======

# compute the average trip duration
>>>>>>> eb9a0cd6d9ebddaf82bbb69d76673a2efe0c92e6
=======
=======
>>>>>>> 5b88f7499692eda9dd96591e34a4317570d03747
=======
>>>>>>> 5b88f7499692eda9dd96591e34a4317570d03747
# count the number of unique stations
#  330 total minus column title = 229 unique stations.

# count the number of unique bikes
#  5700 total unique bikes.

# count the number of trips per day
#   12771 "2014-02-01
#   13816 "2014-02-02
#    2600 "2014-02-03
#    8709 "2014-02-04
#    2746 "2014-02-05
#    7196 "2014-02-06
#    8495 "2014-02-07
#    5986 "2014-02-08
#    4996 "2014-02-09
#    6846 "2014-02-10
#    8343 "2014-02-11
#    8580 "2014-02-12
#     876 "2014-02-13
#    3609 "2014-02-14
#    2261 "2014-02-15
#    3003 "2014-02-16
#    4854 "2014-02-17
#    5140 "2014-02-18
#    8506 "2014-02-19
#   11792 "2014-02-20
#    8680 "2014-02-21
#   13044 "2014-02-22
#   13324 "2014-02-23
#   12922 "2014-02-24
#   12830 "2014-02-25
#   11188 "2014-02-26
#   12036 "2014-02-27
#    9587 "2014-02-28


# find the day with the most rides
#  2014-02-02 with 13816

# find the day with the fewest rides
# "2014-02-13 with only 876

# find the id of the bike with the most rides
#  bike id = 20837

# count the number of rides by gender and birth year
#  6731   unknown = '0'
# 176526  male    = '1'
#  41479  female  = '2'
# 
#  count |year | gender|
   #   9 "1899","1"
   #   68 "1900","1"
   #   11 "1901","1"
   #    5 "1907","1"
   #    4 "1910","1"
   #    1 "1913","1"
   #    3 "1917","1"
   #    1 "1921","1"
   #   32 "1922","1"
   #    5 "1926","2"
   #    2 "1927","1"
   #    1 "1932","1"
   #    7 "1932","2"
   #   10 "1933","1"
   #   21 "1934","1"
   #   14 "1935","1"
   #   31 "1936","1"
   #   24 "1937","1"
   #   70 "1938","1"
   #    5 "1938","2"
   #   24 "1939","1"
   #   19 "1939","2"
   #   83 "1940","1"
   #    1 "1940","2"
   #  148 "1941","1"
   #   16 "1941","2"
   #  173 "1942","1"
   #    9 "1942","2"
   #  108 "1943","1"
   #   22 "1943","2"
   #  277 "1944","1"
   #   34 "1944","2"
   #  171 "1945","1"
   #   43 "1945","2"
   #  424 "1946","1"
   #   30 "1946","2"
   #  391 "1947","1"
   #   60 "1947","2"
   #  664 "1948","1"
   #  143 "1948","2"
   #  624 "1949","1"
   #  101 "1949","2"
   #  738 "1950","1"
   #  152 "1950","2"
   #    6 "1951","0"
   # 1006 "1951","1"
   #  146 "1951","2"
   # 1040 "1952","1"
   #  143 "1952","2"
   # 1474 "1953","1"
   #  301 "1953","2"
   # 1636 "1954","1"
   #  306 "1954","2"
   # 1568 "1955","1"
   #  349 "1955","2"
   # 1777 "1956","1"
   #  542 "1956","2"
   # 1676 "1957","1"
   #  562 "1957","2"
   # 2333 "1958","1"
   #  643 "1958","2"
   # 2281 "1959","1"
   #  539 "1959","2"
   # 2679 "1960","1"
   #  776 "1960","2"
   # 2315 "1961","1"
   #  432 "1961","2"
   # 2808 "1962","1"
   #  833 "1962","2"
   # 3514 "1963","1"
   #  715 "1963","2"
   # 3679 "1964","1"
   #  570 "1964","2"
   # 2957 "1965","1"
   #  687 "1965","2"
   # 3440 "1966","1"
   #  565 "1966","2"
   # 4016 "1967","1"
   #  634 "1967","2"
   # 3931 "1968","1"
   #  545 "1968","2"
   # 4557 "1969","1"
   #  898 "1969","2"
   # 4657 "1970","1"
   # 1079 "1970","2"
   # 4132 "1971","1"
   #  791 "1971","2"
   # 4066 "1972","1"
   #  962 "1972","2"
   # 4097 "1973","1"
   #  877 "1973","2"
   # 4957 "1974","1"
   #  891 "1974","2"
   # 4185 "1975","1"
   #  699 "1975","2"
   # 4557 "1976","1"
   # 1022 "1976","2"
   # 4817 "1977","1"
   # 1140 "1977","2"
   # 5645 "1978","1"
   # 1231 "1978","2"
   # 6433 "1979","1"
   # 1338 "1979","2"
   # 6173 "1980","1"
   # 1488 "1980","2"
   # 6620 "1981","1"
   # 1588 "1981","2"
   # 6244 "1982","1"
   # 1724 "1982","2"
   # 6890 "1983","1"
   # 1889 "1983","2"
   # 7348 "1984","1"
   # 1791 "1984","2"
   # 7043 "1985","1"
   # 2262 "1985","2"
   # 6147 "1986","1"
   # 1962 "1986","2"
   # 5776 "1987","1"
   # 1696 "1987","2"
   # 6449 "1988","1"
   # 1599 "1988","2"
   # 5408 "1989","1"
   # 1435 "1989","2"
   # 4541 "1990","1"
   # 1156 "1990","2"
   #    8 "1991","0"
   # 2377 "1991","1"
   #  689 "1991","2"
   # 1758 "1992","1"
   #  410 "1992","2"
   # 1398 "1993","1"
   #  289 "1993","2"
   #  927 "1994","1"
   #  288 "1994","2"
   #  664 "1995","1"
   #  163 "1995","2"
   #  234 "1996","1"
   #  100 "1996","2"
   #  164 "1997","1"
   #   87 "1997","2"

# count the number of trips that start on cross streets that both contain numbers 
# (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)
# 159372 trips

<<<<<<< HEAD
<<<<<<< HEAD

# compute the average trip duration
<<<<<<< HEAD
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
=======
# AVG: 874.516
>>>>>>> 5b88f7499692eda9dd96591e34a4317570d03747
=======
# compute the average trip duration
# AVG: 874.516
>>>>>>> 5b88f7499692eda9dd96591e34a4317570d03747
=======
# compute the average trip duration
# AVG: 874.516
>>>>>>> 5b88f7499692eda9dd96591e34a4317570d03747
