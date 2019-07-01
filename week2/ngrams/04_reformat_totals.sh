<<<<<<< HEAD
#!/bin/bash
# reformat to comma-separated file
cat googlebooks-eng-all-totalcounts-20120701.txt | sed 's/\t\t*/\n/g' > total_counts.csv

# reformat total counts in googlebooks-eng-all-totalcounts-20120701.txt to a valid csv
#   use tr, awk, or sed to convert tabs to newlines
#   write results to total_counts.csv
=======
#!/bin/bash

# reformat total counts in googlebooks-eng-all-totalcounts-20120701.txt to a valid csv
#   use tr, awk, or sed to convert tabs to newlines
#   write results to total_counts.csv
>>>>>>> 697255389ca974c72b02f2080bea0a841f6e7244
